using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ProgramIDLabel.Text = Session["ProgramID"].ToString();
            PersonalNoLabel.Text = Session["UID"].ToString();

            LoadSectionDropDownList();

        }
    }

    protected void standardButton_Click(object sender, EventArgs e)
    {
        string companyName, departmentName, fromDate, toDate;
        if (inputFrom.Text != "" && inputTo.Text != "")
        {
            int result = DateTime.Compare(Convert.ToDateTime(inputFrom.Text), Convert.ToDateTime(inputTo.Text));
            if (result < 0)
            {
                try
                {

                    string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        SqlCommand cmd = new SqlCommand("SELECT * from AuditProgram where ([PID]=@PID)", con);
                        con.Open();
                        cmd.Parameters.AddWithValue("@PID", Session["ProgramID"]);
                        SqlDataReader dr = cmd.ExecuteReader();
                        dr.Read();
                        companyName = dr["CompanyName"].ToString();
                        departmentName = dr["DepartmentName"].ToString();
                        fromDate = dr["From"].ToString();
                        toDate = dr["To"].ToString();
                    }

                    int result1 = DateTime.Compare(Convert.ToDateTime(inputFrom.Text), Convert.ToDateTime(fromDate));
                    int result2 = DateTime.Compare(Convert.ToDateTime(inputFrom.Text), Convert.ToDateTime(toDate));
                    int result3 = DateTime.Compare(Convert.ToDateTime(inputTo.Text), Convert.ToDateTime(fromDate));
                    int result4 = DateTime.Compare(Convert.ToDateTime(inputTo.Text), Convert.ToDateTime(toDate));
                    if (result1 >= 0 && result2 <= 0 && result3 >= 0 && result4 <= 0)
                    {


                        using (SqlConnection con = new SqlConnection(connectionString))
                        {

                            SqlCommand check_AuditProgram = new SqlCommand("select count(*) from AuditPlan where ([CompanyName]=@CompanyName) AND ([DepartmentName]=@DepartmentName) AND ([SectionName]=@SectionName) ", con);
                            con.Open();
                            check_AuditProgram.Parameters.AddWithValue("@CompanyName", companyName);
                            check_AuditProgram.Parameters.AddWithValue("@DepartmentName", departmentName);
                            check_AuditProgram.Parameters.AddWithValue("@SectionName", SectionDropDown.SelectedItem.Value);
                            int UserExist = (int)check_AuditProgram.ExecuteScalar();

                            if (UserExist > 0)
                            {
                                Label3.Text = "This Audit Plan already exists for selected Program";
                                //Username exist
                            }
                            else
                            {
                                //Label1.Text = "NOT Exists";
                                string qry = "INSERT INTO [dbo].[AuditPlan] ([PID], [PersonalNo], [CompanyName], [DepartmentName], [SectionName], [From], [To]) VALUES (@ProgramID, @PersonalNo, @CompanyName, @DepartmentName, @SectionName, @From, @To)";
                                SqlCommand cmd = new SqlCommand(qry, con);
                                cmd.Parameters.AddWithValue("@ProgramID", ProgramIDLabel.Text);
                                cmd.Parameters.AddWithValue("@PersonalNo", PersonalNoLabel.Text);
                                cmd.Parameters.AddWithValue("@CompanyName", companyName);
                                cmd.Parameters.AddWithValue("@DepartmentName", departmentName);
                                cmd.Parameters.AddWithValue("@SectionName", SectionDropDown.SelectedItem.Value);
                                cmd.Parameters.AddWithValue("@From", inputFrom.Text);
                                cmd.Parameters.AddWithValue("@To", inputTo.Text);
                                int i = cmd.ExecuteNonQuery();
                                if (i != 0)
                                {
                                    Label3.Text = " Your data has been saved in the database";
                                    Label3.ForeColor = System.Drawing.Color.ForestGreen;

                                }
                                else
                                {
                                    Label3.Text = "Error occured in database";
                                    Label3.ForeColor = System.Drawing.Color.Red;

                                }
                                //Username doesn't exist.
                            }
                        }
                    }
                    else
                    {
                        Label3.Text = "Starting Date and Ending Date should be greater than or equal to "+fromDate+" and less than or equal to "+toDate;
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                Label3.Text = "Starting Date cannot be less than or equal to Ending Date";
            }
        }

        else
        {
            Label3.Text = "Some Input is missing";
        }
    }


    public void LoadSectionDropDownList()
    {
        string companyName, departmentName;
        try
        {
            string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT * from AuditProgram where ([PID]=@PID)", con);
                con.Open();
                cmd.Parameters.AddWithValue("@PID", Session["ProgramID"]);
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                companyName = dr["CompanyName"].ToString();
                departmentName = dr["DepartmentName"].ToString();
            }
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT * from Section where ([CompanyName]=@CompanyName) AND ([DepartmentName]=@DepartmentName)", con);
                con.Open();
                cmd.Parameters.AddWithValue("@CompanyName", companyName);
                cmd.Parameters.AddWithValue("@DepartmentName", departmentName);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);  // fill dataset
                SectionDropDown.DataTextField = ds.Tables[0].Columns["SectionName"].ToString(); // text field name of table dispalyed in dropdown
                SectionDropDown.DataValueField = ds.Tables[0].Columns["SectionName"].ToString();             // to retrive specific  textfield name 
                SectionDropDown.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
                SectionDropDown.DataBind();  //binding dropdownlist
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message + " Section Drop Down");
        }
    }
}