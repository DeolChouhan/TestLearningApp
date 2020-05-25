using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
   public class UserSelectedSubjectModel
    {
        public int Subject_ID { get; set; }
        public string Name { get; set; }
        public string User_Name { get; set; }
        public int? User_ID { get; set; }
        public bool? Is_Active { get; set; }
    }
}
