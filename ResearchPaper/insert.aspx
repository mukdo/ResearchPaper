<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="insert.aspx.cs" Inherits="ResearchPaper.insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .round{
         border-style: none;
         border-color: inherit;
         border-width: 2px;
         margin-top:10px;
          border-radius: 15px;
          padding: 15px; 
          box-shadow: 1px 1px 3px #00BFFF;
        }
  

     .input {
  width: 130px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 10px;
  font-size: 16px;
  background-color: white;
  background-image: url('searchicon.png');
  background-position: 10px 10px; 
  background-repeat: no-repeat;
  padding: 6px 10px 6px 20px;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
}

input:focus {
  width: 100%;
}

.GridView1{
    width: 90%;
    margin: 0 auto;
}
 </style>

      <table>
       <tr>
           <td>
               <asp:Label ID="Label1" runat="server" CssClass="text" Text="Autor Names: "></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="Author_TextBox" placeholder="Enter Author's Name" CssClass="round" runat="server"></asp:TextBox>
           </td>
       </tr>
          
          <tr>
           <td>
               <asp:Label ID="Label2" runat="server" CssClass="text"  Text="Research Title :  "></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="research_tilte_TextBox" placeholder="Enter Research Title here"  CssClass="round"  runat="server"></asp:TextBox>
           </td>
       </tr>

              <tr>
           <td>
               <asp:Label ID="Label8" runat="server" CssClass="text"  Text="Detailes :  "></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="detaies_TextBox"  placeholder="PLease enter Detaies in APA style" CssClass="round" runat="server" Height="120px" TextMode="MultiLine" Width="341px"></asp:TextBox>
           </td>
       </tr>
               
          <tr>
           <td>
               <asp:Label ID="Label3" runat="server" CssClass="text"  Text="Types :  "></asp:Label>
           </td>
           <td>
               <asp:DropDownList ID="types_DropDownList" runat="server" CssClass="shadow" Height="25px" Width="200px">
                   <asp:ListItem Value=" ">-Select a item-</asp:ListItem>
                   <asp:ListItem>Journal</asp:ListItem>
                   <asp:ListItem>Conference</asp:ListItem>
                   <asp:ListItem Value="BookChapter">Book Chapter</asp:ListItem>
               </asp:DropDownList>
           </td>
       </tr>

                <tr>
           <td>
               <asp:Label ID="Label4" runat="server" CssClass="text"  Text="Publicaton date :  "></asp:Label>
           </td>
           <td>
               
               <asp:Calendar ID="Calendar1" CssClass="shadow" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="180px" Width="200px" ToolTip="Select Publication Date" BorderWidth="1px" ShowGridLines="True">
                   <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                   <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                   <OtherMonthDayStyle ForeColor="#CC9966" />
                   <SelectedDayStyle BackColor="#333333" BorderColor="Red" Font-Bold="True" />
                   <SelectorStyle BackColor="#FFCC66" />
                   <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                   <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
               </asp:Calendar>
           </td>
       </tr>
          <tr>
              <td>
                  <asp:Label ID="Label5" runat="server" CssClass="text" Text="Index : "></asp:Label>
              </td>
            <td>
                <asp:DropDownList ID="index_DropDownList" CssClass="shadow" Height="25px" Width="202px" runat="server">
                    <asp:ListItem Value=" ">-Select a Item-</asp:ListItem>
                    <asp:ListItem>Scopus</asp:ListItem>
                    <asp:ListItem Value="Non-Scopus">Non Scopus</asp:ListItem>
                </asp:DropDownList>
           </td>
          </tr>

         
          <tr>
              <td>
                  <asp:Label ID="Label6" runat="server" CssClass="text" Text="Semister : "></asp:Label>
              </td>
            <td>
                <asp:DropDownList ID="semister_DropDownList" CssClass="shadow" Height="25px" Width="200px" runat="server">
                    <asp:ListItem Value=" ">-Select a Item</asp:ListItem>
                    <asp:ListItem>Summer</asp:ListItem>
                    <asp:ListItem>Fall</asp:ListItem>
                    <asp:ListItem>Spring</asp:ListItem>
                </asp:DropDownList>
           </td>
          </tr>

                  <tr>
              <td>
                  <asp:Label ID="Label7" runat="server" CssClass="text" Text="Year : "></asp:Label>
              </td>
            <td>
                <asp:DropDownList ID="year_DropDownList" CssClass="shadow" Width="205px" runat="server">
                    <asp:ListItem Value=" ">-Select a Item-</asp:ListItem>
                    
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
  <tr> 
      <td>
          <asp:Button ID="insert_Button" CssClass="shadow" runat="server" Text="Insert" OnClick="insert_Button_Click" />
      </td>
  </tr>
      
            </table>
    <table>
           <tr>
               <td>
                   &nbsp;</td>
             <td>
                 <asp:TextBox ID="TextBox9" CssClass="input" runat="server"></asp:TextBox>
             </td>
               <td>
                   <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
               </td>

         </tr>
        
    </table>
    <table class="GridView1">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField />
                        <asp:TemplateField HeaderText="Author List">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("AuthorList") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("AuthorList") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Research Tiltle">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ResearchTiltle") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("ResearchTiltle") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Types">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Types") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Types") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Publication Date">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("PubDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("PubDate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Indexer">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Indexer") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Indexer") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Semister">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Semister") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Semister") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Year">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Year") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Year") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Publication Details">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PubDetails") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("PubDetails") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
