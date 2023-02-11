using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CrudWebApi.ViewModel
{
    public class UserListVM
    {
        public string Email { get; set; }
        public string Name { get; set; }
        public string FilePath { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string RoleID { get; set; }
        public int Id { get; set; }
    }
}