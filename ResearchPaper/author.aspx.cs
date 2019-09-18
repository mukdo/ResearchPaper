using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResearchPaper
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        databaseHandelar da = new databaseHandelar();
        protected void Page_Load(object sender, EventArgs e)
        {

            loadgrid();
        }

        public void loadgrid()
        {
            string query = @"select * FROM authorInfo";
            GridView1.DataSource = da.GetDataTable(query);
            GridView1.DataBind();
        }

        protected void submit_Button_Click(object sender, EventArgs e)
        {
            string query = @"insert into authorInfo 
                               values('"+ name_TextBox.Text+ "','"+designation_TextBox.Text+"','"+phone_TextBox.Text+"')";
            
            if (da.insert(query)==1)
            {
                Response.Write("<script LANGUAGE ='JavaScript'>alert('Record Inserted')</script>)");

            }
           else
            {
                Response.Write("<script LANGUAGE ='JavaScript'>alert('Sorry Record Not Insert')</script>)");

            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblId = (Label)GridView1.Rows[e.RowIndex].FindControl("Label3");
            string query = @"delete from authorInfo
                                where name ='" + lblId.Text + "'";
            if (da.insert(query) == 1)
            {
                loadgrid();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}