<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="EnterVitals.aspx.cs" Inherits="HospitalProject.EnterVitals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="rpanelr" style="margin: 20px 100px 70px 240px; height: auto; width: auto">

        <table class="style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>


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
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="Group1"
                        ControlToValidate="txtAppointmentId" CssClass="style4"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator>
                </td>
            </tr>

        </table>
        <table class="style1">
            <tr>
                <td style="text-align: center">
                    <asp:ImageButton ID="ImageButton1" runat="server"
                        ImageUrl="~/images/getdetails.png" ValidationGroup="Group1"
                        Height="90px" Width="350px" OnClick="ImageButton1_Click" />
                </td>
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
                <td>Weight : 
                    <asp:Label ID="lblWeight" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>Height : 
                    <asp:Label ID="lblHeight" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>BP : 
                    <asp:Label ID="lblBP" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>Temperature : 
                    <asp:Label ID="lblTemperature" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td>Major Symptoms : 
                    <asp:Label ID="lblMajorSymptoms" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp;</td>
            </tr>
        </table>

        <table class="style1">
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Enter Weight</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px; height: 29px;"></td>
                <td style="height: 29px">
                    <asp:TextBox ID="txtWeight" runat="server" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Group2"
                        ControlToValidate="txtWeight" CssClass="style4"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Enter Height</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px; height: 29px;"></td>
                <td style="height: 29px">
                    <asp:TextBox ID="txtHeight" runat="server" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="Group2"
                        ControlToValidate="txtHeight" CssClass="style4"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Enter Blood Pressure</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px; height: 29px;"></td>
                <td style="height: 29px">
                    <asp:TextBox ID="txtBP" runat="server" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="Group2"
                        ControlToValidate="txtBP" CssClass="style4"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Enter Temperature</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px; height: 29px;"></td>
                <td style="height: 29px">
                    <asp:TextBox ID="txtTemperature" runat="server" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="Group2"
                        ControlToValidate="txtTemperature" CssClass="style4"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Major Symptoms</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px; height: 29px;"></td>
                <td style="height: 29px">
                    <asp:TextBox ID="txtSymptoms" runat="server" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="Group2"
                        ControlToValidate="txtSymptoms" CssClass="style4"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td style="text-align: center" colspan="2">
                    <asp:Label ID="lblerror" runat="server"
                        Style="font-family: Calibri; color: #FF0000; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; font-size: large; vertical-align: middle; "  Visible="False"
                        CssClass="style7"></asp:Label>
                </td>
            </tr>

            <tr>
                <td style="text-align: center" colspan="2">
                    <asp:Button ID="btnEnterVitals" runat="server" ValidationGroup="Group2" Text="Enter Vitals" BackColor="#3366FF" BorderStyle="Groove" Font-Bold="True" Font-Size="XX-Large" BorderColor="#00CC00" ForeColor="#FFFFCC" OnClick="btnEnterVitals_Click" />
                </td>
            </tr>

        </table>
    </div>
</asp:Content>
