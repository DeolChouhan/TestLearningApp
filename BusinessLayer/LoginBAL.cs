using DataAccessLayer;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class LoginBAL
    {
        public User LoginUser(User objModel)
        {
            LoginDAL objDAL = new LoginDAL();
            return objDAL.LoginUser(objModel);
        }
    }
}
