using Microsoft.Owin.Security;
using Microsoft.Owin.Security.Cookies;
using Microsoft.Owin.Security.OpenIdConnect;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMDB2
{
    public partial class Login : System.Web.UI.Page
    {
        public string CR="";
        public string UserName="";

        /*======================Magneto==========================================
 =Function= Pageload for the CR Input page      
 =Developed By= Proloy Mukherjee
 =Action= Redirects if user has manually entered the URL
 =Status= Working 
 =========================================================================*/
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.UrlReferrer == null)
            {
                Response.Redirect("LoginSSO.aspx");
            }

        }
        /*======================Magneto==========================================
        =Function= Captures CR information      
        =Developed By= Proloy Mukherjee
        =Action= CR input is passed to session variable CR_Num from the textbox input 
        =Status= WORKING 
        =========================================================================*/
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            CR = Convert.ToString(TBox1.Text);
            Session["CR_Num"] = CR;
            Button1.Visible = false;
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            var client = new RestClient("http://glawi1283.agl.int:8008/api/jwt/login");
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
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            var url = "http://glawi1283.agl.int:8008/api/arsys/v1/entry/CHG:Infrastructure Change/?q='Infrastructure Change ID' = \"CRQ000000086004\"";

            var client1 = new RestClient(url);
            var request1 = new RestRequest(Method.GET);
            request1.AddHeader("cache-control", "no-cache");
            request1.AddHeader("Connection", "keep-alive");
            request1.AddHeader("Accept-Encoding", "gzip, deflate");
            request1.AddHeader("Host", "glawi1283.agl.int:8008");
            request1.AddHeader("Postman-Token", "84058629-3b06-43b4-8273-f75a9f1b7163,11026b21-607c-478f-8cce-509c6c9588e5");
            request1.AddHeader("Cache-Control", "no-cache");
            request1.AddHeader("Accept", "*/*");
            request1.AddHeader("User-Agent", "PostmanRuntime/7.16.3");
            request1.AddHeader("Content-Type", "application/json");
            request1.AddHeader("Authorization", tokenPass);
            IRestResponse response2 = client1.Execute(request1);
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            Response.Redirect("WebForm5.aspx");
         
        }
      
    }
}