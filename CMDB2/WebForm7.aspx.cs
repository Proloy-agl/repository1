using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMDB2
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                DateTime c3 = Convert.ToDateTime("2018-10-20");
                string connString = "Data Source=transformationdev.database.windows.net;Initial Catalog=CMDB_DB_DEV;User ID=Transadmin;Password=Trans$@dmin";
                SqlConnection conn = null;
                try
                {
                    conn = new SqlConnection(connString);
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.Connection = conn;
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "insert into [Audit_Relationship_App_to_Infra](CR_Number,App_CI_Name,Infra_CI_Name,Transaction_Timestamp,Transaction_Status,Environment) values (@var1,@var2,@var3,@var4,@var5,@var6)";
                        cmd.Parameters.AddWithValue("@var1", "3");
                        cmd.Parameters.AddWithValue("@var2", "3");
                        cmd.Parameters.AddWithValue("@var3", "3");
                        cmd.Parameters.AddWithValue("@var4", c3);
                        cmd.Parameters.AddWithValue("@var5", "5");
                        cmd.Parameters.AddWithValue("@var6", "Envi");
                        int rowsAffected = cmd.ExecuteNonQuery();
                        int test = rowsAffected;
                        if (rowsAffected == 1)

                        {

                        }
                        else
                        {
                           
                        }
                    }
                }
                catch (Exception ex)
                {


                }
                finally
                {
                    if (conn != null)
                    {
                        //cleanup connection i.e close 
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            DateTime c3 = DateTime.Now;
            string connString = "Data Source=transformationdev.database.windows.net;Initial Catalog=CMDB_DB_DEV;User ID=Transadmin;Password=Trans$@dmin";
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection(connString);
                conn.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into [Audit_Relationship_Infra_to_Infra](CR_Number,Parent_Infra_CI_Name,Child_Infra_CI_Name,Transaction_Timestamp,Transaction_Status) values (@var1,@var2,@var3,@var4,@var5)";
                    cmd.Parameters.AddWithValue("@var1", "1");
                    cmd.Parameters.AddWithValue("@var2", "1");
                    cmd.Parameters.AddWithValue("@var3", "1");
                    cmd.Parameters.AddWithValue("@var4", c3);
                    cmd.Parameters.AddWithValue("@var5", "I");





                    int rowsAffected = cmd.ExecuteNonQuery();
                    int test = rowsAffected;
                    if (rowsAffected == 1)

                    {

                        
                    }
                    else
                    {
                       
                    }
                }
            }
            catch (Exception ex)
            {


            }
            finally
            {
                if (conn != null)
                {
                    //cleanup connection i.e close 
                }
            }
        }
    }
}