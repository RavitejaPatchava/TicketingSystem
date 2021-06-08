using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using TicketingSystem.Models;

namespace TicketingSystem.Controllers
{
    public class TicketRequestsController : Controller
    {
        private TicketingSystemEntities db = new TicketingSystemEntities();

        // GET: This method redirects to index view(main page)
        public ActionResult Index()
        {
            
            return View();
        }

        // GET: TicketRequests/Details
        // This method is used to fetch all the ticket details and returns to the view
        public ActionResult Details()
        {
            var ticketRequests = db.TicketRequests.Include(t => t.EmployeeDepartmentDetail);
            List<TicketRequestModel> ticketRequestModelsList = new List<TicketRequestModel>();
            foreach(TicketRequest ticketRequest in ticketRequests)
            {
                TicketRequestModel trModel = new TicketRequestModel();
                trModel.ProjectName = ticketRequest.ProjectName;
                trModel.Description = ticketRequest.Description;
                int employeeId = Convert.ToInt32(ticketRequest.EmployeeDepartmentDetail.EmployeeId);
                trModel.EmployeeName = db.EmployeeLists.Find(employeeId).FirstName + " " + db.EmployeeLists.Find(employeeId).LastName;
                int departmentId = Convert.ToInt32(ticketRequest.EmployeeDepartmentDetail.DepartmentId);
                trModel.DepartmentName = db.DepartmentLists.Find(departmentId).DepartmentName;
                trModel.CreatedDate = ticketRequest.CreatedDate;
                ticketRequestModelsList.Add(trModel);
            }
            return View(ticketRequestModelsList);
        }

        // This method is used to search for a ticket based on search criteria.
        // Search criteria can contain projectName,employeeName,departmentName,startDate,endDate,description
        [HttpGet]
        public JsonResult SearchTickets(string projectName,string employeeName,string departmentName,DateTime? startDate,DateTime? endDate,string description)
        {
            var ticketRequests = db.TicketRequests.Include(t => t.EmployeeDepartmentDetail);
            List<TicketRequestModel> ticketRequestModelsList = new List<TicketRequestModel>();
            foreach (TicketRequest ticketRequest in ticketRequests)
            {
                TicketRequestModel trModel = new TicketRequestModel();
                trModel.ProjectName = ticketRequest.ProjectName;
                trModel.Description = ticketRequest.Description;
                int employeeId = Convert.ToInt32(ticketRequest.EmployeeDepartmentDetail.EmployeeId);
                trModel.EmployeeName = db.EmployeeLists.Find(employeeId).FirstName + " " + db.EmployeeLists.Find(employeeId).LastName;
                int departmentId = Convert.ToInt32(ticketRequest.EmployeeDepartmentDetail.DepartmentId);
                trModel.DepartmentName = db.DepartmentLists.Find(departmentId).DepartmentName;
                trModel.CreatedDate = ticketRequest.CreatedDate;
                ticketRequestModelsList.Add(trModel);
            }
            if(projectName!="")
            {
                ticketRequestModelsList = ticketRequestModelsList.Where(trml => trml.ProjectName.Contains(projectName)).ToList();
            }
            if (employeeName != "")
            {
                ticketRequestModelsList = ticketRequestModelsList.Where(trml => trml.EmployeeName.ToLower().Contains(employeeName.ToLower())).ToList();
            }
            if (departmentName != "")
            {
                ticketRequestModelsList = ticketRequestModelsList.Where(trml => trml.DepartmentName.ToLower().Contains(departmentName.ToLower())).ToList();
            }
            if(description!="")
            {
                ticketRequestModelsList = ticketRequestModelsList.Where(trml => trml.Description.ToLower().Contains(description.ToLower())).ToList();
            }
        
            if (startDate != null && endDate!=null)
            {
                ticketRequestModelsList = ticketRequestModelsList.Where(trml => trml.CreatedDate>=startDate && trml.CreatedDate<=endDate).ToList();
            }

            return Json(ticketRequestModelsList, JsonRequestBehavior.AllowGet);
        }

        // GET: TicketRequests/Create
     // This method returns to create view page.
        public ActionResult Create()
        {
           
            ViewBag.DepartmentName= new SelectList(db.DepartmentLists, "DepartmentName", "DepartmentName");
            var employeeNames = db.EmployeeLists
                  .Select(s => new SelectListItem
                  {
                      Value = s.FirstName.ToString(),
                      Text = s.FirstName + " " + s.LastName.ToString()
                  });


            ViewBag.EmployeeName = new SelectList(employeeNames, "Value", "Text");
            return View();
        }

        // POST: TicketRequests/CreateTicket
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        // this method is used to create a ticket in the system.
        [HttpPost]
        public JsonResult CreateTicket(string ticketRequestModel)
        {
            try
            {
                TicketRequestModel ticketRequestJson = JsonConvert.DeserializeObject<TicketRequestModel>(ticketRequestModel);

                TicketRequest ticketRequest = new TicketRequest();
                string firstName = ticketRequestJson.EmployeeName.Split(' ')[0];
                string lastName = ticketRequestJson.EmployeeName.Split(' ')[1];
                int departmentId = db.DepartmentLists.FirstOrDefault(d => d.DepartmentName.Equals(ticketRequestJson.DepartmentName)).Id;
                int employeeId = db.EmployeeLists.FirstOrDefault(d => d.FirstName.Equals(firstName) && d.LastName.Equals(lastName)).Id;
                int employeeDepartmentId = db.EmployeeDepartmentDetails.FirstOrDefault(d => d.EmployeeId == employeeId && d.DepartmentId == departmentId).Id;

                ticketRequest.ProjectName = ticketRequestJson.ProjectName;
                ticketRequest.Description = ticketRequestJson.Description;
                ticketRequest.EmployeeDeparmentId = employeeDepartmentId;
                ticketRequest.CreatedDate = DateTime.Now;
                db.TicketRequests.Add(ticketRequest);
                db.SaveChanges();

                return Json(true, JsonRequestBehavior.AllowGet);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        // This method returns project-ticket count details to the summary view.

        public ActionResult Summary()
        {
            var projectTicketSummary = db.TicketRequests.GroupBy(tr=>tr.ProjectName).ToList();
            List<DataPoint> dataPoints = new List<DataPoint>();
            foreach(var projectTicket in projectTicketSummary)
            {
                DataPoint dp = new DataPoint(projectTicket.FirstOrDefault().ProjectName, projectTicket.Count());
                dataPoints.Add(dp);
            }
            ViewBag.DataPoints = JsonConvert.SerializeObject(dataPoints);
            return View();
        }
     
        // Auto generated method.
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
