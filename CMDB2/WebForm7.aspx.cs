using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using RestSharp;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMDB2
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack)

            //{

            //    SetInitialRow();

            //}

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            try
            {

                string CR = "CRQ000000087819";


                //generate Token

                var client = new RestClient("http://glawi1283.agl.int:8008/api/jwt/login");
                var request = new RestRequest(Method.POST);
                request.AddHeader("cache-control", "no-cache");
                request.AddHeader("Connection", "keep-alive");
                request.AddHeader("Content-Length", "45");
                request.AddHeader("Accept-Encoding", "gzip, deflate");
                //request.AddHeader("Host", "glawi1283.agl.int:8008");
                // request.AddHeader("Postman-Token", "ba7b4308-7ca3-423f-81df-7bafe5970493,80ff5308-7b89-4ca0-afb8-35707261710e");
                request.AddHeader("Cache-Control", "no-cache");
                request.AddHeader("Accept", "*/*");
                request.AddHeader("User-Agent", "PostmanRuntime/7.16.3");
                request.AddHeader("Content-Type", "application/x-www-form-urlencoded");
                request.AddParameter("undefined", "username=svc_magneto&password=svc_magneto", ParameterType.RequestBody);
                IRestResponse response = client.Execute(request);
                var data = response.Content;

                string data1 = "AR-JWT";
                string tokenPass = string.Concat(data1, " ", data);
                ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                var client1 = new RestClient("http://glawi1283.agl.int:8008/api/arsys/v1/entry/SIT:Site%20Alias%20Company%20LookUp");
                var request1 = new RestRequest(Method.GET);
                request1.AddHeader("cache-control", "no-cache");
                request1.AddHeader("Connection", "keep-alive");
                request1.AddHeader("Accept-Encoding", "gzip, deflate");
                request1.AddHeader("Host", "jirauat.mobile.agl.com.au");
                request1.AddHeader("Postman-Token", "8fb97c36-ac33-4e13-be14-527c586e0450,118913f2-c6f9-4145-b785-ce095277ba68");
                request1.AddHeader("Cache-Control", "no-cache");
                request1.AddHeader("Accept", "*/*");
                request1.AddHeader("User-Agent", "PostmanRuntime/7.17.1");
                request1.AddHeader("Content-Type", "application/json");
                request1.AddHeader("Authorization", tokenPass);
                IRestResponse response1 = client1.Execute(request1);

                IRestResponse response11 = client1.Execute(request1);

                JObject jsonResponse1 = (JObject)JsonConvert.DeserializeObject(response11.Content);

                dynamic json = JValue.Parse(response1.Content);

                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



                List<string> AppCI = new List<string>();
                List<string> InfraCI = new List<string>();




                var js10 = new JavaScriptSerializer();
                var d10 = js10.Deserialize<dynamic>(Convert.ToString(jsonResponse1));
                int m = 1;
                int n = 0;
                dynamic jsonObj = JsonConvert.DeserializeObject(response1.Content);


                Dictionary<string, object> csObj =
        js10.Deserialize<Dictionary<string, object>>(response1.Content);
                n = ((ArrayList)csObj["entries"]).Count;


                for (int x = 0; x < n; x++)
                {


                   
                        string Value1 = d10["entries"][x]["values"]["Region"];
                       
                        foreach (var word in Value1)
                            AppCI.Add(Convert.ToString(word));

             

                }

            }

            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }


           

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

        protected void Gridview1_RowCreated(object sender, GridViewRowEventArgs e)

        {

            if (e.Row.RowType == DataControlRowType.DataRow)

            {

                DataTable dt = (DataTable)ViewState["CurrentTable"];

                LinkButton lb = (LinkButton)e.Row.FindControl("LinkButton1");

                if (lb != null)

                {

                    if (dt.Rows.Count > 1)

                    {

                        if (e.Row.RowIndex == dt.Rows.Count - 1)

                        {

                            lb.Visible = false;

                        }

                    }

                    else

                    {

                        lb.Visible = false;

                    }

                }

            }

        }



        protected void LinkButton1_Click(object sender, EventArgs e)

        {

            LinkButton lb = (LinkButton)sender;

            GridViewRow gvRow = (GridViewRow)lb.NamingContainer;

            int rowID = gvRow.RowIndex + 1;

            if (ViewState["CurrentTable"] != null)

            {

                DataTable dt = (DataTable)ViewState["CurrentTable"];

                if (dt.Rows.Count > 1)

                {

                    if (gvRow.RowIndex < dt.Rows.Count - 1)

                    {

                        //Remove the Selected Row data

                        dt.Rows.Remove(dt.Rows[rowID]);

                    }

                }

                //Store the current data in ViewState for future reference

                ViewState["CurrentTable"] = dt;

                //Re bind the GridView for the updated data

                Gridview1.DataSource = dt;

                Gridview1.DataBind();

            }



            

        }

        private void SetInitialRow()

        {

            DataTable dt = new DataTable();

            DataRow dr = null;

            dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));

            dt.Columns.Add(new DataColumn("Column1", typeof(string)));

            dt.Columns.Add(new DataColumn("Column2", typeof(string)));

            dt.Columns.Add(new DataColumn("Column3", typeof(string)));

            dr = dt.NewRow();

            dr["RowNumber"] = 1;

            dr["Column1"] = string.Empty;

            dr["Column2"] = string.Empty;

            dr["Column3"] = string.Empty;

            dt.Rows.Add(dr);

            //dr = dt.NewRow();



            //Store the DataTable in ViewState

            ViewState["CurrentTable"] = dt;



            Gridview1.DataSource = dt;

            Gridview1.DataBind();

        }

        private void AddNewRowToGrid()

        {

            int rowIndex = 0;



            if (ViewState["CurrentTable"] != null)

            {

                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];

                DataRow drCurrentRow = null;

                if (dtCurrentTable.Rows.Count > 0)

                {

                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)

                    {

                        //extract the TextBox values

                        TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("TextBox1");

                        TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("TextBox2");

                        TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("TextBox3");



                        drCurrentRow = dtCurrentTable.NewRow();

                        drCurrentRow["RowNumber"] = i + 1;



                        dtCurrentTable.Rows[i - 1]["Column1"] = box1.Text;

                        dtCurrentTable.Rows[i - 1]["Column2"] = box2.Text;

                        dtCurrentTable.Rows[i - 1]["Column3"] = box3.Text;



                        rowIndex++;

                    }

                    dtCurrentTable.Rows.Add(drCurrentRow);

                    ViewState["CurrentTable"] = dtCurrentTable;



                    Gridview1.DataSource = dtCurrentTable;

                    Gridview1.DataBind();

                }

            }

            else

            {

                Response.Write("ViewState is null");

            }



            //Set Previous Data on Postbacks

            SetPreviousData();

        }

        private void SetPreviousData()

        {

            int rowIndex = 0;

            if (ViewState["CurrentTable"] != null)

            {

                DataTable dt = (DataTable)ViewState["CurrentTable"];

                if (dt.Rows.Count > 0)

                {

                    for (int i = 0; i < dt.Rows.Count; i++)

                    {

                        TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("TextBox1");

                        TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("TextBox2");

                        TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("TextBox3");



                        box1.Text = dt.Rows[i]["Column1"].ToString();

                        box2.Text = dt.Rows[i]["Column2"].ToString();

                        box3.Text = dt.Rows[i]["Column3"].ToString();



                        rowIndex++;

                    }

                }

            }

        }

        protected void ButtonAdd_Click(object sender, EventArgs e)

        {

            AddNewRowToGrid();

        }
    }
}