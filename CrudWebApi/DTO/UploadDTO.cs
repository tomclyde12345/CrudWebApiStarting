using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudWebApi.DTO
{
    public class UploadDTO
    {
        public int Id { get; set; }
        public string FilePath { get; set; }
        public string FileName { get; set; }
        public int AccountId { get; set; }
    }
}