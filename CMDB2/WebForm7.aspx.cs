using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using RestSharp;
using System;
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

            
            string CR = "CRQ000000087819";


            //generate Token

            var client = new RestClient("https://jirauat.mobile.agl.com.au/api/jwt/login");
            var request = new RestRequest(Method.POST);
            request.AddHeader("cache-control", "no-cache");
            request.AddHeader("Connection", "keep-alive");
            request.AddHeader("Content-Length", "45");
            request.AddHeader("Accept-Encoding", "gzip, deflate");
            request.AddHeader("Host", "glawi1283.agl.int:8008");
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

            ///////////////////////////////////////////////////////////////////////////////////////////
            string URLgetinit = "https://jirauat.mobile.agl.com.au/api/arsys/v1/entry/CHG:Infrastructure%20Change/?q=%27Infrastructure%20Change%20ID%27%20=%20%22";
            String URlget = string.Concat(URLgetinit, CR, "%22");
            var client55 = new RestClient(URlget);
            var request55 = new RestRequest(Method.GET);
            request55.AddHeader("cache-control", "no-cache");
            request55.AddHeader("Connection", "keep-alive");
            request55.AddHeader("Accept-Encoding", "gzip, deflate");
            request55.AddHeader("Host", "glawi1283.agl.int:8008");
            request55.AddHeader("Postman-Token", "5dd7923c-11e7-42b2-b23b-71851a03509a,f0b22fa4-863a-4666-a8ef-cafd04797e37");
            request55.AddHeader("Cache-Control", "no-cache");
            request55.AddHeader("Accept", "*/*");
            request55.AddHeader("User-Agent", "PostmanRuntime/7.17.1");
            request55.AddHeader("Content-Type", "application/json");
            request55.AddHeader("Authorization", tokenPass);
            IRestResponse response55 = client55.Execute(request55);


            JObject jsonResponseNew = (JObject)JsonConvert.DeserializeObject(response55.Content);

            

            dynamic jsonObj = JsonConvert.DeserializeObject(response55.Content);

            dynamic json1 = JObject.Parse(Convert.ToString(jsonObj));

           // dynamic json = JValue.Parse(response55.Content);

            var jsNew = new JavaScriptSerializer();

            var j1 = new JsonSerializer();

            var dNew = jsNew.Deserialize<dynamic>(Convert.ToString(jsonObj));
            


            string RequestID = dNew["entries"][0]["values"]["Request ID"];
            Label1.Text = RequestID;

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////
            //Post Data 
            string PreURl = "https://jirauat.mobile.agl.com.au/api/arsys/v1/entry/CHG:Infrastructure%20Change/";

            string URL = string.Concat(PreURl, CR);
            var client3 = new RestClient(URL);
            //var client3 = new RestClient("http://glawi1283.agl.int:8008/api/arsys/v1/entry/CHG:Infrastructure%20Change/CRQ000000087819");
            var request3 = new RestRequest(Method.PUT);
            request3.AddHeader("cache-control", "no-cache");
            request3.AddHeader("Connection", "keep-alive");
            request3.AddHeader("Content-Length", "58");
            request3.AddHeader("Accept-Encoding", "gzip, deflate");
            request3.AddHeader("Host", "glawi1283.agl.int:8008");
            request3.AddHeader("Postman-Token", "f2db7919-e3a5-48b6-a906-d34a3d700377,27b2e20f-dadc-4ff9-84af-0f19270678b5");
            request3.AddHeader("Cache-Control", "no-cache");
            request3.AddHeader("Accept", "*/*");
            request3.AddHeader("User-Agent", "PostmanRuntime/7.16.3");
            request3.AddHeader("Authorization", tokenPass);
            request3.AddHeader("Content-Type", "application/json");
            request3.AddParameter("undefined", "{\r\n  \"values\":{\r\n    \r\n    \"Magneto Flag\": \"Yes\"\r\n  }\r\n}\r\n", ParameterType.RequestBody);
            IRestResponse response3 = client3.Execute(request3);


           
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