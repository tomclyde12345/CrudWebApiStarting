using CrudWebApi.Models;
using CrudWebApi.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Dynamic;
using System.Web;
using System.Web.Mvc;

namespace CrudWebApi.Controllers
{
    public class ProjectController : Controller
    {
        // GET: Project
        public WebapidbEntities Db = new WebapidbEntities();

        protected override void Dispose(bool disposing)
        {
            Db.Dispose();
        }
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Create()
        {
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Login");
            }
            List<NgpMunicipality> MunicipalityList = Db.NgpMunicipalities.ToList();
            ViewBag.MunicipalityList = new SelectList(MunicipalityList, "MunicipalityId", "MunicipalityName");

            var project = Db.ngp_projects.ToList();
            var barangay = Db.NgpBarangays.ToList();
            var municipalities = Db.NgpMunicipalities.ToList();

            var vm = new ProjectVM()
            {
               
                ProjectList = project,
                BarangayList = barangay,
                MunicipalityListing = municipalities,
                

            };
            return View("Create", vm); 
        }

        public JsonResult GetBarangayLList(int MunicipalityId)
        {
            Db.Configuration.ProxyCreationEnabled = false;
            List<NgpBarangay> BarangayList = Db.NgpBarangays.Where(x => x.MunicipalityId == MunicipalityId).ToList();
            return Json(BarangayList, JsonRequestBehavior.AllowGet);

        }

        public ActionResult Save(ngp_projects project)
        {
            if (project.projectID == 0)
            {
               

                project.site_code = project.site_code;
                project.area = project.area;
                //project.NgpBarangay.BarangayName = project.NgpBarangay.BarangayName;
                //project.NgpMunicipality.MunicipalityName = project.NgpMunicipality.MunicipalityName;


                Db.ngp_projects.Add(project);
            }
          

            Db.SaveChanges();
         
            return RedirectToAction("Index", "Project");

        }




        //SERVERSIDE DATATABLES
        public ActionResult GetProjecttable()
        {
            //Server Side Parameter
            int start = Convert.ToInt32(Request["start"]);
            int length = Convert.ToInt32(Request["length"]);
            string searchValue = Request["search[value]"];
            string sortColumnName = Request["columns[" + Request["order[0][column]"] + "][name]"];
            string sortDirection = Request["order[0][dir]"];

            using (WebapidbEntities Db = new WebapidbEntities())

            {
                IQueryable<ngp_projects> projectlist = Db.ngp_projects;

             

                int totalrows = projectlist.Count();

                if (!string.IsNullOrEmpty(searchValue))//FILTER SEARCH
                {
                    projectlist = projectlist.
                        Where(x => x.projectID.ToString().Contains(searchValue.ToLower()) ||
                            x.site_code.ToString().Contains(searchValue.ToLower()) ||
                            x.area.ToString().Contains(searchValue.ToLower()));


                }

                int totalrowsafterfiltering = projectlist.Count();
                //sorting
                projectlist = projectlist.OrderBy(sortColumnName + " " + sortDirection)
                    .OrderByDescending(a => a.projectID); //ADD SYSTEM LINQ DYNAMINC IN NUGGET MANAGER(DOWNLOAD)

                //paging
                projectlist = projectlist.Skip(start).Take(length);



                var Projectvmlist = projectlist.Select(projectdata => new ProjectVM()
                {

                    projectID = projectdata.projectID,
                    area = projectdata.area,
                    site_code = projectdata.site_code,
                 

                }).ToList();


                return Json(new { data = Projectvmlist, draw = Request["draw"], recordsTotal = totalrows, recordsFiltered = totalrowsafterfiltering }, JsonRequestBehavior.AllowGet);

            }


        }
    }
   
}