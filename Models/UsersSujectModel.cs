using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
   public class UsersSujectModel
    {
        [Key]
        public int ID { get; set; }
        public int User_ID { get; set; }
        public int Subject_ID { get; set; }
        public DateTime Created_Date { get; set; }
        public DateTime EndDate { get; set; }
        public Boolean Is_Active { get; set; }
    }
}
