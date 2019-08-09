using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalProject
{
    public partial class DownloadReports : System.Web.UI.Page
    {
        string PatientId;
        protected void Page_Load(object sender, EventArgs e)
        {
            PatientId = Request.QueryString["PatientId"];
        }

        protected void btnShowFiles_Click(object sender, EventArgs e)
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con2.Open();
            string MyString2 = "SELECT AppointmentId,PatientId FROM Appointments WHERE PatientId = '" + PatientId + "' and AppointmentId = '" + txtAppointmentId.Text + "'";
            SqlCommand cmd2 = new SqlCommand(MyString2, con2);
            SqlDataReader reader2 = cmd2.ExecuteReader();
            reader2.Read();
            if (reader2.HasRows)
            {

            }
            else
            {
                lblerror.Visible = true;
                lblerror.Text = "No Appointment Data found";
                return;
            }
            reader2.Close();

            string[] filePaths = Directory.GetFiles(Server.MapPath("~/temp/"));
            List<ListItem> files = new List<ListItem>();
            foreach (string filePath in filePaths)
            {
                if (filePath.Contains(txtAppointmentId.Text))
                {
                    files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                }
            }
            GridView1.DataSource = files;
            GridView1.DataBind();
        }

        protected void lnkDownload_Click(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();

            lblerror.Visible = true;
            lblerror.Text = "File Downloaded";
        }
    }
}
