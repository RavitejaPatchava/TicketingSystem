using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TicketingSystem.Models;
using System.Data;
using System.Data.Entity;

namespace TicketingSystem.Controllers
{
    public class EmployeeDepartmentController : Controller
    {
        private TicketingSystemEntities db = new TicketingSystemEntities();


        // GET: This method is used to fetch the employee names based on DepartmentName
        [HttpGet]
        public JsonResult Get(string DepartmentName)
        {
            try
            {

                var ddl = db.DepartmentLists.ToList();
                var departmentId = db.DepartmentLists.FirstOrDefault(dl => dl.DepartmentName.Trim().Equals(DepartmentName.Trim())).Id;
                List<int> employeeIdList = db.EmployeeDepartmentDetails.Where(edd => edd.DepartmentId == departmentId).Select(edd => edd.EmployeeId.Value).ToList();
               List<string> employeeList = db.EmployeeLists.Where(el => employeeIdList.Contains(el.Id)).Select(el => el.FirstName + " " + el.LastName).ToList();
                return Json(employeeList, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        // Auto generated method
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}