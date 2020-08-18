using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
namespace ResearchPaper
{
    public partial class insert : System.Web.UI.Page
    {
        databaseHandelar da = new databaseHandelar();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadgrid();
        }
        public void loadgrid()
        {
            string query = @"select * FROM input_paper";           
            GridView1.DataSource = da.GetDataTable(query);
            GridView1.DataBind();
        }

        protected void insert_Button_Click(object sender, EventArgs e)
        {
            //string count = @"select count(ResearchTiltle) FROM input_paper where (ResearchTiltle = '" + research_tilte_TextBox.Text + "' ) ";
            //da.GetData(count);
            //int countConvertInt = Int32.Parse(count);
            // if(countConvertInt > 0)
            // {
            //       Response.Write("<script LANGUAGE ='JavaScript'>alert('More than One Title are Same')</script>)");
            //  }
            string query = @"insert into input_paper ([AuthorList],[ResearchTiltle],[Types],[PubDate],[Indexer],[Semister],[Year],[PubDetails] ) 
                               values('" + Author_TextBox.Text + "','" + research_tilte_TextBox.Text + "','" + types_DropDownList.SelectedItem.Value + "','" + Calendar1.SelectedDate.ToShortDateString() + "','" + index_DropDownList.SelectedItem.Value+ "','" + semister_DropDownList.SelectedItem.Value+ "','" + year_DropDownList.SelectedValue+ "','" + detaies_TextBox.Text + "')";


            loadgrid();
            if (da.insert(query) == 1)
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
            string query = @"delete from input_paper
                                where ResearchTiltle ='" + lblId.Text + "'";
            if (da.insert(query) == 1)
            {
                loadgrid();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = @"select *
             from input_paper 
             where AuthorList LIKE '%" + TextBox9.Text + "%' OR Types LIKE '%" + TextBox9.Text + "%' OR Semister LIKE '%" + TextBox9.Text + "%'  OR Indexer LIKE '%" + TextBox9.Text + "%' ";
            GridView1.DataSource = da.GetDataTable(query);
            GridView1.DataBind();
            TextBox9.Text = "";
           
        }

        
    }

}