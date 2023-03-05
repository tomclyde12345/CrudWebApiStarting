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
    
    public partial class NgpYear
    {
        public int Id { get; set; }
        public Nullable<int> ProjectNameId { get; set; }
        public string moa_number { get; set; }
        public string Date_moa { get; set; }
        public string Unit_cost { get; set; }
        public string contract_cost { get; set; }
        public string date_obligated { get; set; }
        public string ors_no { get; set; }
        public string no_seedings_produced { get; set; }
        public string commodity_forest { get; set; }
        public string commodity_fruit { get; set; }
        public string commodity_bamboo { get; set; }
        public string no_seedlings_planted { get; set; }
        public string no_seedlings_survived { get; set; }
        public string survival_rate { get; set; }
        public string year_contracted { get; set; }
        public string moa3 { get; set; }
        public string moa2 { get; set; }
        public string no_seedlings_year1 { get; set; }
        public string no_seedlings_replanted { get; set; }
        public string no_seedlings_replanted3 { get; set; }
        public string no_seedlings_year3 { get; set; }
        public Nullable<int> ContractorNameId { get; set; }
    
        public virtual NgpContractor NgpContractor { get; set; }
        public virtual NgpContractor NgpContractor1 { get; set; }
    }
}
