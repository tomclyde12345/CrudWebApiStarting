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
    public class RoleApiController : ApiController
    {
        public WebapidbEntities Db = new WebapidbEntities();

        protected override void Dispose(bool disposing)
        {
            Db.Dispose();
        }

        //CREATE/SAVING METHODS ROLE
        [HttpPost]
        [Route("api/saverole/postsaverole")]
        public IHttpActionResult SaveRole(RoleDTO roleDTO)
        {
            var role = Mapper.Map<RoleDTO, NgpRole>(roleDTO);

            if (roleDTO.Id == 0)
            {

                role.RoleName = roleDTO.RoleName;



                Db.NgpRoles.Add(role);
            }


            Db.SaveChanges();

            return Ok();

        }

    }
}
