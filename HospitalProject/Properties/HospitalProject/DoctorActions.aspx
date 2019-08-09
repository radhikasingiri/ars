<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DoctorActions.aspx.cs" Inherits="HospitalProject.DoctorActions" %>
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
                <td style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    &nbsp;</td>
            </tr>
            </table>

        <table class="style1">
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Enter Treatment Plan</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px; height: 29px;"></td>
                <td style="height: 29px">
                    <asp:TextBox ID="txtTreatment" runat="server" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Group2"
                        ControlToValidate="txtTreatment" CssClass="style4"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Enter Medication</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px; height: 29px;"></td>
                <td style="height: 29px">
                    <asp:TextBox ID="txtMedication" runat="server" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px; height: 29px;">&nbsp;</td>
                <td style="height: 29px">

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="Group2"
                        ControlToValidate="txtMedication" CssClass="style4"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator></td>
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
                    <asp:Button ID="btnTreatmentNotes" runat="server" ValidationGroup="Group2" Text="Enter Treatment Notes" BackColor="#3366FF" BorderStyle="Groove" Font-Bold="True" Font-Size="XX-Large" BorderColor="#00CC00" ForeColor="#FFFFCC" OnClick="btnTreatmentNotes_Click" />
                </td>
            </tr>

        </table>

    </div>
</asp:Content>

