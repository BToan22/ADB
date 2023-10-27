using System;
using System.Collections.Generic;

namespace WebFinal.Models;

public partial class AcademicLevel
{
    public string AcaId { get; set; } = null!;

    public string DegreeName { get; set; } = null!;

    public string DegreeType { get; set; } = null!;

    public DateTime DateOfIssue { get; set; }

    public DateTime DateOfExpiry { get; set; }

    public virtual ICollection<Employee> Emps { get; } = new List<Employee>();
}
