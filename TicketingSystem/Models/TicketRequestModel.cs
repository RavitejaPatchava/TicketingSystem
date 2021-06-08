using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace TicketingSystem.Models
{
    public class TicketRequestModel
    {
        [Display(ResourceType = typeof(Resource), Name = "ProjectName")]
        [Required(ErrorMessage = "Required")]
        public string ProjectName { get; set; }
        [Display(ResourceType = typeof(Resource), Name = "DepartmentName")]
        [Required(ErrorMessage = "Required")]
        public string DepartmentName { get; set; }
        [Display(ResourceType = typeof(Resource), Name = "RequestedBy")]
        [Required(ErrorMessage = "Required")]
        public string EmployeeName { get; set; }
        [Display(ResourceType = typeof(Resource), Name = "ProblemDescription")]
        [Required(ErrorMessage = "Required")]
        public string Description { get; set; }
        [Display(ResourceType = typeof(Resource), Name = "CreatedDate")]
        [Required(ErrorMessage = "Required")]   
        public DateTime CreatedDate { get; set; }
    }
}