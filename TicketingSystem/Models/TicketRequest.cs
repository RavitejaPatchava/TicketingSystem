//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TicketingSystem.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class TicketRequest
    {
        public int Id { get; set; }
        public string ProjectName { get; set; }
        public int EmployeeDeparmentId { get; set; }
        public string Description { get; set; }
        public System.DateTime CreatedDate { get; set; }
    
        public virtual EmployeeDepartmentDetail EmployeeDepartmentDetail { get; set; }
    }
}
