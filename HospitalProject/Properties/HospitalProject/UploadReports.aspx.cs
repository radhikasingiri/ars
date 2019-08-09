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
    public partial class UploadReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUploadReports_Click(object sender, EventArgs e)
        {
            //displaying the personal details
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con2.Open();
            string MyString = "SELECT PatientName,Gender,DateofBirth,EMAIL,PhoneNo FROM Patients WHERE PatientId = '" + txtpatientId.Text + "'";
            SqlCommand cmd = new SqlCommand(MyString, con2);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            if (reader.HasRows)
            {

            }
            else
            {
                lblerror.Visible = true;
                lblerror.Text = "No Patient Data found";
                return;
            }
            reader.Close();

            string MyString2 = "SELECT AppointmentId,PatientId FROM Appointments WHERE PatientId = '" + txtpatientId.Text + "' and AppointmentId = '" + txtAppointmentId.Text + "'";
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

            con2.Close();

            try
            {
                if (FileUpload1.HasFile)
                {

                    FileUpload1.SaveAs(Server.MapPath("~/temp/") + "" + txtpatientId.Text + "_" + txtAppointmentId.Text + "_" + FileUpload1.FileName);
                    lblerror.Text = "File Uploaded to projectfolder/temp/ " + "" + txtpatientId.Text + "_" + txtAppointmentId.Text + "_" + FileUpload1.FileName;
                }
                else
                {
                    lblerror.Text = "No File Uploaded.";
                }
            }



            catch (Exception ex)
            {                
                lblerror.Text = ex.Message;
            }
        }
    }
}