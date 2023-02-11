using AutoMapper;
using CrudWebApi.DTO;
using CrudWebApi.Models;
using Scrypt;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.ModelBinding;
using System.Web.SessionState;
using System.Web.UI.WebControls;

namespace CrudWebApi.Controllers.API
{
    public class AccountApiController : ApiController
    {
        public WebapidbEntities Db = new WebapidbEntities();

        protected override void Dispose(bool disposing)
        {
            Db.Dispose();
        }

        //CREATE/SAVING METHODS ACCOUNT
        [HttpPost]
        [Route("api/saveaccount/postsaveaccount")]
        public IHttpActionResult SaveAccount(AccountDTO accountDTO)
        {
            var account = Mapper.Map<AccountDTO, SampleUser>(accountDTO);
         
            ScryptEncoder encoder = new ScryptEncoder();
            if (accountDTO.Id == 0)
            {
                account.Password = encoder.Encode(accountDTO.Password);
                account.Name = accountDTO.Name;
                account.UserName = accountDTO.UserName;
                account.Email = accountDTO.Email;
                account.RoleID = accountDTO.RoleID;




                Db.SampleUsers.Add(account);
            }


            Db.SaveChanges();

            return Ok();

        }

        //get role data
        [HttpGet]
        [Route("api/roledata/getroledata")]
        public IHttpActionResult GetRoleData()
        {
            var roledb = Db.SampleRoles.ToList().Select(Mapper.Map<SampleRole, RoleDTO>);
            return Ok(roledb);
        }

        [HttpGet]
        [Route("api/userdatatable/getuserdatatable")]
        public IHttpActionResult UserDatatable()
        {
            var datatable = Db.SampleUsers.ToList().Select(Mapper.Map<SampleUser, AccountDTO>);
            return Ok(datatable);
        }
    }
}
