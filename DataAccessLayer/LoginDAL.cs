using DataAccessLayer.Context;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
   public class LoginDAL
    {
        public User LoginUser(User objModel) {
            try {
                using (DBContext _context = new DBContext()) {
                    var _user = _context.Users_Table.FirstOrDefault(usr => usr.Email == objModel.Email && usr.Password == objModel.Password
                    && usr.IS_Active == true
                    );
                    if (_user != null) {
                        return _user;
                    }
                }
            }
            catch (Exception cc) {
                throw cc;
            }
            return null;
        }
    }
}
