using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResearchPaper
{
    public partial class ready : System.Web.UI.Page
    {
        databaseHandelar da = new databaseHandelar();

        string calender4, calender5;
        string coun;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 Page lastpage = (Page)Context.Handler;
                 if(lastpage is SheetPrepair)
                 {
                     department.Text = ((SheetPrepair)lastpage).department;
                     date1.Text = ((SheetPrepair)lastpage).date;
                     quater.Text = ((SheetPrepair)lastpage).quater;
                     researchco.Text = ((SheetPrepair)lastpage).coodinator;
                    calender4 = ((SheetPrepair)lastpage).from_date;
                    calender5 = ((SheetPrepair)lastpage).to_date;
                    Label7.Text= ((SheetPrepair)lastpage).progress;
                    
                }
            }

            //loadgrid call here
            loadgrid();
            //count call here in page load
            countJournals();
            countBookChapter();
            countConfarence();


        } //here page_load end

        // gridview funtion here
        public void loadgrid()
        {
            string query = @"select * FROM input_paper where PubDate BETWEEN '"+calender4+"' AND '"+ calender5 +"' ";
            GridView1.DataSource = da.GetDataTable(query);
            GridView1.DataBind();
        }


        public string progress(string query) // its work for counting query execution with parameter
        {
            string connection = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

           
            SqlConnection con = new SqlConnection(connection);


            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
               coun= (dr["types"].ToString());
            }
           
            return coun;
        }

        public void countJournals()
        {

            string query = @"select count(*) types FROM input_paper where (PubDate BETWEEN '" + calender4 + "' AND '" + calender5 + "') AND Types = 'Journal' AND Indexer ='Scopus' ";

            progress(query);
            count1.Text = coun;
            string query1 = @"select count(*) types FROM input_paper where (PubDate BETWEEN '" + calender4 + "' AND '" + calender5 + "') AND Types = 'Journal' AND Indexer ='Non-Scopus' ";

            progress(query1);
            count5.Text = coun;

        }

        public void countConfarence()
        {

            string query = @"select count(*) types FROM input_paper where (PubDate BETWEEN '" + calender4 + "' AND '" + calender5 + "') AND Types = 'Conference' AND Indexer ='Scopus' ";

            progress(query);
            count.Text = coun;
            string query1 = @"select count(*) types FROM input_paper where (PubDate BETWEEN '" + calender4 + "' AND '" + calender5 + "') AND Types = 'Conference' AND Indexer ='Non-Scopus' ";

            progress(query1);
            count6.Text = coun;

        }
        public void countBookChapter()
        {

            string query = @"select count(*) types FROM input_paper where (PubDate BETWEEN '" + calender4 + "' AND '" + calender5 + "') AND Types = 'BookChapter' AND Indexer ='Scopus'";

            progress(query);
            count2.Text = coun;

            string query1 = @"select count(*) types FROM input_paper where (PubDate BETWEEN '" + calender4 + "' AND '" + calender5 + "') AND Types = 'BookChapter' AND Indexer ='Non-Scopus' ";

            progress(query1);
            count4.Text = coun;

        }




    }

}
