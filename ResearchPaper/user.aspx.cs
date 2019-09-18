using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResearchPaper
{
    public partial class user : System.Web.UI.Page
    {
        databaseHandelar da = new databaseHandelar();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadgrid();
        }
       public void loadgrid()
        {
           
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
                string query = @"select *
             from input_paper 
             where AuthorList LIKE '%" + TextBox9.Text + "%'OR Types LIKE '%" + TextBox9.Text + "%' OR Semister LIKE '%" + TextBox9.Text + "%' OR Year LIKE '%" + TextBox9.Text + "%'  OR Indexer LIKE '%" + TextBox9.Text + "%' ";
            GridView1.DataSource = da.GetDataTable(query);
            GridView1.DataBind();
            TextBox9.Text = "";
        }
    }
}