using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMDB2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
       public int varA,varB, ValF;
        public string CR;
        public int CR_Num;

        /*======================Magneto==========================================
=Function=
=Developed By= Proloy Mukherjee
=Action= PageLoad for the main page 
=Status= working 
=========================================================================*/
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.UrlReferrer == null)
            //{
            //    Response.Redirect("LoginSSO.aspx");
            //}
            string ChoiceF;

    string CR= Session["CR_Num"].ToString();
   //string CR = "CRQ000000087819";

            varA = Convert.ToInt16(Session["value11"]);
            varB = Convert.ToInt16(Session["valueR"]);
            //ValF = Convert.ToInt32(ChoiceF = Session["value6"].ToString());
     
            int count1 = Convert.ToInt16(Session["InfraTotal"]);
            TextBox2.Text = Convert.ToString(count1);
            // CR_Num = Convert.ToInt32(CR = Session["CR_Num"].ToString());
            Label2.Text = CR;
            TextBox1.Text = CR;


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
                    cmd.CommandText = "SELECT COUNT (DISTINCT [CI_Name])  FROM [dbo].[Audit_Infrastructure_CI] where[CR_Number] = @var9 ";
                    cmd.Parameters.AddWithValue("@var9", CR);
                    int  amt = (int)cmd.ExecuteScalar();
                    TextBox3.Text = Convert.ToString(amt);
                    int diff = count1 - amt;
                    Label5.Text = Convert.ToString(diff);
                    if (diff > 0)
                    {
                        buttonModal.Visible = true;
                        Button2.Visible = false;

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
        /*======================Magneto==========================================
       =Function= 
       =Developed By= Proloy Mukherjee
       =Action= move back to CR entry page 
       =Status= working 
       =========================================================================*/
        protected void Button2_Click1(object sender, EventArgs e)
        {
            
            Response.Redirect("Login.aspx");
           
        }
        /*======================Magneto==========================================
=Function=
=Developed By= Proloy Mukherjee
=Action=
=Status=
=========================================================================*/
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (varA == 1) {
                panel456.Visible = true;
            GridView4.Visible = true;
                GridView5.Visible = false;
            }
            if (varA == 2) {
                panel456.Visible = true;
            GridView5.Visible = true;
                GridView4.Visible = false;
            }
            if (ValF== 1)
            {
                panel456.Visible = true;
                //GridView1.Visible = true;
                //GridView2.Visible = true;
                GridView4.Visible = true;
                GridView5.Visible = true;
                GridView3.Visible = true;

            }
            if (varB == 1) {
                panel456.Visible = true;
                //GridView1.Visible = true;
                //GridView2.Visible = true;
                GridView4.Visible = true;
                GridView5.Visible = true;
                GridView3.Visible = true;
                GridView1.Visible = true;
            }
            if (varA == 3)
            {
                panel456.Visible = true;
                //GridView1.Visible = true;
                //GridView2.Visible = true;
                GridView4.Visible = true;
                GridView5.Visible = true;
                GridView3.Visible = true;
                GridView1.Visible = true;
            }

        }
        /*======================Magneto==========================================
       =Function=
       =Developed By= Proloy Mukherjee
       =Action=
       =Status=
       =========================================================================*/
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm3.aspx");
        }
 /*======================Magneto==========================================
=Function= 
=Developed By= Proloy Mukherjee
=Action= post flag to AGL remedy UAT
=Status= working
=========================================================================*/
        protected void Button3_Click(object sender, EventArgs e)
        {

        string CR= Session["CR_Num"].ToString();
            // string CR = "CRQ000000087819";

            //generate Token

            var client = new RestClient("https://jirauat.mobile.agl.com.au/api/jwt/login");
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

            ///////////////////////////////////////////////////////////////////////////////////////////
            string URLgetinit = "https://jirauat.mobile.agl.com.au/api/arsys/v1/entry/CHG:Infrastructure%20Change/?q=%27Infrastructure%20Change%20ID%27%20=%20%22";
            String URlget = string.Concat(URLgetinit, CR, "%22");
            var client55 = new RestClient(URlget);
            var request55 = new RestRequest(Method.GET);
            request55.AddHeader("cache-control", "no-cache");
            request55.AddHeader("Connection", "keep-alive");
            request55.AddHeader("Accept-Encoding", "gzip, deflate");
            // request55.AddHeader("Host", "glawi1283.agl.int:8008");
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


            ///////////////////////////////////////////////////////////////////////////////////////////////////////////
            //Post Data 
            string PreURl = "https://jirauat.mobile.agl.com.au/api/arsys/v1/entry/CHG:Infrastructure%20Change/";
           
            string URL=string.Concat(PreURl, RequestID);
            var client3 = new RestClient(URL);
            //var client3 = new RestClient("http://glawi1283.agl.int:8008/api/arsys/v1/entry/CHG:Infrastructure%20Change/CRQ000000087819");
            var request3 = new RestRequest(Method.PUT);
            request3.AddHeader("cache-control", "no-cache");
            request3.AddHeader("Connection", "keep-alive");
            request3.AddHeader("Content-Length", "58");
            request3.AddHeader("Accept-Encoding", "gzip, deflate");
            
            request3.AddHeader("Postman-Token", "f2db7919-e3a5-48b6-a906-d34a3d700377,27b2e20f-dadc-4ff9-84af-0f19270678b5");
            request3.AddHeader("Cache-Control", "no-cache");
            request3.AddHeader("Accept", "*/*");
            request3.AddHeader("User-Agent", "PostmanRuntime/7.16.3");
            request3.AddHeader("Authorization", tokenPass);
            request3.AddHeader("Content-Type", "application/json");
            request3.AddParameter("undefined", "{\r\n  \"values\":{\r\n    \r\n    \"Magneto Flag\": \"Yes\"\r\n  }\r\n}\r\n", ParameterType.RequestBody);
            IRestResponse response3 = client3.Execute(request3);


            Response.Redirect("LoginSSO.aspx");
        }
    }
}