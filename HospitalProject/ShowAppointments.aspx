<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ShowAppointments.aspx.cs" Inherits="HospitalProject.ShowAppointments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="rpanelr" style="margin: 20px 100px 70px 240px; height: auto; width: auto">

        <table class="style1">
            <tr>
                <td style="text-align: center">
                    &nbsp;</td>
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
        </table>

        <table class="style1">
            
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True" CellPadding="4" ForeColor="#333333" GridLines="None">
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

        </table>
    </div>
</asp:Content>
