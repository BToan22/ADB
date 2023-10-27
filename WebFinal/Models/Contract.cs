using System;
using System.Collections.Generic;

namespace WebFinal.Models;

public partial class Contract
{
    public string ContractId { get; set; } = null!;

    public string ContractDescription { get; set; } = null!;

    public virtual ICollection<Employee> Employees { get; } = new List<Employee>();
}
