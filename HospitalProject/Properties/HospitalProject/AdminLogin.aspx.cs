using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace HospitalProject
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);            
            con2.Open();
            //To check username alredy exist or not

            string cmdstr2 = "Select UserID from Users where UserName='" + txtusername.Text + "' and Password='" + txtpassword.Text + "' and roleId=4";
            SqlCommand userid = new SqlCommand(cmdstr2, con2);            
            int temp2 = Convert.ToInt32(userid.ExecuteScalar().ToString());
            con2.Close();
            if (temp2 != 0)
            {
                Response.Redirect("AdminActions.aspx");
            }
        }
    }
}