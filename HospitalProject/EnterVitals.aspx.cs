using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalProject
{
    public partial class EnterVitals : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
            if (reader.HasRows)
            {
                lblPatientName.Text = reader["PatientName"].ToString();
                lblGender.Text = reader["Gender"].ToString();
                lblDOB.Text = reader["DateofBirth"].ToString();
                lblPhonenum.Text = reader["PhoneNo"].ToString();
                lblEmail.Text = reader["EMAIL"].ToString();
            }
            else
            {
                lblerror.Visible = true;
                lblerror.Text = "No Patient Data found";
            }
            reader.Close();

            string MyString2 = "SELECT Weight,Height,BP,Temperature,MajorSymptoms FROM PatientHistory WHERE PatientId = '" + txtpatientId.Text + "' and AppointmentId = '" + txtAppointmentId.Text + "'";
            SqlCommand cmd2 = new SqlCommand(MyString2, con2);
            SqlDataReader reader2 = cmd2.ExecuteReader();
            reader2.Read();
            if (reader2.HasRows)
            {
                lblWeight.Text = reader2["Weight"].ToString();
                lblHeight.Text = reader2["Height"].ToString();
                lblBP.Text = reader2["BP"].ToString();
                lblTemperature.Text = reader2["Temperature"].ToString();
                lblMajorSymptoms.Text = reader2["MajorSymptoms"].ToString();
            }
            else
            {
                lblerror.Visible = true;
                lblerror.Text = "No Vitals Data found";
            }
            reader2.Close();
            con2.Close();
        }

        protected void btnEnterVitals_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            SqlCommand inscmd = new SqlCommand();
            inscmd.Connection = con1;
            con1.Open();

            //inserting Value to database
            inscmd.CommandText = "INSERT INTO PatientHistory (PatientId, CreatedBy, CreatedDate, Weight, Height, BP, Temperature, MajorSymptoms, AppointmentId) VALUES ('" + txtpatientId.Text + "', 'Nurse','" + DateTime.Now + "',  '" + txtWeight.Text + "' , '" + txtHeight.Text + "', '" + txtBP.Text + "', '" + txtTemperature.Text + "', '" + txtSymptoms.Text + "','" + txtAppointmentId.Text + "')";


            try
            {
                inscmd.ExecuteNonQuery();
                con1.Close();
                lblerror.Visible = true;
                lblerror.Text = "Vitals Entered Successfully";
                lblerror.BackColor = Color.Green;
            }
            catch (Exception)
            {
                lblerror.Visible = true;
                lblerror.Text = "Something bad happened... Please try again later!!";
            }
        }
    }
}