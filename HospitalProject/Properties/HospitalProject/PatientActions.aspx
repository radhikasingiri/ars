<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PatientActions.aspx.cs" Inherits="HospitalProject.PatientActions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="rpanelr" style="margin: 20px 100px 70px 240px; height: auto;">
        <table class="style1">
            <tr>
                <td style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td>Patient Name : 
                    <asp:Label ID="lblPatientName" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>Gender : 
                    <asp:Label ID="lblGender" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>Email : 
                    <asp:Label ID="lblEmail" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>DateOfBirth : 
                    <asp:Label ID="lblDOB" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>PhoneNo : 
                    <asp:Label ID="lblPhonenum" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="btnBookAppointment" runat="server" Text="Book Appointment" BackColor="#3366FF" BorderStyle="Groove" Font-Bold="True" Font-Size="Large" BorderColor="#00CC00" ForeColor="#FFFFCC" OnClick="btnBookAppointment_Click" /></td>
            </tr>
            <tr>
                <td style="text-align: center"><asp:Button ID="btnShowAppointments" runat="server" Text="Show Appointments" BackColor="#3366FF" BorderStyle="Groove" Font-Bold="True" Font-Size="Large" BorderColor="#00CC00" ForeColor="#FFFFCC" OnClick="btnShowAppointments_Click" /></td>
            </tr>
            <tr>
                <td style="text-align: center"><asp:Button ID="btnPatientHistory" runat="server" Text="Patient History" BackColor="#3366FF" BorderStyle="Groove" Font-Bold="True" Font-Size="Large" BorderColor="#00CC00" ForeColor="#FFFFCC" OnClick="btnPatientHistory_Click" /></td>
            </tr>
            <tr>
                <td style="text-align: center"><asp:Button ID="btnDownloadReports" runat="server" Text="Download Reports" BackColor="#3366FF" BorderStyle="Groove" Font-Bold="True" Font-Size="Large" BorderColor="#00CC00" ForeColor="#FFFFCC" OnClick="btnDownloadReports_Click" /></td>
            </tr>
        </table>

    </div>
</asp:Content>
