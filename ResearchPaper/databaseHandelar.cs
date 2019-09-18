using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ResearchPaper
{
    public class databaseHandelar
    {
        string connection = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        public DataTable GetDataTable(string query)
        {
            SqlConnection sc = new SqlConnection(connection);
            if (sc.State == ConnectionState.Closed)
            {
                sc.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter(query, sc);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public int execute(string query)
        {
            SqlConnection con = new SqlConnection(connection);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }

        public int insert(string query)
        {
            SqlConnection sc = new SqlConnection(connection);
            if (sc.State == ConnectionState.Closed)
            {
                sc.Open();
            }
            SqlCommand cmd = new SqlCommand(query, sc);
            try
            {
                cmd.ExecuteNonQuery();
                return 1;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }
        public int GetData(string query)
        {
            SqlConnection con = new SqlConnection(connection);
            
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader dr = cmd.ExecuteReader();
                try {
                     dr.Read();
                
                    return 1;
                }
            catch
            {
                return 0;
            }
            
        }
    }
}