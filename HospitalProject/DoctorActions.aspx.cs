using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalProject
{
    public partial class DoctorActions : System.Web.UI.Page
    {
        string DoctorId;
        protected void Page_Load(object sender, EventArgs e)
        {
            DoctorId = Request.QueryString["DoctorId"];
        }

        protected void btnTreatmentNotes_Click(object sender, EventArgs e)
        {
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            SqlCommand inscmd = new SqlCommand();
            inscmd.Connection = con1;
            con1.Open();

            //inserting Value to database
            inscmd.CommandText = "Update PatientHistory set Medication= '" + txtMedication.Text + "', TreatmentPlan='" + txtTreatment.Text + "' where PatientId='" + txtpatientId.Text + "' and AppointmentId= '" + txtAppointmentId.Text + "'";


            try
            {
                inscmd.ExecuteNonQuery();
                con1.Close();
                lblerror.Visible = true;
                lblerror.Text = "Patient Medication Entered Successfully";
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

            string sqlstring = "select PatientId, Medication, TreatmentPlan, Weight, Height, BP, Temperature, MajorSymptoms from PatientHistory where PatientId='" + txtpatientId.Text + "' and AppointmentId='" + txtAppointmentId.Text + "'";
            SqlCommand cmd2 = new SqlCommand(sqlstring, con2);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);

            DataSet ds = new DataSet();

            da.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                lblerror.Visible = true;
                lblerror.Text = "Get Vitals check done at Nursing station and get back";
            }

            GridView1.DataSource = ds.Tables[0];


            GridView1.DataBind();
            con2.Close();
        }
    }
}