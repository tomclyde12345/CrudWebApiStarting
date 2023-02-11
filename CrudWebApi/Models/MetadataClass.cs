using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Security.Cryptography.X509Certificates;
namespace CrudWebApi.Models

{
   

    [MetadataType(typeof(IppUsermetadata))]
    public partial class SampleUser
    {
    }
    public partial class IppUsermetadata

    {

        [RegularExpression("(?=.*?[0-9])(?=.*?[A-Z])(?=.*?[#?!@$%^&*\\-_]).{8,}$", ErrorMessage = "At least 1 Uppercase,1 Lowercase,1 Special Character, 1 Numeric Character and Minimum of 8 Characters")]
        //[DataType(System.ComponentModel.DataAnnotations.DataType.Password)]
        public string Password { get; set; }

    }

}





