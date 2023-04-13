//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CrudWebApi.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ngp_contract
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ngp_contract()
        {
            this.ngp_payment = new HashSet<ngp_payment>();
            this.ngp_sched = new HashSet<ngp_sched>();
        }
    
        public int contractID { get; set; }
        public string moa { get; set; }
        public Nullable<int> contractorId { get; set; }
        public Nullable<int> location_municipality { get; set; }
        public Nullable<int> location_barangay { get; set; }
        public string location_sitio { get; set; }
        public string area { get; set; }
        public string commodity { get; set; }
        public string commodity_type { get; set; }
        public string survival_rate { get; set; }
        public string project_name { get; set; }
        public string contract_cost { get; set; }
        public string site_code { get; set; }
        public string year_established { get; set; }
        public string num_seedlings_planted { get; set; }
        public string num_seedlings_produced { get; set; }
        public string num_seedlings_survived { get; set; }
        public string num_seedlings_replanted { get; set; }
        public string num_seedlings_survived_year1 { get; set; }
        public Nullable<int> dropdownID { get; set; }
    
        public virtual ngp_contractor ngp_contractor { get; set; }
        public virtual ngp_dropdown ngp_dropdown { get; set; }
        public virtual NgpBarangay NgpBarangay { get; set; }
        public virtual NgpMunicipality NgpMunicipality { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ngp_payment> ngp_payment { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ngp_sched> ngp_sched { get; set; }
    }
}
