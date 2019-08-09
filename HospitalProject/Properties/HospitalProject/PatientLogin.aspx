<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PatientLogin.aspx.cs" Inherits="HospitalProject.PatientLogin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="rpanelr" style="margin: 20px 100px 70px 240px; height: auto;">
        <table class="style1" style="height: auto; width: 500px;">
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3" style="width: 25px">&nbsp;</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3" style="width: 25px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; color: #0000FF; font-size: large; vertical-align: middle; text-decoration: underline;">PATIENT LOGIN</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3" style="width: 25px">&nbsp;</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Username</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtusername" runat="server" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="txtusername" CssClass="style4"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Password</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="txtpassword" CssClass="style4"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td style="text-align: center">
                    <asp:ImageButton ID="ImageButton1" runat="server"
                        ImageUrl="~/images/login-button.png"
                        Height="90px" Width="350px" OnClick="ImageButton1_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
