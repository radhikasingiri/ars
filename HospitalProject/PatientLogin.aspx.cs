using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalProject
{
    public partial class PatientLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con2.Open();
            //To check username alredy exist or not

            string cmdstr2 = "Select UserID from Users where UserName='" + txtusername.Text + "' and Password='" + txtpassword.Text + "' and roleId=3";
            SqlCommand userid = new SqlCommand(cmdstr2, con2);
            int temp2 = Convert.ToInt32(userid.ExecuteScalar().ToString());
            con2.Close();
            if (temp2 != 0)
            {
                Response.Redirect("PatientActions.aspx?PatientId=" + temp2.ToString());
            }
        }
    }
}