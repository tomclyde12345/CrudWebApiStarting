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
        public Nullable<int> location_municipality { get; set; }
        public Nullable<int> location_barangay { get; set; }
        public string area { get; set; }
        public Nullable<int> year_form { get; set; }
        public Nullable<int> penro { get; set; }
        public Nullable<int> cenro { get; set; }
        public Nullable<int> region { get; set; }
        public Nullable<int> dropdownID { get; set; }


        public int MunicipalityId { get; set; }
        public int BarangayId { get; set; }
    }
}