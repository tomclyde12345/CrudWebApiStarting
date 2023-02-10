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
    public class TribeAPIController : ApiController
    {
        public WebapidbEntities Db = new WebapidbEntities();
      
        protected override void Dispose(bool disposing)
        {
            Db.Dispose();
        }

        [HttpGet]
        [Route("api/sampletribe/getsampletribe")]
        public IHttpActionResult DatatableTribe()
        {
            var datatable = Db.SampleTribes.ToList().Select(Mapper.Map<SampleTribe, TribeDTO>);
            return Ok(datatable.OrderByDescending(XX => XX.Id));
        }



        //CREATE/SAVING METHODS TRIBE
        [HttpPost]
        [Route("api/savetribe/postsavetribe")]
        public IHttpActionResult SaveTribes(TribeDTO tribeDTO)
        {
            var tribe = Mapper.Map<TribeDTO, SampleTribe>(tribeDTO);

            if (tribeDTO.Id == 0)
            {

                tribe.Name = tribeDTO.Name;



                Db.SampleTribes.Add(tribe);
            }


            Db.SaveChanges();

            return Ok();

        }




     



    }
}
