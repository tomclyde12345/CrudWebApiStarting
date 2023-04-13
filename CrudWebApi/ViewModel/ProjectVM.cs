using CrudWebApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudWebApi.ViewModel
{
    public class ProjectVM
    {
        public IEnumerable<ngp_projects> ProjectList { get; set; }
        public ngp_projects Project { get; set; }

        public IEnumerable<NgpBarangay> BarangayList { get; set; }
        public NgpBarangay Barangay { get; set; }

        public IEnumerable<NgpMunicipality> MunicipalityListing { get; set; }
        public NgpMunicipality Municipality { get; set; }
        public int projectID { get; set; }
        public string site_code { get; set; }
        public string location_municipality { get; set; }
        public string location_barangay { get; set; }
        public string area { get; set; }
        public string year_form { get; set; }
        public string penro { get; set; }
        public string  cenro { get; set; }
        public string region { get; set; }
        public string dropdownID { get; set; }


        public int MunicipalityId { get; set; }
        public int BarangayId { get; set; }
    }
}