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
    
    public partial class NgpMunicipality
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NgpMunicipality()
        {
            this.ngp_contract = new HashSet<ngp_contract>();
            this.ngp_contractor = new HashSet<ngp_contractor>();
            this.ngp_projects = new HashSet<ngp_projects>();
            this.NgpBarangays = new HashSet<NgpBarangay>();
        }
    
        public int MunicipalityId { get; set; }
        public string MunicipalityName { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ngp_contract> ngp_contract { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ngp_contractor> ngp_contractor { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ngp_projects> ngp_projects { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NgpBarangay> NgpBarangays { get; set; }
    }
}