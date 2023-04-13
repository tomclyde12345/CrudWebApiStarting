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
    public class ContractorApiController : ApiController
    {
        public WebapidbEntities Db = new WebapidbEntities();

        protected override void Dispose(bool disposing)
        {

            Db.Dispose();
        }
        [HttpGet]
        [Route("api/contractdata/getcontractdata")]
        public IHttpActionResult GetContractData()
        {
            var NGPCONTRACT = Db.ngp_contract.ToList().Select(Mapper.Map<ngp_contract, ContractDTO>);
            return Ok(NGPCONTRACT);
        }

        [HttpGet]
        [Route("api/contractor/getcontractor")]
        public IHttpActionResult GetContractorData()
        {
            var NGPCONTRACTOR = Db.ngp_contractor.ToList().Select(Mapper.Map<ngp_contractor, ContractorDTO>);
            return Ok(NGPCONTRACTOR);
        }
    }
}
