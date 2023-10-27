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
		public IActionResult Lecturer()
		{
			return View();
		}
		public IActionResult Subjects()
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






























	}
}