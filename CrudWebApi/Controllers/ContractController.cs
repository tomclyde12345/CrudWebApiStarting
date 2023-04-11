using CrudWebApi.Models;
using CrudWebApi.ViewModel;
using System;
using System.Collections.Generic;
using System.Diagnostics.Contracts;
using System.Linq;
using System.Linq.Dynamic;
using System.Web;
using System.Web.Mvc;

namespace CrudWebApi.Controllers
{
    public class ContractController : Controller
    {
        // GET: Contract
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




            return View();
        }

        public JsonResult GetBarangayLList(int MunicipalityId)
        {
            Db.Configuration.ProxyCreationEnabled = false;
            List<NgpBarangay> BarangayList = Db.NgpBarangays.Where(x => x.MunicipalityId == MunicipalityId).ToList();
            return Json(BarangayList, JsonRequestBehavior.AllowGet);

        }



        public ActionResult Save(ngp_contract contracrt)
        {
            if (contracrt.contractID == 0)
            {


                contracrt.location_sitio = contracrt.location_sitio;
                contracrt.area = contracrt.area;
                contracrt.site_code = contracrt.site_code;
                contracrt.survival_rate = contracrt.survival_rate;
                contracrt.location_municipality = contracrt.location_municipality;
                contracrt.location_barangay = contracrt.location_barangay;
                contracrt.contractorName = contracrt.contractorName;
                contracrt.commodity_type = contracrt.commodity_type;
                contracrt.commodity = contracrt.commodity;
                contracrt.survival_rate = contracrt.survival_rate;
                contracrt.commodity = contracrt.commodity;
                contracrt.project_name = contracrt.project_name;
                contracrt.commodity = contracrt.commodity;
                contracrt.contract_cost = contracrt.contract_cost;
                contracrt.year_established = contracrt.year_established;
                contracrt.num_seedlings_planted = contracrt.num_seedlings_planted; 
                contracrt.num_seedlings_produced = contracrt.num_seedlings_produced;
                contracrt.num_seedlings_survived = contracrt.num_seedlings_survived;
                contracrt.num_seedlings_replanted = contracrt.num_seedlings_replanted;
                contracrt.num_seedlings_survived_year1 = contracrt.num_seedlings_survived_year1;
                contracrt.moa = contracrt.moa;

                //project.area = project.area;


                Db.ngp_contract.Add(contracrt);
            }


            Db.SaveChanges();

            return RedirectToAction("Index", "Contract");

        }

        //SERVERSIDE DATATABLES
        public ActionResult GetContractTable()
        {
            //Server Side Parameter
            int start = Convert.ToInt32(Request["start"]);
            int length = Convert.ToInt32(Request["length"]);
            string searchValue = Request["search[value]"];
            string sortColumnName = Request["columns[" + Request["order[0][column]"] + "][name]"];
            string sortDirection = Request["order[0][dir]"];

            using (WebapidbEntities Db = new WebapidbEntities())

            {
                IQueryable<ngp_contract> contractlist = Db.ngp_contract;



                int totalrows = contractlist.Count();

                if (!string.IsNullOrEmpty(searchValue))//FILTER SEARCH
                {
                    contractlist = contractlist.
                        Where(x => x.contractID.ToString().Contains(searchValue.ToLower()) ||
                        x.location_municipality.ToString().Contains(searchValue.ToLower()) ||
                          x.location_barangay.ToString().Contains(searchValue.ToLower()) ||
                            x.location_sitio.ToString().Contains(searchValue.ToLower()) ||
                              x.area.ToString().Contains(searchValue.ToLower()) ||
                                x.survival_rate.ToString().Contains(searchValue.ToLower()) ||
                                  x.ngp_contractor.contractor_name.ToString().Contains(searchValue.ToLower()) ||

                            x.site_code.ToString().Contains(searchValue.ToLower()));


                }
                //SEARCH FILTER  municipality
                if (!string.IsNullOrEmpty(Request["columns[1][search][value]"]))
                {
                    var s = Request["columns[1][search][value]"].ToLowerInvariant();
                    contractlist = contractlist.Where(x => x.NgpMunicipality != null && x.NgpMunicipality.MunicipalityName.ToLower().Contains(s));
                }

                int totalrowsafterfiltering = contractlist.Count();
                //sorting
                contractlist = contractlist.OrderBy(sortColumnName + " " + sortDirection)
                    .OrderByDescending(a => a.contractID); //ADD SYSTEM LINQ DYNAMINC IN NUGGET MANAGER(DOWNLOAD)

                //paging
                contractlist = contractlist.Skip(start).Take(length);



                var ContractVMLIST = contractlist.Select(contractdata => new ContractVM()
                {

                    contractID = contractdata.contractID,
                    location_municipality = contractdata.NgpMunicipality.MunicipalityName,
                    location_barangay = contractdata.NgpBarangay.BarangayName,
                    location_sitio = contractdata.location_sitio,
                    area = contractdata.area,
                    survival_rate = contractdata.survival_rate,
                    contractorName = contractdata.ngp_contractor.contractor_name,






                }).ToList();


                return Json(new { data = ContractVMLIST, draw = Request["draw"], recordsTotal = totalrows, recordsFiltered = totalrowsafterfiltering }, JsonRequestBehavior.AllowGet);

            }


        }
    }
}