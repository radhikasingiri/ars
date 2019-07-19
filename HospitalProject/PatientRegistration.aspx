<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="PatientRegistration.aspx.cs" Inherits="HospitalProject.PatientRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="rpanelr" style="margin: 20px 100px 70px 240px; height: auto; width: auto">

        <table class="style1">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="150px" ImageUrl="~/images/register_png_1161013.jpg.png"
                        Width="400px" />
                </td>
            </tr>
        </table>


        <table class="style1">
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Choose your Username</td>
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
                <td class="style3">Choose a Password</td>
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
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Confirm your password</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtconfirmpassword" runat="server" TextMode="Password"
                        Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="txtconfirmpassword" CssClass="style4"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server"
                        ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword"
                        ErrorMessage="Passwords does'nt match"
                        Style="font-family: Calibri; color: #FF0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Full name</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtfullname" runat="server" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ControlToValidate="txtfullname" CssClass="style4"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Email</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"
                        ControlToValidate="txtemail" CssClass="style4"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Date of birth</td>
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
                        <asp:ListItem>1950</asp:ListItem>
                        <asp:ListItem>1951</asp:ListItem>
                        <asp:ListItem>1952</asp:ListItem>
                        <asp:ListItem>1953</asp:ListItem>
                        <asp:ListItem>1954</asp:ListItem>
                        <asp:ListItem>1955</asp:ListItem>
                        <asp:ListItem>1956</asp:ListItem>
                        <asp:ListItem>1957</asp:ListItem>
                        <asp:ListItem>1958</asp:ListItem>
                        <asp:ListItem>1959</asp:ListItem>
                        <asp:ListItem>1960</asp:ListItem>
                        <asp:ListItem>1961</asp:ListItem>
                        <asp:ListItem>1962</asp:ListItem>
                        <asp:ListItem>1963</asp:ListItem>
                        <asp:ListItem>1964</asp:ListItem>
                        <asp:ListItem>1965</asp:ListItem>
                        <asp:ListItem>1966</asp:ListItem>
                        <asp:ListItem>1967</asp:ListItem>
                        <asp:ListItem>1968</asp:ListItem>
                        <asp:ListItem>1969</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ControlToValidate="ddlmonth" CssClass="style4"
                        ErrorMessage="Select Month"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                        ControlToValidate="ddlday" ErrorMessage="Select Day"
                        Style="font-family: Calibri; color: #FF0000"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                        ControlToValidate="ddlyear" ErrorMessage="Select Year"
                        Style="font-family: Calibri; color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Gender</td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddlgender" runat="server" Width="310px">
                        <asp:ListItem Selected="True" Value=" ">I am...</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem Value="Female"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ControlToValidate="ddlgender" CssClass="style4"
                        ErrorMessage="Select Gender"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="width: 25px">&nbsp;</td>
                <td class="style3">Address</td>
            </tr>
            <tr>
                <td class="style9" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server" Height="57px" TextMode="MultiLine"
                        Width="310px" CssClass="style7"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                        ControlToValidate="txtaddress" CssClass="style8"
                        ErrorMessage="You can't leave this empty"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style9" style="width: 25px">&nbsp;</td>
                <td class="style3">Phone No</td>
            </tr>
            <tr>
                <td class="style9" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtphonenum" runat="server" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9" style="width: 25px">&nbsp;</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                        ControlToValidate="txtphonenum" CssClass="style8"
                        ErrorMessage="You can't leave this empty"
                        Style="font-family: Calibri; color: #FF0000"></asp:RequiredFieldValidator>
                    <span class="style7">&nbsp;<br />
                    </span>


                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td style="text-align: center" colspan="2">
                    <asp:Label ID="lblerror" runat="server"
                        Style="font-family: Calibri; color: #FF0000; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; font-size: large; vertical-align: middle;" Visible="False"
                        CssClass="style7"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td style="text-align: center">
                    <asp:ImageButton ID="ImageButton1" runat="server"
                        ImageUrl="~/images/register-button-png-25.png"
                        Height="82px" Width="200px" OnClick="ImageButton1_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
