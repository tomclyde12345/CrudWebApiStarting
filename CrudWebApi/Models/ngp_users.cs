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
    
    public partial class ngp_users
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ngp_users()
        {
            this.ngp_history = new HashSet<ngp_history>();
        }
    
        public int userID { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public Nullable<int> roleID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ngp_history> ngp_history { get; set; }
    }
}
