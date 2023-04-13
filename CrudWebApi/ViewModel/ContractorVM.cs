using CrudWebApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudWebApi.ViewModel
{
    public class ContractorVM

    {
        public IEnumerable<ngp_contractor> Contractorlist { get; set; }
        public ngp_contractor Contractor { get; set; }
        public int contractorID { get; set; }
        public string contractor_name { get; set; }
        public string address_municipality { get; set; }
        public string address_barangay { get; set; }
        public string contractor_type { get; set; }


        public int MunicipalityId { get; set; }
        public int BarangayId { get; set; }

    }
}