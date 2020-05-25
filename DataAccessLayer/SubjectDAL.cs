using DataAccessLayer.Context;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class SubjectDAL
    {
        public void addUserSubjects(UsersSujectModel[] objModel)
        {
            try
            {
                using (DBContext _context = new DBContext())
                {
                    var User_Id = objModel[0].User_ID;
                    _context.UsersSuject_Table.RemoveRange(_context.UsersSuject_Table.Where(c => c.User_ID == User_Id));

                    foreach (var item in objModel)
                    {
                        UsersSujectModel objSubjects = new UsersSujectModel();
                        objSubjects.User_ID = item.User_ID;
                        objSubjects.Subject_ID = item.Subject_ID;
                        objSubjects.Is_Active = false;
                        objSubjects.Created_Date = DateTime.Now;
                        objSubjects.EndDate = DateTime.Now.AddMonths(3);
                        //objSubjects.
                        _context.UsersSuject_Table.Add(objSubjects);
                        _context.SaveChanges();

                    }
                }
            }
            catch (Exception cc)
            {
                throw cc;
            }

        }
        public List<UserSelectedSubjectModel> getSubectsListWithUsers(int UserID)
        {
            try
            {
                using (DBContext _context = new DBContext())
                {
                    var data = (from s in _context.Subjects
                                join u in _context.UsersSuject_Table on s.Subject_ID equals u.Subject_ID into gj
                                from x in gj.DefaultIfEmpty()
                                select new UserSelectedSubjectModel
                                {
                                    Subject_ID = s.Subject_ID,
                                    Name = s.Subject,
                                    User_ID = (x == null ? 0 : x.User_ID),
                                    Is_Active = (x == null ? false : x.Is_Active),
                                }).ToList();
                    return data;

                }
            }
            catch (Exception cc)
            {
                throw cc;
            }


        }

        public List<UserSelectedSubjectModel> getSubectsListWithUserForAdmin()
        {
            try
            {
                using (DBContext _context = new DBContext())
                {
                    var data = (from s in _context.Subjects
                                join u in _context.UsersSuject_Table on s.Subject_ID equals u.Subject_ID
                                join usr in _context.Users_Table on u.User_ID equals usr.User_ID
                                select new UserSelectedSubjectModel
                                {
                                    Subject_ID = u.ID,
                                    Name = s.Subject,
                                    User_ID = usr.User_ID,
                                    Is_Active = u.Is_Active,
                                    User_Name = usr.Name
                                }).ToList();
                    return data;

                }
            }
            catch (Exception cc)
            {
                throw cc;
            }


        }

        public bool UpdateStatus(int Id, int statusId)
        {
            try
            {
                using (DBContext _context = new DBContext())
                {
                    var usersSujectModel = _context.UsersSuject_Table.FirstOrDefault(prf => prf.ID == Id);

                    usersSujectModel.Is_Active = statusId == 1 ? true : false;
                    _context.SaveChanges();
                }
                return true;
            }
            catch (Exception cc)
            {
                throw cc;
            }
        }
    }
}
