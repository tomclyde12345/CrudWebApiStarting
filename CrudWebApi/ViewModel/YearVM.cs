using CrudWebApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudWebApi.ViewModel
{
    public class YearVM
    {
       

        public IEnumerable<NgpYear> YearList { get; set; }
        public NgpYear Year { get; set; }
        public int Id { get; set; }
        public string ProjectNameId { get; set; }
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
    }
}