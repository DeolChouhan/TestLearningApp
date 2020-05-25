using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
   public class Role
    {
        [Key]
        public int Role_ID { get; set; }
        public string Role_Type { get; set; }
        public bool IS_Active { get; set; }
    }
    public class ResponseModel
    {
        public string Message { get; set; }
        public bool Success { get; set; }
    }

}
