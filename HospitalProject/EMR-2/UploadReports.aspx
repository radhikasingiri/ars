<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="UploadReports.aspx.cs" Inherits="HospitalProject.UploadReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="rpanelr" style="margin: 20px 100px 70px 240px; height: auto;">


        <table class="style1">
             <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Enter PatientId</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px; height: 29px;"></td>
                <td style="height: 29px">
                    <asp:TextBox ID="txtpatientId" runat="server" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="Group1"
                        ControlToValidate="txtpatientId" CssClass="style4"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Enter AppointmentId</td>
            </tr>

            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td style="height: 29px">
                    <asp:TextBox ID="txtAppointmentId" runat="server" Width="310px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td style="height: 29px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="Group1"
                        ControlToValidate="txtAppointmentId" CssClass="style4"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Browse File</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px; height: 29px;"></td>
                <td style="height: 29px">
                    <asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="2">
                    <asp:Label ID="lblerror" runat="server"
                        Style="font-family: Calibri; color: #FF0000; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; font-size: large; vertical-align: middle; "
                        CssClass="style7"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:Button ID="btnUploadReports" runat="server" Text="Upload Reports for Patient" ValidationGroup="Group1" BackColor="#3366FF" BorderStyle="Groove" Font-Bold="True" Font-Size="Small" BorderColor="#00CC00" ForeColor="#FFFFCC" OnClick="btnUploadReports_Click" /></td>
            </tr>



            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3"></td>
            </tr>


        </table>
    </div>
</asp:Content>
