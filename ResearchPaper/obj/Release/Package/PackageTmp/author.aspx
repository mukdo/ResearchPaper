<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="author.aspx.cs" Inherits="ResearchPaper.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
     .round{
         border-style: none;
         border-color: inherit;
         border-width: 2px;
         margin-top:10px;
          border-radius: 15px;
          padding: 15px; 
          box-shadow: 1px 1px 3px #00ff21 ; 
     }
     .text{
        font-weight:bold;
          text-shadow: 1px 1px 3px #00ff21;
         font-size:medium;
     }
     .shadow{
              margin-top:10px;
         box-shadow:1px 1px 3px #00ff21; 
     }
 </style>

<style>
.h1{
    position:absolute;
    top:10%;
    left:20%;
    transform:translate(-50% ,-50%);

    color:#ff0000;
    -webkit-text-stroke:1px #00ff21;
    
}

.h1::before{
    content:attr(data-content);
    position:absolute;
    background:linear-gradient(90deg,#ff0000 #ffd800 #00ff21 #00ffff #0026ff);
    background-size:200%;
    overflow:hidden;
    transition:width 2s;
    animation:animate 4s linear infinite;
    width:0;
  
}
.table2{
    position:absolute;
    top:15%;
    left:20px;
}
</style>
  <div class="h1">
      <table>
          <tr>
              <th>
                  <h2 data-content="Text">Author Information</h2>
              </th>
          </tr>
      </table>
  </div>
    <div >
       <table class="table2">
        <tr>
           <td>
               <asp:Label ID="Label1" runat="server" CssClass="text" Text="Autor Names: "></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="name_TextBox" placeholder="Enter Author Name" CssClass="round" runat="server"></asp:TextBox>
           </td>
       </tr>
                 
             <tr>
           <td>
               <asp:Label ID="Label3" runat="server" CssClass="text" Text="Designation: "></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="designation_TextBox" placeholder="Enter Author designation" CssClass="round" runat="server"></asp:TextBox>
           </td>
       </tr>
                   <tr>
           <td>
               <asp:Label ID="Label4" runat="server" CssClass="text" Text="Phone number: "></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="phone_TextBox" placeholder="Enter Author Phone Number" CssClass="round" runat="server"></asp:TextBox>
           </td>
       </tr>
           <tr>
               <td>
               <asp:Button ID="submit_Button" CssClass="shadow" runat="server" Text="SAVE" OnClick="submit_Button_Click" />
                   </td>
                   </tr>
        
            <tr>
                <td>

               
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                       <AlternatingRowStyle BackColor="White" />
                       <Columns>
                           <asp:TemplateField HeaderText="Name">
                               <EditItemTemplate>
                                   <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:Label ID="Label3" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Designation">
                               <EditItemTemplate>
                                   <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("designation") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:Label ID="Label2" runat="server" Text='<%# Bind("designation") %>'></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:TemplateField HeaderText="Mobile Number">
                               <EditItemTemplate>
                                   <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("phnno") %>'></asp:TextBox>
                               </EditItemTemplate>
                               <ItemTemplate>
                                   <asp:Label ID="Label1" runat="server" Text='<%# Bind("phnno") %>'></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:CommandField ShowDeleteButton="True" />
                       </Columns>
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
