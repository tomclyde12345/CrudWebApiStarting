using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudWebApi.DTO
{
    public class ContractorDTO
    {
        public int contractorID { get; set; }
        public string contractor_name { get; set; }
        public Nullable<int> address_municipality { get; set; }
        public Nullable<int> address_barangay { get; set; }
        public Nullable<int> contractor_type { get; set; }
    }
}