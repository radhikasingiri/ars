using System;
using System.Configuration;
using System.Data.SqlClient;

namespace HospitalProject
{
    public partial class PatientActions : System.Web.UI.Page
    {
        string PatientId;
        protected void Page_Load(object sender, EventArgs e)
        {
            PatientId = Request.QueryString["PatientId"];
            //displaying the personal details
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con2.Open();
            string MyString = "SELECT PatientName,Gender,DateofBirth,EMAIL,PhoneNo FROM Patients WHERE PatientId = '" + PatientId + "'";
            SqlCommand cmd = new SqlCommand(MyString, con2);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            lblPatientName.Text = reader["PatientName"].ToString();
            lblGender.Text = reader["Gender"].ToString();
            lblDOB.Text = reader["DateofBirth"].ToString();
            lblPhonenum.Text = reader["PhoneNo"].ToString();
            lblEmail.Text = reader["EMAIL"].ToString();
            reader.Close();
            con2.Close();
        }

        protected void btnBookAppointment_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientBookAppointment.aspx?PatientId=" + PatientId);
        }

        protected void btnShowAppointments_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowAppointments.aspx?PatientId=" + PatientId);
        }

        protected void btnPatientHistory_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientHistory.aspx?PatientId=" + PatientId);
        }

        protected void btnDownloadReports_Click(object sender, EventArgs e)
        {
            Response.Redirect("DownloadReports.aspx?PatientId=" + PatientId);
        }
    }
}