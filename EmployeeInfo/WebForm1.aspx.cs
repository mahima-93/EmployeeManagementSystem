using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EmployeeInfo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO tab1 (FirstName,LastName,Department,Designation,Salary,Address,EmailId,ContactNumber,JoiningDate) VALUES('"+ FirstName.Text +"','"+LastName.Text+"','"+Department.SelectedItem.Text +"','"+Designation.Text +"','"+ Salary.Text+"','"+Address.Text+"','"+EmailId.Text+"','"+ContactNumber.Text+ "','"+JoiningDate.Text+"');";
            cmd.ExecuteNonQuery();

            FirstName.Text = "";
            LastName.Text = "";
            Department.Text = "";
            Designation.Text = "";
            Salary.Text = "";
            Address.Text = "";
            EmailId.Text = "";
            ContactNumber.Text = "";
            JoiningDate.Text = "";
            disp_data();

        }
        public void disp_data()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType=CommandType.Text;
            cmd.CommandText = "select * from tab1";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            Gridview1.DataSource = dt;
            Gridview1.DataBind();
        }

        protected void button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from tab1 where Id='"+Convert.ToInt32(Update_Id.Text)+"'";
            cmd.ExecuteNonQuery();
            Update_Id.Text = "";
            disp_data();

        }

        protected void button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Update tab1 set FirstName='"+FirstName.Text+"',LastName='"+LastName.Text+"',Department='"+Department.Text+"',Designation='"+Designation.Text+"',Salary='"+Salary.Text+"',Address='"+Address.Text+"',ContactNumber='"+ContactNumber.Text+"',JoiningDate='"+JoiningDate.Text+"' where Id='"+Convert.ToInt32(Update_Id.Text)+"'";
            cmd.ExecuteNonQuery();
            Update_Id.Text = "";
            disp_data();
        }

        protected void button4_Click1(object sender, EventArgs e)
        {
            disp_data();
        }

        protected void button5_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Delete from tab1;";
            cmd.ExecuteNonQuery();
            //FirstName.Text = "";
            disp_data();
        }

        protected void LastName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}