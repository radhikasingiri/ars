using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Net.Mail;

namespace HospitalProject
{
    public partial class PatientBookAppointment : System.Web.UI.Page
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
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            SqlCommand inscmd = new SqlCommand();
            inscmd.Connection = con1;
            con1.Open();

            //inserting Value to database
            inscmd.CommandText = "INSERT INTO Appointments (PatientId, DoctorId, AppointmentDate, CreatedBy, CreatedDate, AppointmentTime) VALUES ('" + PatientId + "', '" + ddlDoctorName.SelectedValue + "','" + ddlmonth.SelectedItem.ToString() + " " + ddlday.SelectedItem.ToString() + "," + ddlyear.SelectedItem.ToString() + "','Patient','" + DateTime.Now + "',  '" + txtTime.Text + "')";
            try
            {
                inscmd.ExecuteNonQuery();
                con1.Close();
                lblerror.Visible = true;
                lblerror.Text = "Appointment Booked Successfully";
                lblerror.BackColor = Color.Green;

                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("arshospital.pvt@gmail.com");
                mail.To.Add( lblEmail.Text); 
                
                mail.Subject = "Appointment booked Successfully";
                string text = "Appointment booked Successfully \r\n";
                text += "details are Doctor name: '" + ddlDoctorName.SelectedItem.Text + "'  , Appointment date: '" + ddlmonth.SelectedItem.ToString() + "/ " + ddlday.SelectedItem.ToString() + "/" + ddlyear.SelectedItem.ToString() + "' Appointment time: '" + txtTime.Text +  "'  , please be available 15min before appointment time'";
                mail.Body = text;

                SmtpServer.EnableSsl = true;
                SmtpServer.UseDefaultCredentials = false;
                SmtpServer.Credentials = new System.Net.NetworkCredential("arshospital.pvt@gmail.com", "bujji2baby");
                SmtpServer.Host = "smtp.gmail.com";
                SmtpServer.Port = 587;                
                SmtpServer.DeliveryMethod = SmtpDeliveryMethod.Network;
                SmtpServer.Timeout = 30000;

                SmtpServer.Send(mail);
            }
            catch (Exception ex)
            {
                lblerror.Visible = true;
                //lblerror.BackColor = Color.;
                lblerror.Text = ex.Message;
            }

        }
    }
}