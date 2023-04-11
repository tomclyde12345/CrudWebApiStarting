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
    public class ContractorController : Controller
    {
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




            var contractor = Db.ngp_contractor.ToList();


            var vm = new ContractorVM()
            {

                Contractorlist = contractor

            };
            return View("Create", vm);
        }

        public JsonResult GetBarangayLList(int MunicipalityId)
        {
            Db.Configuration.ProxyCreationEnabled = false;
            List<NgpBarangay> BarangayList = Db.NgpBarangays.Where(x => x.MunicipalityId == MunicipalityId).ToList();
            return Json(BarangayList, JsonRequestBehavior.AllowGet);

        }



        public ActionResult Save(ngp_contractor contractor)
        {
            if (contractor.contractorID == 0)
            {


                contractor.contractor_name = contractor.contractor_name;
                contractor.address_municipality = contractor.address_municipality;
                contractor.address_barangay = contractor.address_barangay;
                //project.area = project.area;


                Db.ngp_contractor.Add(contractor);
            }


            Db.SaveChanges();

            return RedirectToAction("Index", "Contractor");

        }

        //SERVERSIDE DATATABLES
        public ActionResult GetContractortable()
        {
            //Server Side Parameter
            int start = Convert.ToInt32(Request["start"]);
            int length = Convert.ToInt32(Request["length"]);
            string searchValue = Request["search[value]"];
            string sortColumnName = Request["columns[" + Request["order[0][column]"] + "][name]"];
            string sortDirection = Request["order[0][dir]"];

            using (WebapidbEntities Db = new WebapidbEntities())

            {
                IQueryable<ngp_contractor> contractorlist = Db.ngp_contractor;



                int totalrows = contractorlist.Count();

                if (!string.IsNullOrEmpty(searchValue))//FILTER SEARCH
                {
                    contractorlist = contractorlist.
                        Where(x => x.contractorID.ToString().Contains(searchValue.ToLower()) ||
                          x.contractor_name.ToString().Contains(searchValue.ToLower()) ||
                            x.NgpMunicipality.MunicipalityName.ToString().Contains(searchValue.ToLower()) ||
                            x.NgpBarangay.BarangayName.ToString().Contains(searchValue.ToLower()));


                }

                int totalrowsafterfiltering = contractorlist.Count();
                //sorting
                contractorlist = contractorlist.OrderBy(sortColumnName + " " + sortDirection)
                    .OrderByDescending(a => a.contractorID); //ADD SYSTEM LINQ DYNAMINC IN NUGGET MANAGER(DOWNLOAD)

                //paging
                contractorlist = contractorlist.Skip(start).Take(length);



                var ContractorlistVM = contractorlist.Select(projectdata => new ContractorVM()
                {

                    contractor_name = projectdata.contractor_name,
                    address_barangay= projectdata.NgpBarangay.BarangayName,
                    address_municipality = projectdata.NgpMunicipality.MunicipalityName,
                 


                }).ToList();


                return Json(new { data = ContractorlistVM, draw = Request["draw"], recordsTotal = totalrows, recordsFiltered = totalrowsafterfiltering }, JsonRequestBehavior.AllowGet);

            }


        }


    }
}