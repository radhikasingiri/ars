using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.UI;

namespace HospitalProject
{
    public partial class BookAppointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnBookAppointment_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            SqlCommand inscmd = new SqlCommand();
            inscmd.Connection = con1;
            con1.Open();

            //inserting Value to database
            inscmd.CommandText = "INSERT INTO Appointments (PatientId, DoctorId, AppointmentDate, CreatedBy, CreatedDate, AppointmentTime) VALUES ('" + txtpatientId.Text + "', '" + ddlDoctorName.SelectedValue + "','" + ddlmonth.SelectedItem.ToString() + " " + ddlday.SelectedItem.ToString() + "," + ddlyear.SelectedItem.ToString() + "','Admin','" + DateTime.Now + "',  '" + txtTime.Text + "')";


            try
            {
                inscmd.ExecuteNonQuery();
                con1.Close();
                lblerror.Visible = true;
                lblerror.Text = "Appointment Booked Successfully";
                lblerror.BackColor = Color.Green;
            }
            catch (Exception)
            {
                lblerror.Visible = true;
                lblerror.Text = "Something bad happened... Please try again later!!";
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //displaying the personal details
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con2.Open();
            string MyString = "SELECT PatientName,Gender,DateofBirth,EMAIL,PhoneNo FROM Patients WHERE PatientId = '" + txtpatientId.Text + "'";
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
    }
}