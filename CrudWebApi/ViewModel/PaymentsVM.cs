using CrudWebApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudWebApi.ViewModel
{
    public class PaymentsVM
    {
        public int paymentID { get; set; }
        public Nullable<int> contract_no { get; set; }
        public string contractorName { get; set; }
        public string num_release { get; set; }

        public virtual ngp_contract ngp_contract { get; set; }

        public IEnumerable<ngp_contract> ContractList { get; set; }
        public ngp_contract Contract { get; set; }
        public IEnumerable<ngp_payment> PaymentList { get; set; }
        public ngp_payment Payment { get; set; }

    }
}