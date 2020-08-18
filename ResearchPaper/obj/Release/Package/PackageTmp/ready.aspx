<%@ Page Title="Ready" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ready.aspx.cs" Inherits="ResearchPaper.ready" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <div class="firstdiv">
          <asp:Image ID="Image1" runat="server" Height="120px" ImageUrl="~/Image/diu.png" Width="150px" />
        <br />
    
        <P>DAFFODIL INTERNATIONAL UNIVERSITY</P>
        <P>DIVISION OF RESEARCH</P>
        <asp:Label ID="testc" runat="server" Text="Label"></asp:Label>
        <table style="margin:0 auto;">
            <tr>
                <td>
                    RESEARCH PROGRESS: 
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>
        </table>
    </div>

      

      <div>
        <table class="redytable">
            <tr>
                <td>
         <asp:Label ID="Label1" runat="server" Text="Department : " ></asp:Label>
                </td>
         <td> <asp:Label ID="department" runat="server" Text="Something Wrong"></asp:Label>  </td>
            </tr>
            <tr>

     <td> <asp:Label ID="Label2" runat="server" Text="Date : "></asp:Label> </td>
     <td> <asp:Label ID="date1" runat="server" Text="Something Wrong"></asp:Label>  </td>
            </tr>
            
            <tr>
                <td>
         <asp:Label ID="Label3" runat="server" Text="Quarter : "></asp:Label>
                </td>
                  <td> <asp:Label ID="quater" runat="server" Text="Something Wrong"></asp:Label>  </td>
 </tr>
            <tr>

     <td> <asp:Label ID="Label4" runat="server" Text="Research Coordinator : "></asp:Label> </td>
                <td> <asp:Label ID="researchco" runat="server" Text="Something Wrong"></asp:Label>  </td>
  </tr>
            </table>
          </div>
    <div>
        <!--   Counting Table-->
        <p class="firstdiv"> Publication Overview</p>
        <table class="redytable">
            
            <!--  Journal Count-->
            <tr>
                <td> <asp:Label ID="Label8" runat="server" Text="Scopus indexed journals: "></asp:Label></td>
                <td> <asp:Label ID="count1" runat="server" Text=""></asp:Label></td>
           </tr>
            <tr>
                <td> <asp:Label ID="Label12" runat="server" Text="Non-Scopus journals: "></asp:Label></td>
                <td> <asp:Label ID="count5" runat="server" Text=""></asp:Label></td>
           </tr>
            <!--  Conference Count-->
             <tr>
                <td> <asp:Label ID="Label13" runat="server" Text="Scopus indexed Conference: "></asp:Label></td>
                <td> <asp:Label ID="count" runat="server" Text=""></asp:Label></td>
           </tr>
            <tr>
                <td> <asp:Label ID="Label9" runat="server" Text="Non-Scopus Conference: "></asp:Label></td>
                <td> <asp:Label ID="count6" runat="server" Text=""></asp:Label></td>
           </tr>
            <!--  Book Chapter Count-->
             <tr>
                <td> <asp:Label ID="Label10" runat="server" Text="Scopus indexed Books Chapter: "></asp:Label></td>
                <td> <asp:Label ID="count2" runat="server" Text=""></asp:Label></td>
           </tr>
             <tr>
                <td> <asp:Label ID="Label11" runat="server" Text="Non-Scopus Books Chapter: "></asp:Label></td>
                <td> <asp:Label ID="count4" runat="server" Text=""></asp:Label></td>
           </tr>

        </table>
    </div>

    <div class="width85">
       
        <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField HeaderText="Authors Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("AuthorList") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("AuthorList") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Research Tiltle">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ResearchTiltle") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ResearchTiltle") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Details">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PubDetails") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("PubDetails") %>'></asp:Label>
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
                <asp:TemplateField HeaderText="Indexer">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Indexer") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Indexer") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Publication Date">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("PubDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("PubDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
      
    </div>
</asp:Content>

