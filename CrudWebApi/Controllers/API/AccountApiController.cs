using AutoMapper;
using CrudWebApi.DTO;
using CrudWebApi.Models;
using CrudWebApi.ViewModel;
using Scrypt;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Xml.Linq;


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

        //GET DATA ONLY FOR EDIT ACCOUNT
        [HttpGet]
        [Route("api/editaccount/geteditaccount/{id}")]
        public IHttpActionResult GetDataEditAccount(int id)
        {
            var editaccount = Db.SampleUsers.SingleOrDefault(c => c.Id == id);
            return Ok(Mapper.Map<SampleUser, AccountDTO>(editaccount));
        }

        //EDIT METHOD FOR  SAVING  EDIT ACCOUNT

        [HttpPost]
        [Route("api/savingeditaccount/postsavingeditaccount/{id}")]
        public IHttpActionResult EditAccount(AccountDTO editaccountDTO)
        {


            if (ModelState.IsValid)
            {
                var accountdt = Db.SampleUsers.Single(c => c.Id == editaccountDTO.Id);

                accountdt.Id = editaccountDTO.Id;
                accountdt.Name = editaccountDTO.Name;
                accountdt.UserName = editaccountDTO.UserName;
                accountdt.Email = editaccountDTO.Email;



            }

            Db.SaveChanges();


            return Ok();

        }
        //DELETE METHOD FOR  DELETE ACCOUNT

        [HttpDelete]
        [Route("api/accountdelete/getaccountdelete/{id}")]
        public IHttpActionResult DeleteAccount(int id)
        {


            var deletedb = Db.SampleUsers.SingleOrDefault(d => d.Id == id);

            if (deletedb == null)
            {
                return NotFound();
            }
            Db.SampleUsers.Remove(deletedb);


            Db.SaveChanges();
            return Ok();
        }





        [HttpPost]
        [Route("api/residencephoto")]

        public async Task<string> PostImage()
        {

            var ctx = HttpContext.Current;
            var root = ctx.Server.MapPath("~/SampleImg/");
            var provider =
                new MultipartFormDataStreamProvider(root);

            try
            {
                await Request.Content
                    .ReadAsMultipartAsync(provider);
                ScryptEncoder encoder = new ScryptEncoder();
                SampleUser user = new SampleUser();

                if (user.Id == 0)
                {
                    user.Name = provider.FormData["Name"];
                    user.Email = provider.FormData["Email"];
                    user.UserName = provider.FormData["UserName"];
                    user.Password = encoder.Encode( provider.FormData["Password"]);
                    user.RoleID = Convert.ToInt32(provider.FormData["RoleID"]);
                  
                    Db.SampleUsers.Add(user);

                }

                Db.SaveChanges();

                foreach (var file in provider.FileData)
                {
                    foreach (var key in provider.FormData.AllKeys)
                    {
                        foreach (var val in provider.FormData.GetValues(key))
                        {
                            if (key == "FileName")
                            {
                                var name = file.Headers
                                .ContentDisposition
                                .FileName;

                                // remove double quotes from string.
                                var dateNew = Convert.ToString(DateTime.Now.Ticks) + "-";
                                name = name.Trim('"');

                                var localFileName = file.LocalFileName;
                                var filePath = Path.Combine(root, dateNew + name);

                                File.Move(localFileName, filePath);

                                SampleUpload upload = new SampleUpload();

                                if (name == null || name.Length == 0)
                                {
                                    upload.FilePath = "/DefaultImage/city-hall.png";
                                }
                                else
                                {
                                    upload.FilePath = "/SampleImg/" + dateNew + name;
                                }
                                upload.FileName = name;
                                upload.AccountId = user.Id;

                                Db.SampleUploads.Add(upload);
                                Db.SaveChanges();

                            }
                        }
                    }
                }


            }
            catch (Exception e)
            {
                return $"Error: {e.Message}";
            }

            return "File uploaded!";
        }













    }
}
