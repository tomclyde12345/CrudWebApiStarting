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
    public class YearController : Controller
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


        public ActionResult GetYearTable()
        {
            //Server Side Parameter
            int start = Convert.ToInt32(Request["start"]);
            int length = Convert.ToInt32(Request["length"]);
            string searchValue = Request["search[value]"];
            string sortColumnName = Request["columns[" + Request["order[0][column]"] + "][name]"];
            string sortDirection = Request["order[0][dir]"];

            using (WebapidbEntities Db = new WebapidbEntities())

            {
                IQueryable<NgpYear> yearlist = Db.NgpYears;

                //SHOWING FILTER DATA BASE ON ROLE ID  DEPENDENT IN LOGIN ID
                //var sess_id = (int)Session["LoginID"];

                //if ((int)Session["Role_Id"] != 1)
                //{
                //    userlist = userlist.Where(d =>  d.Id == sess_id);
                //}
                //


                int totalrows = yearlist.Count();

                if (!string.IsNullOrEmpty(searchValue))//FILTER SEARCH
                {
                    yearlist = yearlist.
                        Where(x => x.Id.ToString().Contains(searchValue.ToLower()) ||
                            x.NgpContractor.ProjectName.ToString().Contains(searchValue.ToLower()) ||
                            x.moa_number.ToLower().Contains(searchValue.ToLower()) ||
                            x.Date_moa.ToString().Contains(searchValue.ToLower()) ||
                            x.Unit_cost.ToString().Contains(searchValue.ToLower()) ||
                            x.contract_cost.ToString().Contains(searchValue.ToLower()) ||
                            x.date_obligated.ToString().Contains(searchValue.ToLower()) ||
                            x.ors_no.ToString().Contains(searchValue.ToLower()) ||
                            x.no_seedings_produced.ToString().Contains(searchValue.ToLower()) ||
                            x.commodity_forest.ToString().Contains(searchValue.ToLower()) ||
                            x.commodity_fruit.ToString().Contains(searchValue.ToLower()) ||
                            x.commodity_bamboo.ToString().Contains(searchValue.ToLower()) ||
                            x.no_seedlings_planted.ToString().Contains(searchValue.ToLower()) ||
                            x.no_seedlings_survived.ToString().Contains(searchValue.ToLower()) ||
                             x.survival_rate.ToString().Contains(searchValue.ToLower()) ||
                            x.year_contracted.ToString().Contains(searchValue.ToLower()));


                }

                int totalrowsafterfiltering = yearlist.Count();
                //sorting
                yearlist = yearlist.OrderBy(sortColumnName + " " + sortDirection)
                    .OrderByDescending(a => a.Id); //ADD SYSTEM LINQ DYNAMINC IN NUGGET MANAGER(DOWNLOAD)

                //paging
                yearlist = yearlist.Skip(start).Take(length);



                var Year = yearlist.Select(user => new YearVM()
                {

                    Id = user.Id,
                    ProjectNameId = user.NgpContractor.ProjectName,
                    moa_number = user.moa_number,
                    //Date_moa = user.Date_moa,
                    Unit_cost = user.Unit_cost,
                    contract_cost = user.contract_cost,
                    date_obligated = user.date_obligated,
                    ors_no = user.ors_no,
                    no_seedings_produced = user.no_seedings_produced,
                    commodity_forest = user.commodity_forest,
                    commodity_fruit = user.commodity_fruit,
                    commodity_bamboo = user.commodity_bamboo,
                    no_seedlings_planted = user.no_seedlings_planted,
                    no_seedlings_survived = user.no_seedlings_survived,
                    survival_rate = user.survival_rate,
                    year_contracted = user.year_contracted,

                }).ToList();


                return Json(new { data = Year, draw = Request["draw"], recordsTotal = totalrows, recordsFiltered = totalrowsafterfiltering }, JsonRequestBehavior.AllowGet);

            }


        }

    }
}