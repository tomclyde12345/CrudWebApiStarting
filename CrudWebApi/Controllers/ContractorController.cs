using CrudWebApi.Models;
using CrudWebApi.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Linq.Dynamic;
using CrudWebApi.DTO;

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
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Login");
            }
            var contractorlisttable = Db.NgpContractors.OrderByDescending(x => x.Id).ToList();

         

            return View(contractorlisttable);
        }



        public ActionResult GetContractorTable()
        {
            //Server Side Parameter
            int start = Convert.ToInt32(Request["start"]);
            int length = Convert.ToInt32(Request["length"]);
            string searchValue = Request["search[value]"];
            string sortColumnName = Request["columns[" + Request["order[0][column]"] + "][name]"];
            string sortDirection = Request["order[0][dir]"];

            using (WebapidbEntities Db = new WebapidbEntities())

            {
                IQueryable<NgpContractor> contractorlist = Db.NgpContractors;

                //SHOWING FILTER DATA BASE ON ROLE ID  DEPENDENT IN LOGIN ID
             
                //


                int totalrows = contractorlist.Count();

                if (!string.IsNullOrEmpty(searchValue))//FILTER SEARCH
                {
                    contractorlist = contractorlist.
                        Where(x => x.Id.ToString().Contains(searchValue.ToLower()) ||
                            x.Year_Estb.ToString().Contains(searchValue.ToLower()) ||
                            x.Region.ToLower().Contains(searchValue.ToLower()) ||
                            x.Penro.ToString().Contains(searchValue.ToLower()) ||
                            x.SiteCode.ToString().Contains(searchValue.ToLower()) ||
                            x.ContractorName.ToString().Contains(searchValue.ToLower()) ||
                            x.ProjectName.ToString().Contains(searchValue.ToLower()) ||
                            x.AreaContracted.ToString().Contains(searchValue.ToLower()) ||
                            x.AddressMunicipality.ToString().Contains(searchValue.ToLower()) ||
                            x.AddressBarangay.ToString().Contains(searchValue.ToLower()) ||
                            x.LocationMunicipality.ToString().Contains(searchValue.ToLower()) ||
                            x.LocationBarangay.ToString().Contains(searchValue.ToLower()) ||
                            x.LocationSitio.ToString().Contains(searchValue.ToLower()));
                           


                }

                int totalrowsafterfiltering = contractorlist.Count();
                //sorting
                contractorlist = contractorlist.OrderBy(sortColumnName + " " + sortDirection)
                    .OrderByDescending(a => a.Id); //ADD SYSTEM LINQ DYNAMINC IN NUGGET MANAGER(DOWNLOAD)

                //paging
                contractorlist = contractorlist.Skip(start).Take(length);



                var tablecontractor = contractorlist.Select(user => new ContractorTableVM()
                {

                    Id = user.Id,
                    Year_Estb = user.Year_Estb,
                    Region = user.Region,
                    Penro = user.Penro,
                    SiteCode = user.SiteCode,
                    ContractorName = user.ContractorName,
                    ProjectName = user.ProjectName,
                    AreaContracted = user.AreaContracted,
                    AddressMunicipality = user.AddressMunicipality,
                     AddressBarangay = user.AddressBarangay,
                    LocationMunicipality = user.LocationMunicipality,
                    LocationBarangay = user.LocationBarangay,
                    LocationSitio = user.LocationSitio,
                    CenroId = user.CenroId,




                }).ToList();


                return Json(new { data = tablecontractor, draw = Request["draw"], recordsTotal = totalrows, recordsFiltered = totalrowsafterfiltering }, JsonRequestBehavior.AllowGet);

            }


        }



        public ActionResult Create()
        {
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Login");
            }

        
            var contractor = Db.NgpContractors.ToList();

           
            var vm = new ContractorTableVM()
            {
                Contractorlist = contractor,
              

            };
            return View("Create", vm);
        }












        public ActionResult Edit(int id)
        {
          
            var editcontractor = Db.NgpContractors.SingleOrDefault(c => c.Id == id); //EDIT METHOD
            if (editcontractor == null)
                return HttpNotFound();
            var viewModel = new ContractorTableVM()
            {

                Contractor = editcontractor,
                Contractorlist = Db.NgpContractors.ToList(),
             

            };

            return View("Edit", viewModel);
        }

        public ActionResult Save(NgpContractor contractor)
        {
            if (contractor.Id == 0)
            {
               

                contractor.ContractorName = contractor.ContractorName;
                contractor.SiteCode = contractor.SiteCode;
                contractor.ProjectName = contractor.ProjectName;
                contractor.AreaContracted = contractor.AreaContracted;
                contractor.Penro = contractor.Penro;
                contractor.Region = contractor.Region;
                contractor.Year_Estb = contractor.Year_Estb;
                contractor.LocationBarangay = contractor.LocationBarangay;
                contractor.LocationMunicipality = contractor.LocationMunicipality;
                contractor.LocationSitio = contractor.LocationSitio;
                contractor.AddressBarangay = contractor.AddressBarangay;
                contractor.AddressMunicipality = contractor.AddressMunicipality;
                contractor.CenroId = contractor.CenroId;
                Db.NgpContractors.Add(contractor);
            }
            else
            {
                var usersInDb = Db.NgpContractors.Single(c => c.Id == contractor.Id);

                usersInDb.Id = contractor.Id;
                usersInDb.Year_Estb = contractor.Year_Estb;
                usersInDb.Region = contractor.Region;
                usersInDb.Penro = contractor.Penro;
                usersInDb.SiteCode = contractor.SiteCode;
                usersInDb.ContractorName = contractor.ContractorName;
                usersInDb.ProjectName = contractor.ProjectName;
                usersInDb.AreaContracted = contractor.AreaContracted;
                usersInDb.AddressMunicipality = contractor.AddressMunicipality;
                usersInDb.AddressBarangay = contractor.AddressBarangay;
                usersInDb.LocationMunicipality = contractor.LocationMunicipality;
                usersInDb.LocationBarangay = contractor.LocationBarangay;
                usersInDb.LocationSitio = contractor.LocationSitio;
                usersInDb.CenroId = contractor.CenroId;



            }

            Db.SaveChanges();
            TempData["Message"] = "SAVE SUCCESSFULLY";
            return RedirectToAction("Index", "Contractor");
        }
    }
}