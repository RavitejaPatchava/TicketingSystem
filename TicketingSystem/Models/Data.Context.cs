﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TicketingSystemEntities : DbContext
    {
        public TicketingSystemEntities()
            : base("name=TicketingSystemEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<DepartmentList> DepartmentLists { get; set; }
        public virtual DbSet<EmployeeDepartmentDetail> EmployeeDepartmentDetails { get; set; }
        public virtual DbSet<EmployeeList> EmployeeLists { get; set; }
        public virtual DbSet<TicketRequest> TicketRequests { get; set; }
    }
}