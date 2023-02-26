using AutoMapper;
using CrudWebApi.DTO;
using CrudWebApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace CrudWebApi.Controllers.API
{
    public class YearApiController : ApiController
    {
        public WebapidbEntities Db = new WebapidbEntities();
        protected override void Dispose(bool disposing)
        {

            Db.Dispose();
        }


        [HttpGet]
        [Route("api/projectdata/getprojectdata")]
        public IHttpActionResult GeProjectData()
        {
            var data = Db.NgpContractors.ToList().Select(Mapper.Map<NgpContractor, ContractorDTO>);
            return Ok(data);
        }

        [HttpPost]
        [Route("api/saveyear/postsaveyear")]
        public IHttpActionResult SavingYear(YearDTO yearDTO)
        {
            var year = Mapper.Map<YearDTO, NgpYear>(yearDTO);


            if (yearDTO.Id == 0)
            {

                year.Date_moa = yearDTO.Date_moa;
                year.ProjectNameId = yearDTO.ProjectNameId;
                year.moa_number = yearDTO.moa_number;
                year.Date_moa = yearDTO.Date_moa;
                year.Unit_cost = yearDTO.Unit_cost;
                year.contract_cost = yearDTO.contract_cost;
                year.date_obligated = yearDTO.date_obligated;
                year.ors_no = yearDTO.ors_no;
                year.no_seedings_produced = yearDTO.no_seedings_produced;
                year.commodity_forest = yearDTO.commodity_forest;
                year.commodity_fruit = yearDTO.commodity_fruit;
                year.no_seedlings_planted = yearDTO.no_seedlings_planted;
                year.no_seedlings_survived = yearDTO.no_seedlings_survived;
                year.survival_rate = yearDTO.survival_rate;
                year.year_contracted = yearDTO.year_contracted;
              
              



                Db.NgpYears.Add(year);
            }


            Db.SaveChanges();

            return Ok();

        }



        //EDIT METHOD FOR  SAVING  EDIT YEAR

        [HttpPost]
        [Route("api/edityearsave/postedityearsave/{id}")]
        public IHttpActionResult EditYear(YearDTO yearDTO)
        {


            if (ModelState.IsValid)
            {
                var year = Db.NgpYears.Single(c => c.Id == yearDTO.Id);

                year.Id = yearDTO.Id;
                year.ProjectNameId = yearDTO.ProjectNameId;
                year.moa_number = yearDTO.moa_number;
                year.Date_moa = yearDTO.Date_moa;
                year.Unit_cost = yearDTO.Unit_cost;
                year.contract_cost = yearDTO.contract_cost;
                year.date_obligated = yearDTO.date_obligated;
                year.ors_no = yearDTO.ors_no;
                year.no_seedings_produced = yearDTO.no_seedings_produced;
                year.commodity_forest = yearDTO.commodity_forest;
                year.commodity_fruit = yearDTO.commodity_fruit;
                year.no_seedlings_planted = yearDTO.no_seedlings_planted;
                year.no_seedlings_survived = yearDTO.no_seedlings_survived;
                year.survival_rate = yearDTO.survival_rate;
                year.year_contracted = yearDTO.year_contracted;
                year.moa2 = yearDTO.moa2;
                year.no_seedlings_year1 = yearDTO.no_seedlings_year1;
                year.no_seedlings_replanted = yearDTO.no_seedlings_replanted;
                year.moa3 = yearDTO.moa3;
                year.no_seedlings_year3 = yearDTO.no_seedlings_year3;
                 year.no_seedlings_replanted3 = yearDTO.no_seedlings_replanted3;


            }

            Db.SaveChanges();


            return Ok();

        }

        //EDIT METHOD FOR  SAVING  EDIT YEAR

        [HttpPost]
        [Route("api/edityearsave2/postedityearsave2/{id}")]
        public IHttpActionResult EditYear2(YearDTO yearDTO)
        {


            if (ModelState.IsValid)
            {
                var year = Db.NgpYears.Single(c => c.Id == yearDTO.Id);

                year.Id = yearDTO.Id;
                year.ProjectNameId = yearDTO.ProjectNameId;
                year.moa_number = yearDTO.moa_number;
                year.Date_moa = yearDTO.Date_moa;
                year.Unit_cost = yearDTO.Unit_cost;
                year.contract_cost = yearDTO.contract_cost;
                year.date_obligated = yearDTO.date_obligated;
                year.ors_no = yearDTO.ors_no;
                year.no_seedings_produced = yearDTO.no_seedings_produced;
                year.commodity_forest = yearDTO.commodity_forest;
                year.commodity_fruit = yearDTO.commodity_fruit;
                year.no_seedlings_planted = yearDTO.no_seedlings_planted;
                year.no_seedlings_survived = yearDTO.no_seedlings_survived;
                year.survival_rate = yearDTO.survival_rate;
                year.year_contracted = yearDTO.year_contracted;
                year.moa2 = yearDTO.moa2;
                year.no_seedlings_year1 = yearDTO.no_seedlings_year1;
                year.no_seedlings_replanted = yearDTO.no_seedlings_replanted;


            }

            Db.SaveChanges();


            return Ok();

        }

        //EDIT METHOD FOR  SAVING  EDIT YEAR

        [HttpPost]
        [Route("api/edityearsave3/postedityearsave3/{id}")]
        public IHttpActionResult EditYear3(YearDTO yearDTO)
        {


            if (ModelState.IsValid)
            {
                var year = Db.NgpYears.Single(c => c.Id == yearDTO.Id);

                year.Id = yearDTO.Id;
                year.ProjectNameId = yearDTO.ProjectNameId;
                year.moa_number = yearDTO.moa_number;
                year.Date_moa = yearDTO.Date_moa;
                year.Unit_cost = yearDTO.Unit_cost;
                year.contract_cost = yearDTO.contract_cost;
                year.date_obligated = yearDTO.date_obligated;
                year.ors_no = yearDTO.ors_no;
                year.no_seedings_produced = yearDTO.no_seedings_produced;
                year.commodity_forest = yearDTO.commodity_forest;
                year.commodity_fruit = yearDTO.commodity_fruit;
                year.no_seedlings_planted = yearDTO.no_seedlings_planted;
                year.no_seedlings_survived = yearDTO.no_seedlings_survived;
                year.survival_rate = yearDTO.survival_rate;
                year.year_contracted = yearDTO.year_contracted;
                year.moa2 = yearDTO.moa2;
                year.no_seedlings_year1 = yearDTO.no_seedlings_year1;
                year.no_seedlings_replanted = yearDTO.no_seedlings_replanted;
                year.moa3 = yearDTO.moa3;
                year.no_seedlings_year3 = yearDTO.no_seedlings_year3;
                year.no_seedlings_replanted3 = yearDTO.no_seedlings_replanted3;


            }

            Db.SaveChanges();


            return Ok();

        }




        //GET DATA ONLY FOR EDIT YEAR
        [HttpGet]
        [Route("api/edityear/getedityear/{id}")]
        public IHttpActionResult GetYear(int id)
        {
            var edityear = Db.NgpYears.SingleOrDefault(c => c.Id == id);
            return Ok(Mapper.Map<NgpYear, YearDTO>(edityear));
        }

    }
}
