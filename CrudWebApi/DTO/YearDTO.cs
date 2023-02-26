using CrudWebApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudWebApi.DTO
{
    public class YearDTO
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

        public virtual NgpContractor NgpContractor { get; set; }
    }
}