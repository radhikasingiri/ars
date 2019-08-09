using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.UI;

namespace HospitalProject
{
    public partial class PatientRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
            con.Open();
            //To check username alredy exist or not

            string cmdstr = "Select count(*) from Users where UserName='" + txtusername.Text + "' and roleId=3";
            SqlCommand userexist = new SqlCommand(cmdstr, con);
            int temp = Convert.ToInt32(userexist.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                lblerror.Visible = true;
                lblerror.Text = "User name already exist!!!";

            }


            else
            {
                SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
                SqlCommand inscmd = new SqlCommand();
                inscmd.Connection = con1;
                con1.Open();

                //inserting Value to database
                inscmd.CommandText = "INSERT INTO Users (roleId, UserName, Password, DepartmentId, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate) VALUES (3, '" + txtusername.Text + "','" + txtpassword.Text + "',  null , 'Admin', '" + DateTime.Now + "', null, null)";


                try
                {
                    inscmd.ExecuteNonQuery();
                    con1.Close();
                }
                catch (Exception)
                {
                    lblerror.Visible = true;
                    lblerror.Text = "Something bad happened... Please try again later!!";
                }

                SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
                con2.Open();
                //To check username alredy exist or not

                string cmdstr2 = "Select UserID from Users where UserName='" + txtusername.Text + "' and roleId=3";
                SqlCommand userid = new SqlCommand(cmdstr2, con2);
                int temp2 = Convert.ToInt32(userid.ExecuteScalar().ToString());
                con2.Close();
                if (temp2 == 0)
                {
                    lblerror.Visible = true;
                    lblerror.Text = "Something bad happened... Please try again later!!";

                }
                else
                {
                    SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
                    SqlCommand inscmd2 = new SqlCommand();
                    inscmd2.Connection = con3;
                    con3.Open();

                    //inserting Value to database                    
                    inscmd2.CommandText = "INSERT INTO Patients (PatientId, PatientName, Email, PhoneNo, Address, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, DateOfBirth, Gender) VALUES (" + temp2 + ", '" + txtfullname.Text + "','" + txtemail.Text + "','" + txtphonenum.Text + "','" + txtaddress.Text + "', 'Admin', '" + DateTime.Now + "', null, null, '" + ddlmonth.SelectedItem.ToString() + " " + ddlday.SelectedItem.ToString() + "," + ddlyear.SelectedItem.ToString() + "', '" + ddlgender.SelectedItem.ToString() + "')";


                    try
                    {
                        inscmd2.ExecuteNonQuery();
                        con3.Close();
                        //Response.Redirect("RegistrationConfirm.aspx");
                        lblerror.Visible = true;                        
                        lblerror.BackColor = Color.Green;
                        lblerror.Text = "Please Note down the details: Patientid: '" + temp2 + "', UserName: '" + txtusername.Text + "', Password: '" + txtpassword.Text + "'";
                    }
                    catch (Exception)
                    {
                        lblerror.Visible = true;
                        lblerror.Text = "Something bad happened... Please try again later!!";
                    }
                }

            }

        }
    }
}