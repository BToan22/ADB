using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using WebFinal.Models;

namespace WebFinal.Controllers
{

	public class HomeController : Controller
	{

		private readonly ILogger<HomeController> _logger;

		public HomeController(ILogger<HomeController> logger)
		{
			_logger = logger;
		}

		public IActionResult Index()
		{
			if (string.IsNullOrEmpty(HttpContext.Session.GetString("Username")))
				return Redirect("Login");
			else
			{
				var model = new
				{
					username = HttpContext.Session.GetString("Username"),
					fullname = HttpContext.Session.GetString("Fullname"),
				};
				return View(model);
			}

		}

		public IActionResult Employee()
		{

			return View();

		}
		public IActionResult Salary()
		{
			return View();
		}
		public IActionResult Shift()
		{
			return View();
		}
		[ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
		public IActionResult Error()
		{
			return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
		}

		[HttpPost]
		public IActionResult get_employees(int Page, int Size)
		{
			var data = getEmployees(Page, Size);
			if (data != null)
			{
				var res = new
				{
					Success = true,
					Message = "",
					Data = data
				};
				return Json(res);
			}
			else
			{
				var res = new
				{
					Success = false,
					Message = "ERROR",
				};
				return Json(res);
			}
		}
		public IActionResult update_emp(Employee employee)
		{
			var c = updateEmp(employee);
			if (c != null)
			{
				var res = new
				{
					Success = true,
					Message = "",
					Data = c
				};
				return Json(res);
			}
			else
			{
				var res = new
				{
					Success = false,
					Message = "ERROR",
				};
				return Json(res);
			}

		}

		public IActionResult insert_emp(Employee employee, String cond)
		{
			var c = insertEmp(employee,cond);
			if (c != null)
			{
				var res = new
				{
					Success = true,
					Message = "",
					Data = c
				};
				return Json(res);
			}
			else
			{
				var res = new
				{
					Success = false,
					Message = "ERROR",
				};
				return Json(res);
			}

		}

		////////////////////////////////////////////////////////////////////////////////

		private object? getEmployees(int page, int size)
		{
			try
			{
				var db = new AdbContext();
				var ls = db.Employees.ToList();

				var offset = (page - 1) * size;
				var totalRecord = ls.Count();
				var totalPage = (totalRecord % size) == 0 ?
					(int)(totalRecord / size) :
					(int)(totalRecord / size + 1);
				var lst = ls.Skip(offset).Take(size).ToList();
				return new
				{
					Data = lst,
					TotalRecord = totalRecord,
					TotalPage = totalPage,
					Page = page,
					Size = size
				};
			}
			catch (Exception ex)
			{
				return null;
			}

		}

		
		private object? updateEmp(Employee e)
		{
			try
			{
				if (e == null)
					return null;
				var db = new AdbContext();
				var c1 = db.Employees.Where(x => x.EmpId == e.EmpId).FirstOrDefault();
				if (c1.Name != e.Name)
					c1.Name = e.Name;
				if (c1.Dob != e.Dob)
					c1.Dob = e.Dob;

				if (c1.Phone != e.Phone)
					c1.Phone = e.Phone;
				if (c1.PositionId != e.PositionId)
					c1.PositionId = e.PositionId;
				if (c1.ContractId != e.ContractId)
					c1.ContractId = e.ContractId;
				db.Employees.Update(c1);
				db.SaveChanges();
				return c1;
			}
			catch (Exception ex)
			{
				return null;
			}
		}


		private object? insertEmp(Employee e, String cond)
		{
			try
			{
				if (e == null)
					return null;
				var db = new AdbContext();
				var c1 = new Employee();
				//var c2 = new WorkIn()
				c1.EmpId = e.EmpId;
				if (c1.Name != e.Name)
					c1.Name = e.Name;
				if (c1.Phone != e.Phone)
					c1.Phone = e.Phone;
				if (c1.Dob != e.Dob)
					c1.Dob = e.Dob;
				if (c1.PositionId != e.PositionId)
					c1.PositionId = e.PositionId;
				if (c1.ContractId != e.ContractId)
					c1.ContractId = e.ContractId;
				var c2 = new Contract();
				
				c2.ContractId = e.ContractId;
				c2.ContractDescription = cond;
				db.Contracts.Add(c2);
				db.Employees.Add(c1);
				db.SaveChanges();
				return c1;
			}
			catch (Exception ex)
			{
				return null;
			}
		}
























	}
}