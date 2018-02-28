using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class WebTable : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;

    String FetchEmployeeDatabase = "Select EmpNum as 'Employee Id', EmpName as 'Employee Name', Designation, AnnualSalary as 'Annual Salary', GrossIncomePerMonth as 'Gross Income Per Month', City, MobileNumber as 'Mobile Number' from Employee";
    //String CountEmployeeDetails = "Select count(*) from EmpDetails";
    //String InsertEmployeeDetails = "INSERT INTO [EmpDetails] ([EmpName], [Designation], [Location], [Gender]) VALUES (@EmpName, @Designation, @Location, @Gender)";

    SqlConnection conn;
    SqlCommand sc;

    protected void Page_Load(object sender, EventArgs e)
    {
        int rowCount;

        if (!IsPostBack)
        {
            MainView.ActiveViewIndex = 0;

        //    using (conn = new SqlConnection(CS))
        //    {
        //        sc = new SqlCommand(CountEmployeeDetails, conn);
        //        conn.Open();

        //        rowCount = (int)sc.ExecuteScalar();

        //        if (rowCount == 0)
        //        {
        //            sc = new SqlCommand(InsertEmployeeDetails, conn);
        //            sc.Parameters.AddWithValue("@EmpName", "Sandeep Sandy");
        //            sc.Parameters.AddWithValue("@Designation", "Senior Systems Engineer");
        //            sc.Parameters.AddWithValue("@Location", "Pune");
        //            sc.Parameters.AddWithValue("@Gender", "M");
        //            sc.ExecuteNonQuery();
        //        }
        //        conn.Close();
        //    }
        }

        using (conn = new SqlConnection(CS))
        {
            sc = new SqlCommand(FetchEmployeeDatabase, conn);

            conn.Open();

            SqlDataReader sdr = sc.ExecuteReader();
            gvEmployeeDatabaseStaticData.DataSource = sdr;
            gvEmployeeDatabaseStaticData.DataBind();

            conn.Close();
        }
    }

    protected void StaticTable_Click(object sender, EventArgs e)
    {
        MainView.ActiveViewIndex = 0;
    }

    protected void DynamicTable_Click(object sender, EventArgs e)
    {
        MainView.ActiveViewIndex = 1;
    }

    protected void lbInsert_Click(object sender, EventArgs e)
    {
        DynamicGridView.InsertParameters["EmpName"].DefaultValue = ((System.Web.UI.WebControls.TextBox)gvDynamicTable.FooterRow.FindControl("txtInsertEmpName")).Text;
        DynamicGridView.InsertParameters["Designation"].DefaultValue = ((System.Web.UI.WebControls.TextBox)gvDynamicTable.FooterRow.FindControl("txtInsertDesignation")).Text;
        DynamicGridView.InsertParameters["Location"].DefaultValue = ((System.Web.UI.WebControls.TextBox)gvDynamicTable.FooterRow.FindControl("txtInsertLocation")).Text;
        DynamicGridView.InsertParameters["Gender"].DefaultValue = ((System.Web.UI.WebControls.DropDownList)gvDynamicTable.FooterRow.FindControl("ddlInsertGender")).Text;
        DynamicGridView.Insert();
    }
}