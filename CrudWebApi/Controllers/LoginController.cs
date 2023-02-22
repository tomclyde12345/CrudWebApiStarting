using CrudWebApi.Models;
using Scrypt;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace CrudWebApi.Controllers
{
    public class LoginController : Controller
    {
        public WebapidbEntities Db = new WebapidbEntities();

        protected override void Dispose(bool disposing)
        {
            Db.Dispose();
        }
        public ActionResult Login()
        {
            return View();
          
        }

        [HttpPost]
        public ActionResult Login(SampleUser log)
        {
            ScryptEncoder encoder = new ScryptEncoder();

            var result = Db.SampleUsers.SingleOrDefault(a => a.UserName == log.UserName);

         
            if (result != null)
            {
                if (!encoder.Compare(log.Password, result.Password))
                {
                    ViewBag.Message = "Incorrect Username or Password";
                    return View(log);
                }


                Session["LoginedTime"] = DateTime.Now.ToLongDateString();
                Session["LoginID"] = result.Id;
            
                Session["Role_Id"] = result.RoleID;

                FormsAuthentication.SetAuthCookie(result.UserName, false);

                //IF admin
                if (result.RoleID == 1)
                {
                    TempData["Message"] = "WELCOME SUPERADMIN";

                    return RedirectToAction("Index", "SuperAdmin");

                }
                if (result.RoleID == 2)
                {
                    TempData["Message"] = "WELCOME ADMIN";

                    return RedirectToAction("Index", "Admin");

                }


                //IF USER
                if (result.RoleID == 3)
                {
                    TempData["Message"] = "WELCOME USER";
                    return RedirectToAction("Index", "User");
                }

            }
            else
            {
                ViewBag.Message = "Incorrect Username or Password";
            }

            return View(log);
        }

        public ActionResult Logout()
        {

            Session["Role_Id"] = null;
            FormsAuthentication.SignOut();
            return Redirect("Login");
        }
    }
}