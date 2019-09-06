using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using RestSharp;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMDB2
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Test1(object sender, EventArgs e)
        {

            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////Generate Token/////////////////////////////////////////////////////////////
            var client = new RestClient("https://jirauat.mobile.agl.com.au/api/jwt/login");
            var request = new RestRequest(Method.POST);
            request.AddHeader("cache-control", "no-cache");
            request.AddHeader("Connection", "keep-alive");
            request.AddHeader("Content-Length", "41");
            request.AddHeader("Accept-Encoding", "gzip, deflate");
            request.AddHeader("Host", "jirauat.mobile.agl.com.au");
            request.AddHeader("Postman-Token", "901b7816-bdc7-4068-b86c-b5c4ef7ca209,ba847dcf-cf82-4ef1-aea8-db4cbc12e6cf");
            request.AddHeader("Cache-Control", "no-cache");
            request.AddHeader("Accept", "*/*");
            request.AddHeader("User-Agent", "PostmanRuntime/7.16.3");
            request.AddHeader("Content-Type", "application/x-www-form-urlencoded");
            request.AddParameter("undefined", "username=svc_magneto&password=svc_magneto", ParameterType.RequestBody);
            IRestResponse response = client.Execute(request);
            var data = response.Content;

            string data1 = "AR-JWT";
            string tokenPass = string.Concat(data1, " ", data);
            //////////////////////////////////Get CI items ///////////////////////////////////////////////////////////////////
            var client10 = new RestClient("http://glawi1283.agl.int:8008/api/arsys/v1/entry/CHG:Associations?q=%27Request%20ID02%27=%22CRQ000000087001%20%22");
            var request10 = new RestRequest(Method.GET);
            request10.AddHeader("cache-control", "no-cache");
            request10.AddHeader("Connection", "keep-alive");
            request10.AddHeader("Accept-Encoding", "gzip, deflate");
            request10.AddHeader("Host", "glawi1283.agl.int:8008");
            request10.AddHeader("Postman-Token", "b9f14d6d-19ca-4d17-a820-daf1154bd2db,5fd63ab8-cfe2-456d-96f3-45b5da106246");
            request10.AddHeader("Cache-Control", "no-cache");
            request10.AddHeader("Accept", "*/*");
            request10.AddHeader("User-Agent", "PostmanRuntime/7.16.3");
            request10.AddHeader("Content-Type", "application/json");
            request10.AddHeader("Authorization", tokenPass);
            IRestResponse response10 = client10.Execute(request10);

            JObject jsonResponse10 = (JObject)JsonConvert.DeserializeObject(response10.Content);
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            Label1.Text = tokenPass;
    //        List<string> AppCI = new List<string>();
    //        List<string> InfraCI = new List<string>();
    //        AppCI.Add("Select");
    //        InfraCI.Add("Select");

    //        var js10 = new JavaScriptSerializer();
    //        var d10 = js10.Deserialize<dynamic>(Convert.ToString(jsonResponse10));
    //        int m = 1;
    //        int n = 0;
    //        dynamic jsonObj = JsonConvert.DeserializeObject(response10.Content);

    //        Dictionary<string, object> csObj =
    //js10.Deserialize<Dictionary<string, object>>(response10.Content);
    //        n = ((ArrayList)csObj["entries"]).Count;

    //        Label1.Text = Convert.ToString(n);
    //        Label1.Text = tokenPass;

           
    //        for (int x = 0; x < n; x++)
    //        {

    //            if (d10["entries"][x]["values"]["Lookup Keyword"] == "BMC_APPLICATION")
    //            {
    //                string Value1 = d10["entries"][x]["values"]["Request Description01"];
    //                AppCI.Add(Value1);
    //            }

    //            if (d10["entries"][x]["values"]["Lookup Keyword"] == "BMC_COMPUTERSYSTEM")
    //            {
    //                string Value2 = d10["entries"][x]["values"]["Request Description01"];
    //                InfraCI.Add(Value2);
    //            }

    //        }

            

    //        DL3.DataSource = AppCI;
    //        DL3.DataBind();
    //        DL4.DataSource = InfraCI;
    //        DL4.DataBind();
            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


        }
        protected void Test2(object sender, EventArgs e)
        {
            string p = Label1.Text;
            int m = Convert.ToInt16(p);
            for (int x = 0; x < m; x++)
            {

                Label2.Text = Convert.ToString(x);

              
            }

        }




    }

}