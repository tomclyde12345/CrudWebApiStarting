using CrudWebApi.Models;
using CrudWebApi.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Linq.Dynamic;
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
    }
}