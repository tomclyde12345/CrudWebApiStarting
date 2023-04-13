using CrudWebApi.Models;
using CrudWebApi.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CrudWebApi.Controllers
{
    public class PaymentsController : Controller
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
        public ActionResult Create()
        {
            if (Session["Role_Id"] == null)
            {
                return RedirectToAction("logout", "Login");
            }


            var payments = Db.ngp_payment.ToList();
            var contract = Db.ngp_contract.ToList();


            var vm = new PaymentsVM()
            {
                PaymentList = payments,
                ContractList = contract,
                

            };
            return View("Create", vm);
        }
    }
}