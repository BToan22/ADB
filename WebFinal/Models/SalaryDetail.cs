using System;
using System.Collections.Generic;

namespace WebFinal.Models;

public partial class SalaryDetail
{
    public string EmpId { get; set; } = null!;

    public float? TotalSalary { get; set; }

    public float? TotalShift { get; set; }

    public DateTime Date { get; set; }

    public virtual Employee Emp { get; set; } = null!;
}
