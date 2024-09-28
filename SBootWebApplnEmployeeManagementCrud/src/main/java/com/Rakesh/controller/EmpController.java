package com.Rakesh.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.Rakesh.model.EmployeeModel;
import com.Rakesh.repo.EmployeeRepo;

@Controller
public class EmpController 
{
	@Autowired
	EmployeeRepo repo;

	@RequestMapping("/")
	public String homePage()
	{
		return "home";
	}

	@RequestMapping("/registerUrl")
	public String registerPage()
	{
		return "register";
	}
	@RequestMapping("/contactUrl")
	public String contactPage()
	{
		return "contact";
	}

	@RequestMapping("/regisUrl")
	public String saveUser(EmployeeModel emps,ModelMap model)
	{
		repo.save(emps);
		return "success";
	}
	@RequestMapping("/loginUrl")
	public String loginPage()
	{
		return "login";
	}
	@RequestMapping("/loginvalidUrl")
	public String loginValidate(@RequestParam int empid,@RequestParam String password,ModelMap model)
	{
		model.put("eid",empid);
		model.put("psw",password);

		EmployeeModel employee = repo.findById(empid).get();

		if(employee.getEmpid()==empid && employee.getPassword().equals(password)) 
		{
			return "loginok";
		}
		else
		{
			return "errors";
		}
	}

	@RequestMapping("/viewAllUrl")
	public String viewAllEmployee(ModelMap model)
	{
		model.put("users",repo.findAll());
		return "viewUser";
	}

	@RequestMapping(value ="/deleteUrl/{empid}",method = RequestMethod.GET)
	public String deleteEmp(@PathVariable int empid)
	{
		repo.deleteById(empid);
		return "redirect:/viewAllUrl";
	}

	@RequestMapping(value = "/editUrl/{empid}")
	public String editUserForm(@PathVariable int empid, ModelMap model)
	{
		model.put("command",repo.findById(empid).get());
		return "editEmployee";
	}
	@RequestMapping(value = "/editUrl")
	public String editUser(EmployeeModel employee,ModelMap model)
	{
		repo.save(employee);
		return "redirect:/viewAllUrl";
	}
	@RequestMapping("viewOne")
	public String viewOne()
	{
		return "viewOne";
	}
	@RequestMapping("/viewOneUrl")
	public String getOneStudent(@RequestParam int empid,ModelMap model)
	{   
		model.put("id",empid);
	EmployeeModel empObj=repo.findById(empid).get();
	model.put("empss", empObj);
		if(empObj.getEmpid()==empid)
		{
			
			return "viewOneTable";
		}
		else
		{
			return "getOneError";
		}
	}
}
