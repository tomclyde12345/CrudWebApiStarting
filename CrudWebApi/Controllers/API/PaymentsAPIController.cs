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
    public class PaymentsAPIController : ApiController
    {
        public WebapidbEntities Db = new WebapidbEntities();

        protected override void Dispose(bool disposing)
        {

            Db.Dispose();
        }
        [HttpGet]
        [Route("api/paymentsdata/getpaymentsdata")]
        public IHttpActionResult GetPaymentData()
        {
            var payment = Db.ngp_payment.ToList().Select(Mapper.Map<ngp_payment, PaymentsDTO>);
            return Ok(payment);
        }
    }
}
