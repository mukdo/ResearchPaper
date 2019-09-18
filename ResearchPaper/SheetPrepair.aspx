<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SheetPrepair.aspx.cs" Inherits="ResearchPaper.SheetPrepair" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div>
        <table>
            <tr>
                <td>
         <asp:Label ID="Label1" runat="server" CssClass="text" Text="Department : "></asp:Label>
                </td>
         <td> <asp:TextBox ID="TextBox1" placeholder=" Enter the department" title="Example: Software Engineering" CssClass="textbox" runat="server"></asp:TextBox>  </td>
            </tr>
            <tr>

     <td> <asp:Label ID="Label2" CssClass="text" runat="server" Text="Date : "></asp:Label> </td>
       <td> <asp:TextBox ID="TextBox2" placeholder=" mm/dd/yyyy or dd month,yyyy" title="please use formate mm/dd/yyyy or day month,year" CssClass="textbox" runat="server"></asp:TextBox> <br /> </td>
            </tr>

            <tr>
                <td>
         <asp:Label ID="Label3" CssClass="text" runat="server" Text="Quarter : "></asp:Label>
                </td>
         <td> <asp:TextBox ID="TextBox3" title="example : First Quater (January - April) 2019" CssClass="textbox" placeholder=" Quater name (month-month) year" runat="server"></asp:TextBox>  </td>
            </tr>
            <tr>

     <td> <asp:Label ID="Label4" runat="server" CssClass="text" Text="Research Coordinator : "></asp:Label> </td>
       <td> <asp:TextBox ID="TextBox4"  placeholder=" Enter Research Coordinator Name" CssClass="textbox" runat="server"></asp:TextBox> <br /> </td>
           </tr>
            <tr>

     <td> <asp:Label ID="Label5" runat="server" CssClass="text" Text=" Research Progress : "></asp:Label> </td>
       <td> <asp:TextBox ID="TextBox5" title="Example: SEPTEMBER-DECEMBER 2019" placeholder=" Month - Month Year"  CssClass="textbox" runat="server"></asp:TextBox> <br /> </td>
           </tr>
       </table>
    </div>
    
        <!--From Date -->

    <div>
                <asp:Label ID="Label6" runat="server" CssClass="text" Text="Select Starting Date:"></asp:Label>

        <table class="marginLeft10">
            <tr>
                <td>Day
                </td>
                <td>Month</td>
                <td style="width: 70px">Year </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="70px">
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
                    </asp:DropDownList></td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="01">January</asp:ListItem>
                        <asp:ListItem Value="02">February</asp:ListItem>
                        <asp:ListItem Value="03">March</asp:ListItem>
                        <asp:ListItem Value="04">April</asp:ListItem>
                        <asp:ListItem Value="05">May</asp:ListItem>
                        <asp:ListItem Value="06">June</asp:ListItem>
                        <asp:ListItem Value="07">July</asp:ListItem>
                        <asp:ListItem Value="08">August</asp:ListItem>
                        <asp:ListItem Value="09">September</asp:ListItem>
                        <asp:ListItem Value="10">October</asp:ListItem>
                        <asp:ListItem Value="11">November</asp:ListItem>
                        <asp:ListItem Value="12">December</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 90px">
                    <asp:DropDownList ID="year_DropDownList" runat="server" Height="22px" Width="74px">

                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                        <asp:ListItem>2021</asp:ListItem>
                        <asp:ListItem>2022</asp:ListItem>
                        <asp:ListItem>2023</asp:ListItem>
                        <asp:ListItem>2024</asp:ListItem>
                        <asp:ListItem>2025</asp:ListItem>
                        <asp:ListItem>2026</asp:ListItem>
                        <asp:ListItem>2027</asp:ListItem>
                        <asp:ListItem>2028</asp:ListItem>
                        <asp:ListItem>2029</asp:ListItem>
                        <asp:ListItem>2030</asp:ListItem>
                        <asp:ListItem>2031</asp:ListItem>
                        <asp:ListItem>2032</asp:ListItem>
                        <asp:ListItem>2033</asp:ListItem>
                        <asp:ListItem>2034</asp:ListItem>
                        <asp:ListItem>2034</asp:ListItem>
                        <asp:ListItem>2035</asp:ListItem>
                        <asp:ListItem>2036</asp:ListItem>
                        <asp:ListItem>2037</asp:ListItem>
                        <asp:ListItem>2038</asp:ListItem>
                        <asp:ListItem>2039</asp:ListItem>
                        <asp:ListItem>2040</asp:ListItem>

                    </asp:DropDownList></td>
            </tr>
        </table>
    </div>

    <!--To Date -->
    <div>
        <br />
        <asp:Label ID="Label8" runat="server" CssClass="text" Text="Select End Date: "></asp:Label>
        
                      <table class="marginLeft10">
                          <tr>
                              <td>Day
                              </td>
                              <td>Month</td>
                              <td style="width: 70px">Year </td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:DropDownList ID="date_DropDownList" runat="server" Width="70px">
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
                                  </asp:DropDownList></td>
                              <td>
                                  <asp:DropDownList ID="month_DropDownList_to" runat="server">
                                      <asp:ListItem Value="01">January</asp:ListItem>
                                      <asp:ListItem Value="02">February</asp:ListItem>
                                      <asp:ListItem Value="03">March</asp:ListItem>
                                      <asp:ListItem Value="04">April</asp:ListItem>
                                      <asp:ListItem Value="05">May</asp:ListItem>
                                      <asp:ListItem Value="06">June</asp:ListItem>
                                      <asp:ListItem Value="07">July</asp:ListItem>
                                      <asp:ListItem Value="08">August</asp:ListItem>
                                      <asp:ListItem Value="09">September</asp:ListItem>
                                      <asp:ListItem Value="10">October</asp:ListItem>
                                      <asp:ListItem Value="11">November</asp:ListItem>
                                      <asp:ListItem Value="12">December</asp:ListItem>
                                  </asp:DropDownList></td>
                              <td style="width: 90px">
                                  <asp:DropDownList ID="year_DropDownList_to" runat="server" Height="22px" Width="74px">

                                      <asp:ListItem>2010</asp:ListItem>
                                      <asp:ListItem>2011</asp:ListItem>
                                      <asp:ListItem>2012</asp:ListItem>
                                      <asp:ListItem>2013</asp:ListItem>
                                      <asp:ListItem>2013</asp:ListItem>
                                      <asp:ListItem>2014</asp:ListItem>
                                      <asp:ListItem>2015</asp:ListItem>
                                      <asp:ListItem>2016</asp:ListItem>
                                      <asp:ListItem>2017</asp:ListItem>
                                      <asp:ListItem>2018</asp:ListItem>
                                      <asp:ListItem>2019</asp:ListItem>
                                      <asp:ListItem>2020</asp:ListItem>
                                      <asp:ListItem>2021</asp:ListItem>
                                      <asp:ListItem>2022</asp:ListItem>
                                      <asp:ListItem>2023</asp:ListItem>
                                      <asp:ListItem>2024</asp:ListItem>
                                      <asp:ListItem>2025</asp:ListItem>
                                      <asp:ListItem>2026</asp:ListItem>
                                      <asp:ListItem>2027</asp:ListItem>
                                      <asp:ListItem>2028</asp:ListItem>
                                      <asp:ListItem>2029</asp:ListItem>
                                      <asp:ListItem>2030</asp:ListItem>
                                      <asp:ListItem>2031</asp:ListItem>
                                      <asp:ListItem>2032</asp:ListItem>
                                      <asp:ListItem>2033</asp:ListItem>
                                      <asp:ListItem>2034</asp:ListItem>
                                      <asp:ListItem>2034</asp:ListItem>
                                      <asp:ListItem>2035</asp:ListItem>
                                      <asp:ListItem>2036</asp:ListItem>
                                      <asp:ListItem>2037</asp:ListItem>
                                      <asp:ListItem>2038</asp:ListItem>
                                      <asp:ListItem>2039</asp:ListItem>
                                      <asp:ListItem>2040</asp:ListItem>

                                  </asp:DropDownList>

                              </td>
                          </tr>
                          </table>
                  
        
                        <asp:Button ID="SubmitBtn" CssClass="button" runat="server" Text="Submit" OnClick="SubmitBtn_Click" />

    </div>
</asp:Content>
