<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="DownloadReports.aspx.cs" Inherits="HospitalProject.DownloadReports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="rpanelr" style="margin: 20px 100px 70px 240px; height: auto;">


        <table class="style1">
             <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    &nbsp;</td>
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
                <td style="height: 29px">
                    <asp:Button ID="btnShowFiles" runat="server" Text="Show Files to Download" ValidationGroup="Group1" BackColor="#3366FF" BorderStyle="Groove" Font-Bold="True" Font-Size="Small" BorderColor="#00CC00" ForeColor="#FFFFCC" OnClick="btnShowFiles_Click" /></td>
            </tr>

            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td style="height: 29px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">                        
                        <Columns>
                            <asp:TemplateField HeaderText="List of Files">
                                <ItemTemplate>                                    
                                    <asp:LinkButton ID="lnkDownload" Text = '<%# Eval("Value") %>' CommandArgument = '<%# Eval("Value") %>' runat="server" OnClick="lnkDownload_Click" ></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
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
                <td style="text-align: center" colspan="2">
                    <asp:Label ID="lblerror" runat="server"
                        Style="font-family: Calibri; color: #FF0000; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; font-size: large; vertical-align: middle; "
                        CssClass="style7"></asp:Label>
                </td>
            </tr>



            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3"></td>
            </tr>


        </table>
    </div>
</asp:Content>
