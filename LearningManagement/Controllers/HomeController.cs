using BusinessLayer;
using Models;
using Rotativa;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LearningManagement.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        #region Post Methods
        [HttpPost]
        public JsonResult LoginUser(User objUserModel)
        {
            ResponseModel objModel = new ResponseModel();

            try
            {

                if (ModelState.IsValid)
                {
                    LoginBAL objBAL = new LoginBAL();
                    var dataResult = objBAL.LoginUser(objUserModel);
                    if (dataResult != null)
                    {
                        Session["Role"] = dataResult.Role_Id;
                        Session["User_ID"] = dataResult.User_ID;
                        objModel.Success = true;
                        objModel.Message = Convert.ToString(dataResult.Role_Id);
                    }
                    else
                    {
                        objModel.Success = false;
                        objModel.Message = "Invalid Username/Password";
                    }

                }
                else
                {
                    objModel.Success = false;
                    objModel.Message = string.Join("<br/> ", ModelState.Values
                                                   .SelectMany(x => x.Errors)
                                                   .Select(x => x.ErrorMessage));
                }
            }
            catch (Exception cc)
            {
                objModel.Success = false;
                objModel.Message = cc.Message.ToString();
            }

            return Json(objModel);
        }
        [HttpPost]
        public JsonResult AddSubjects(UsersSujectModel[] objSubjectModel)
        {
            ResponseModel objModel = new ResponseModel();

            try
            {

               
                if (objSubjectModel!=null && objSubjectModel.Length> 0 && objSubjectModel.Length <=2)
                {
                    SubjectBAL objBal = new SubjectBAL();
                    objBal.addUserSubjects(objSubjectModel);
                    objModel.Success = true;
                    objModel.Message = "Subject Added Successfully..";
                }
                else
                {
                    objModel.Success = false;
                    objModel.Message = "Please select Atleast One Subject";
                    if (objSubjectModel != null && objSubjectModel.Length > 2) {
                        objModel.Message = "Maximum 2 Subects are required.";
                    }
                   
                }
            }
            catch (Exception cc)
            {
                objModel.Success = false;
                objModel.Message = cc.Message.ToString();
            }

            return Json(objModel);
        }

        [HttpPost]
        public JsonResult UpdateStauts(int Id, int Status)
        {
            ResponseModel objModel = new ResponseModel();

            try
            {
                SubjectBAL objBal = new SubjectBAL();
                var status = objBal.UpdateStatus(Id,Status);
                
            }
            catch (Exception cc)
            {
                objModel.Success = false;
                objModel.Message = cc.Message.ToString();
            }

            return Json(objModel);
        }
        #endregion

        #region Get Methods
        public ActionResult Subjects() {
            SubjectBAL objBal = new SubjectBAL();
            var data = objBal.getSubectsListWithUsers(Convert.ToInt32(Session["User_ID"]));
            return View(data);
        }

        public ActionResult Manage()
        {
            SubjectBAL objBal = new SubjectBAL();
            var data = objBal.getSubectsListWithUserForAdmin();
            return View(data);
        }

        public ActionResult PrintPDF()
        {
            SubjectBAL objBal = new SubjectBAL();
            var data = objBal.getSubectsListWithUserForAdmin();

            return new PartialViewAsPdf("~/Views/Shared/_partial/_SubjectList.cshtml", data)
            {
                FileName = "TestPartialViewAsPdf.pdf"
            };
        }
        #endregion


    }
}