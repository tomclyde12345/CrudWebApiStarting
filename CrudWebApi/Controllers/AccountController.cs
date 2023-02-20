using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CrudWebApi.Models;
using CrudWebApi.ViewModel;
using System.Linq.Dynamic;

using System.Threading.Tasks;
using System.Net;
using Scrypt;

namespace CrudWebApi.Controllers
{
    public class AccountController : Controller
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

        //SERVERSIDE DATATABLES
        public ActionResult GetUserDatatable()
        {
            //Server Side Parameter
            int start = Convert.ToInt32(Request["start"]);
            int length = Convert.ToInt32(Request["length"]);
            string searchValue = Request["search[value]"];
            string sortColumnName = Request["columns[" + Request["order[0][column]"] + "][name]"];
            string sortDirection = Request["order[0][dir]"];

            using (WebapidbEntities Db = new WebapidbEntities())

            {
                IQueryable<SampleUser> userlist = Db.SampleUsers;

                //SHOWING FILTER DATA BASE ON ROLE ID  DEPENDENT IN LOGIN ID
                var sess_id = (int)Session["LoginID"];

                if ((int)Session["Role_Id"] != 1)
                {
                    userlist = userlist.Where(d => d.Id == sess_id);
                }
                //


                int totalrows = userlist.Count();

                if (!string.IsNullOrEmpty(searchValue))//FILTER SEARCH
                {
                    userlist = userlist.
                        Where(x => x.Id.ToString().Contains(searchValue.ToLower()) ||
                            x.Name.ToString().Contains(searchValue.ToLower()) ||
                            x.Email.ToLower().Contains(searchValue.ToLower()) ||
                            x.UserName.ToString().Contains(searchValue.ToLower()) ||
                            x.SampleRole.RoleName.ToString().Contains(searchValue.ToLower()));


                }
             
                int totalrowsafterfiltering = userlist.Count();
                //sorting
                userlist = userlist.OrderBy(sortColumnName + " " + sortDirection)
                    .OrderByDescending(a => a.Id); //ADD SYSTEM LINQ DYNAMINC IN NUGGET MANAGER(DOWNLOAD)

                //paging
                userlist = userlist.Skip(start).Take(length);



                var HouseholdVM = userlist.Select(user => new UserListVM()
                {

                    Id = user.Id,
                    Name = user.Name,
                    Email = user.Email,
                    UserName = user.UserName,
                    RoleID = user.SampleRole.RoleName,

                }).ToList();


                return Json(new { data = HouseholdVM, draw = Request["draw"], recordsTotal = totalrows, recordsFiltered = totalrowsafterfiltering }, JsonRequestBehavior.AllowGet);

            }


        }

        public JsonResult CheckUsernameAvailability(string userdata)
        {
            System.Threading.Thread.Sleep(200);
            var SeachData = Db.SampleUsers.Where(x => x.UserName == userdata).SingleOrDefault();
            if (SeachData != null)
            {
                return Json(1);
            }
            else
            {
                return Json(0);
            }

        }
        [HttpPost]
        public ActionResult ResetPassword(AccountVM resetpassword)

        {
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Account");
            }

            var sess_id = (int)Session["LoginID"];
            ScryptEncoder encoder = new ScryptEncoder();
            if (resetpassword.User.Id == 0)
            {

                Db.SampleUsers.Add(resetpassword.User);
                resetpassword.User.Password = encoder.Encode(resetpassword.User.Password);

            }

            else
            {
                var usersInDb = Db.SampleUsers.Single(c => c.Id == resetpassword.User.Id);
                usersInDb.UserName = resetpassword.User.UserName;
                usersInDb.Password = encoder.Encode(resetpassword.User.Password);
            }

         

            Db.SaveChanges();

            TempData["MessageReset"] = "RESET";

            return RedirectToAction("Index", "Account");

        }

        //GET DATA ID FOR RESET PASS
        public ActionResult ResetPass(int id)
        {
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Account");
            }
            var resetfilter = Db.SampleUsers.ToList();


            var sess_id = (int)Session["LoginID"];

            if ((int)Session["Role_Id"] == 1)
            {
                resetfilter = resetfilter.Where(d => d.Id == sess_id).ToList();
            }

            var manageuser = Db.SampleUsers.SingleOrDefault(c => c.Id == id); //EDIT METHOD


            var viewModel = new AccountVM()
            {

                User = manageuser,
                UsersList = Db.SampleUsers.ToList(),


            };

            return View("ResetPass", viewModel);
        }









    }


}