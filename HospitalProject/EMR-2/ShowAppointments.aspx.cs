using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace HospitalProject
{
    public partial class ShowAppointments : System.Web.UI.Page
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


            string sqlstring = "SELECT AP.[AppointmentId], AP.[PatientId], P.PatientName, AP.[DoctorId], U.UserName, AP.[AppointmentTime], AP.[AppointmentDate] FROM [Appointments] AP, Patients P, Users U where AP.PatientId = P.PatientId and U.UserId = AP.DoctorId and AP.PatientId = '" + PatientId + "'";
            SqlCommand cmd2 = new SqlCommand(sqlstring, con2);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);

            DataSet ds = new DataSet();

            da.Fill(ds);

            GridView1.DataSource = ds.Tables[0];

            GridView1.DataBind();
            con2.Close();
        }
    }
}
