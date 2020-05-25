using DataAccessLayer;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
   public class SubjectBAL
    {
       private SubjectDAL objDAL = new SubjectDAL();
        public void addUserSubjects(UsersSujectModel[] objModel)
        {
            objDAL.addUserSubjects(objModel);
        }

        public List<UserSelectedSubjectModel> getSubectsListWithUsers(int UserID)
        {
            return objDAL.getSubectsListWithUsers(UserID);
        }
        public List<UserSelectedSubjectModel> getSubectsListWithUserForAdmin()
        {
            return objDAL.getSubectsListWithUserForAdmin();
        }

        public bool UpdateStatus(int Id, int statusId)
        {
            return objDAL.UpdateStatus(Id, statusId);
        }
    }
}
