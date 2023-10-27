using System;
using System.Collections.Generic;

namespace WebFinal.Models;

public partial class Employee
{
    public string EmpId { get; set; } = null!;

    public string Name { get; set; } = null!;

    public DateTime Dob { get; set; }

    public string Phone { get; set; } = null!;

    public string ContractId { get; set; } = null!;

    public string PositionId { get; set; } = null!;

    public virtual Contract Contract { get; set; } = null!;

    public virtual Position Position { get; set; } = null!;

    public virtual ICollection<SalaryDetail> SalaryDetails { get; } = new List<SalaryDetail>();

    public virtual ICollection<AcademicLevel> Acas { get; } = new List<AcademicLevel>();

    public virtual ICollection<Shift> Attendances { get; } = new List<Shift>();
}
