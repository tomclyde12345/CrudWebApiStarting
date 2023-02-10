using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CrudWebApi.Controllers
{
    public class TribeController : Controller
    {
        // GET: Tribe
        public ActionResult Index()
        {
            return View();
        }
    }
}