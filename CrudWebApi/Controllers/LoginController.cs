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
        public ActionResult Login(NgpUser log)
        {
            ScryptEncoder encoder = new ScryptEncoder();

            var result = Db.NgpUsers.SingleOrDefault(a => a.UserName == log.UserName);

         
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
                    TempData["Message"] = "WELCOME NgpAdmin";

                    return RedirectToAction("Index", "SuperAdmin");

                }
                if (result.RoleID == 2)
                {
                    TempData["Message"] = "Cenro-PuertoPrincesa";

                    return RedirectToAction("Index", "User");

                }


                //IF USER
                if (result.RoleID == 3)
                {
                    TempData["Message"] = "Cenro-Quezon";
                    return RedirectToAction("Index", "User");
                }

                //IF USER
                if (result.RoleID == 5)
                {
                    TempData["Message"] = "Cenro-BrookesPoint";
                    return RedirectToAction("Index", "User");
                }
                //IF USER
                if (result.RoleID == 6)
                {
                    TempData["Message"] = "Cenro-Conron";
                    return RedirectToAction("Index", "User");
                }
                //IF USER
                if (result.RoleID == 7)
                {
                    TempData["Message"] = "Cenro-Taytay";
                    return RedirectToAction("Index", "User");
                }
                //IF USER
                if (result.RoleID == 8)
                {
                    TempData["Message"] = "Cenro-Roxas";
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