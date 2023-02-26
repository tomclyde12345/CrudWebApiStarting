using CrudWebApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudWebApi.ViewModel
{
    public class ContractorTableVM

    {
        public IEnumerable<NgpContractor> Contractorlist { get; set; }
        public NgpContractor Contractor { get; set; }
        public int Id { get; set; }
        public string Year_Estb { get; set; }
        public string Region { get; set; }
        public string Penro { get; set; }
        public string CenroId { get; set; }
        public Nullable<int> AddressId { get; set; }
        public string SiteCode { get; set; }
        public string ContractorName { get; set; }
        public string ProjectName { get; set; }
        public string AreaContracted { get; set; }
        public string AddressMunicipality { get; set; }
        public string AddressBarangay { get; set; }
        public string LocationMunicipality { get; set; }
        public string LocationBarangay { get; set; }
        public string LocationSitio { get; set; }
    }
}