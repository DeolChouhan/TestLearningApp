using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
   public class Subjects
    {
        [Key]
        public int Subject_ID { get; set; }
        public string Subject { get; set; }
        public bool IS_Active { get; set; }
    }
}
