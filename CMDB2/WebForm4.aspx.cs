using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMDB2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
       public int varA,varB, ValF;
        public string CR;
        public int CR_Num;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.UrlReferrer == null)
            {
                Response.Redirect("LoginSSO.aspx");
            }
            string ChoiceF;
            
            varA = Convert.ToInt16(Session["value11"]);
            varB = Convert.ToInt16(Session["valueR"]);
            //ValF = Convert.ToInt32(ChoiceF = Session["value6"].ToString());
            CR = Session["CR_Num"].ToString();
           // CR_Num = Convert.ToInt32(CR = Session["CR_Num"].ToString());
            Label2.Text = CR;
            TextBox1.Text = CR;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            
            Response.Redirect("Login.aspx");
           
        }

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm3.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            //generate Token

            var client = new RestClient("http://glawi1283.agl.int:8008/api/jwt/login");
            var request = new RestRequest(Method.POST);
            request.AddHeader("cache-control", "no-cache");
            request.AddHeader("Connection", "keep-alive");
            request.AddHeader("Content-Length", "45");
            request.AddHeader("Accept-Encoding", "gzip, deflate");
            request.AddHeader("Host", "glawi1283.agl.int:8008");
            request.AddHeader("Postman-Token", "ba7b4308-7ca3-423f-81df-7bafe5970493,80ff5308-7b89-4ca0-afb8-35707261710e");
            request.AddHeader("Cache-Control", "no-cache");
            request.AddHeader("Accept", "*/*");
            request.AddHeader("User-Agent", "PostmanRuntime/7.16.3");
            request.AddHeader("Content-Type", "application/x-www-form-urlencoded");
            request.AddParameter("undefined", "username=AGL_Transformation&password=agltrans", ParameterType.RequestBody);
            IRestResponse response = client.Execute(request);
            var data = response.Content;

            ///////////////////////////////////////////////////////////////////////////////////////////
            string pretext = "AR-JWT ";
            string tokenPass = string.Concat(pretext, data);

            //Post Data 
            string PostURL = "http://glawi1283.agl.int:8008/api/arsys/v1/entry/CHG:Infrastructure%20Change/";

            var client1 = new RestClient("http://glawi1283.agl.int:8008/api/arsys/v1/entry/CHG:Infrastructure%20Change/CRQ000000068504");
            var request1 = new RestRequest(Method.PUT);
            request1.AddHeader("cache-control", "no-cache");
            request1.AddHeader("Connection", "keep-alive");
            request1.AddHeader("Content-Length", "57");
            request1.AddHeader("Accept-Encoding", "gzip, deflate");
            request1.AddHeader("Host", "glawi1283.agl.int:8008");
            request1.AddHeader("Postman-Token", "6cbb6fdf-46f9-4dd2-a750-70e224d8aa0e,d44765c4-74d1-44ff-b616-939005fd70cf");
            request1.AddHeader("Cache-Control", "no-cache");
            request1.AddHeader("Accept", "*/*");
            request1.AddHeader("User-Agent", "PostmanRuntime/7.16.3");
            request1.AddHeader("Authorization", tokenPass);
            request1.AddHeader("Content-Type", "application/json");
            request1.AddParameter("undefined", "{\r\n  \"values\":{\r\n    \r\n    \"Magneto Flag\": \"Yes\"\r\n  }\r\n}\r\n", ParameterType.RequestBody);
            IRestResponse response1 = client.Execute(request);

            Response.Redirect("Login.aspx");
        }
    }
}