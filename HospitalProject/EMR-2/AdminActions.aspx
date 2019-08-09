<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AdminActions.aspx.cs" Inherits="HospitalProject.AdminActions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="rpanelr" style="margin: 20px 100px 70px 240px; height: auto;">
        <ul id="navigation">
            <li class="style6" style="font-family: Calibri"><a href="PatientRegistration.aspx">New Paient Registration</a></li>
            <li class="style6" style="font-family: Calibri"><a href="BookAppointment.aspx">Book Appointment</a></li>
            <li class="style6" style="font-family: Calibri"><a href="ShowAppointmentsforAdmin.aspx">Show Appointments and provide Appointment Id to Patient</a></li>
        </ul>
    </div>
</asp:Content>
