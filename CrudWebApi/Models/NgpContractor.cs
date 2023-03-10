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
    
    public partial class NgpContractor
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NgpContractor()
        {
            this.NgpYears = new HashSet<NgpYear>();
            this.NgpYears1 = new HashSet<NgpYear>();
        }
    
        public int Id { get; set; }
        public string Year_Estb { get; set; }
        public string Region { get; set; }
        public string Penro { get; set; }
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
        public string CenroId { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NgpYear> NgpYears { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NgpYear> NgpYears1 { get; set; }
    }
}
