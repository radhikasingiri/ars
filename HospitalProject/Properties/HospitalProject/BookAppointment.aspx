<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="BookAppointment.aspx.cs" Inherits="HospitalProject.BookAppointment" %>
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
        </table>

        <table class="style1">
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Select Doctor</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px; height: 29px;"></td>
                <td style="height: 29px">
                    <asp:DropDownList ID="ddlDoctorName" runat="server" Width="200px" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserId">                        
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [UserName],[UserId] FROM [Users] WHERE ([roleId] = @roleId)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="roleId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Group2"
                        ControlToValidate="ddlDoctorName" CssClass="style4"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Select Date</td>
            </tr>
            
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddlmonth" runat="server"
                        Style="font-family: Calibri; font-size: medium">
                        <asp:ListItem Selected="True" Value=" ">Month</asp:ListItem>
                        <asp:ListItem>January</asp:ListItem>
                        <asp:ListItem>February</asp:ListItem>
                        <asp:ListItem>March</asp:ListItem>
                        <asp:ListItem>April</asp:ListItem>
                        <asp:ListItem>May</asp:ListItem>
                        <asp:ListItem>June</asp:ListItem>
                        <asp:ListItem>July</asp:ListItem>
                        <asp:ListItem>August</asp:ListItem>
                        <asp:ListItem>September</asp:ListItem>
                        <asp:ListItem>October</asp:ListItem>
                        <asp:ListItem>November</asp:ListItem>
                        <asp:ListItem>December</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlday" runat="server"
                        Style="font-family: Calibri; font-size: medium">
                        <asp:ListItem Selected="True" Value=" ">Day</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlyear" runat="server"
                        Style="font-family: Calibri; font-size: medium">
                        <asp:ListItem Selected="True" Value=" ">Year</asp:ListItem>                        
                        <asp:ListItem>2019</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="Group2"
                        ControlToValidate="ddlmonth" CssClass="style4"
                        ErrorMessage="Select Month"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="Group2"
                        ControlToValidate="ddlday" ErrorMessage="Select Day"
                        Style="font-family: Calibri; color: #FF0000"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="Group2"
                        ControlToValidate="ddlyear" ErrorMessage="Select Year"
                        Style="font-family: Calibri; color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Select Time</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px; height: 29px;"></td>
                <td style="height: 29px">
                    <asp:TextBox ID="txtTime" runat="server" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="Group2"
                        ControlToValidate="txtTime" CssClass="style4"
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
                    <asp:Button ID="btnBookAppointment" runat="server" ValidationGroup="Group2" Text="Book Appointment" BackColor="#3366FF" BorderStyle="Groove" Font-Bold="True" Font-Size="XX-Large" BorderColor="#00CC00" ForeColor="#FFFFCC" OnClick="btnBookAppointment_Click"/>
                </td>
            </tr>

        </table>
    </div>
</asp:Content>

