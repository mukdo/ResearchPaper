using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResearchPaper
{
    public partial class SheetPrepair : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            Server.Transfer("ready.aspx");
        }

        public string department
        {
            get
            {
                return TextBox1.Text;
            }
        }

        public string date
        {
            get
            {
                return TextBox2.Text;
            }
        }

        public string quater
        {
            get
            {
                return TextBox3.Text;
            }
        }

        public string coodinator
        {
            get
            {
                return TextBox4.Text;
            }
        }

        public string progress
        {
            get
            {
                return TextBox5.Text;
            }
        }


        public string from_date
        {
            get
            {
                string date_month_yearConcatanation = year_DropDownList.SelectedValue + "-" + DropDownList2.SelectedValue + "-" + DropDownList1.SelectedValue;
                return date_month_yearConcatanation;
            }
        }

             public string to_date
        {
            get
            {
                string date_month_yearConcatanation = year_DropDownList_to.SelectedValue + "-" + month_DropDownList_to.SelectedValue + "-" + date_DropDownList.SelectedValue;
                return date_month_yearConcatanation;
            }
        }
       
    }
}