using CrudWebApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CrudWebApi.Controllers
{
    public class UserController : Controller
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

          public ActionResult ShowNameifLogin() //IMAGE AND NAME VIEW IN DASHBOARD
        {
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Logout");
            }


            var showprofileiflogin = Db.NgpUsers.ToList();


            var sess_id = (int)Session["LoginID"];

            if ((int)Session["Role_Id"] == 1)
            {
                showprofileiflogin = showprofileiflogin.Where(d => d.Id == sess_id).ToList();
            }

            if ((int)Session["Role_Id"] == 2)
            {
                showprofileiflogin = showprofileiflogin.Where(d => d.Id == sess_id).ToList();
            }

            if ((int)Session["Role_Id"] == 3)
            {
                showprofileiflogin = showprofileiflogin.Where(d => d.Id == sess_id).ToList();
            }

            if ((int)Session["Role_Id"] == 4)
            {
                showprofileiflogin = showprofileiflogin.Where(d => d.Id == sess_id).ToList();
            }

            if ((int)Session["Role_Id"] == 5)
            {
                showprofileiflogin = showprofileiflogin.Where(d => d.Id == sess_id).ToList();
            }

            if ((int)Session["Role_Id"] == 6)
            {
                showprofileiflogin = showprofileiflogin.Where(d => d.Id == sess_id).ToList();
            }


            return PartialView(showprofileiflogin);
        }



    }
}