using System;
using System.Collections.Generic;

namespace WebFinal.Models;

public partial class Shift
{
    public string AttendanceId { get; set; } = null!;

    public DateTime Day { get; set; }

    public DateTime? StartTime { get; set; }

    public DateTime? EndTime { get; set; }

    public string Name { get; set; } = null!;

    public float? SalaryOfShift { get; set; }

    public virtual ICollection<Employee> Emps { get; } = new List<Employee>();
}
