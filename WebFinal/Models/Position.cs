using System;
using System.Collections.Generic;

namespace WebFinal.Models;

public partial class Position
{
    public string PosId { get; set; } = null!;

    public string PosName { get; set; } = null!;

    public float SalaryPerHour { get; set; }

    public virtual ICollection<Employee> Employees { get; } = new List<Employee>();
}
