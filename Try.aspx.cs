using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Try : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

    String FetchEmployeeDatabase = "Select EmpNum as 'Employee Id', EmpName as 'Employee Name', Designation, AnnualSalary as 'Annual Salary', GrossIncomePerMonth as 'Gross Income Per Month', City, MobileNumber as 'Mobile Number' from Employee";

    SqlConnection conn;
    SqlCommand sc;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lbInsert_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["Name"].DefaultValue = ((TextBox)gvDynamicTable.FooterRow.FindControl("txtInsertName")).Text;
        SqlDataSource1.InsertParameters["MobileNumber"].DefaultValue = ((TextBox)gvDynamicTable.FooterRow.FindControl("txtInsertMobileNumber")).Text;
        SqlDataSource1.InsertParameters["City"].DefaultValue = ((TextBox)gvDynamicTable.FooterRow.FindControl("txtInsertCity")).Text;
        SqlDataSource1.Insert();
    }
}