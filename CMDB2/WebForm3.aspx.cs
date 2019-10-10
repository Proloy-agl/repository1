using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using RestSharp;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using System.Web.Script.Serialization;
using System.Collections;

namespace CMDB2
{

   
    public partial class WebForm3 : System.Web.UI.Page
    {
        public int Y1, Y2, Y3, Y4, Y5;
        public string CR;
        public int CR_Num;

        SqlConnection con = new SqlConnection("Data Source=transformationdev.database.windows.net;Initial Catalog=CMDB_DB_DEV;User ID=Transadmin;Password=Trans$@dmin");
        
        /*======================Magneto==========================================
=Function= Page load for new entry page 
=Developed By= Proloy Mukherjee
=Action= converts the user selected choices as int foields and disoplays the tiles for modal display according to the logic
=Status=working 
=========================================================================*/

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.UrlReferrer == null)
            {
                Response.Redirect("LoginSSO.aspx");
            }

            if (!IsPostBack)
            {
                string ChoiceA, ChoiceB, ChoiceC, ChoiceD, ChoiceE, ChoiceF;
       int ValA, ValB, ValC, ValD, ValE, ValF;

           



                ValA = Convert.ToInt32(ChoiceA = Session["value1"].ToString());
                ValB = Convert.ToInt32(ChoiceB = Session["value2"].ToString());
                ValC = Convert.ToInt32(ChoiceC = Session["value3"].ToString());
                ValD = Convert.ToInt32(ChoiceD = Session["value4"].ToString());
                ValE = Convert.ToInt32(ChoiceE = Session["value5"].ToString());
                ValF = 5;
                CR = "CRQ000000087805";
             CR = Session["CR_Num"].ToString();
                //  CR_Num = Convert.ToInt32(CR = Session["CR_Num"].ToString());
                I_CR_Num.Text = CR;
                A_CR_Number.Text = CR;
                if (ValE == 1)
                {
                    BPanel7.Visible = true;
                    BPanel1.Visible = false;
                    BPanel2.Visible = false;
                    BPanel3.Visible = false;
                    BPanel4.Visible = false;
                    BPanel6.Visible = false;
                    BPanel5.Visible = false;
                    Button29.Visible = true;


                }
                if (ValF == 1)
                {
                    BPanel1.Visible = false;
                    BPanel2.Visible = false;
                    BPanel3.Visible = false;
                    BPanel4.Visible = false;
                    BPanel5.Visible = false;

                }

                if ((ValA == 1) && (ValB != 1) && (ValC != 1) && (ValD != 1))
                {
                    BPanel5.Visible = false;
                    //BPanel6.Visible = false;
                    Button2.Disabled = true;
                    Button3.Disabled = true;
                    Button4.Disabled = true;
                    BPanel7.Visible = false;
                    a1.Visible = true;
                    b2.Visible = true;
                    c3.Visible = true;
                    d4.Visible = true;

                }
                if ((ValA != 1) && (ValB == 1) && (ValC != 1) && (ValD != 1))
                {
                    BPanel5.Visible = false;

                    BPanel1.Visible = false;
                    Button3.Disabled = true;
                    Button4.Disabled = true;
                    BPanel7.Visible = false;
                    b1.Visible = true;
                    c2.Visible = true;
                    d3.Visible = true;
                }
                if ((ValC == 1) && (ValB != 1) && (ValA != 1) && (ValD != 1))
                {
                    BPanel1.Visible = false;
                    BPanel5.Visible = false;
                    BPanel7.Visible = false;
                    BPanel2.Visible = false;
                    BPanel4.Visible = false;
                    Button28.Visible = true;
                    c1.Visible = true;


                }
                if ((ValD == 1) && (ValB != 1) && (ValC != 1) && (ValA != 1))
                {
                    BPanel1.Visible = false;
                    BPanel2.Visible = false;
                    BPanel3.Visible = false;
                    BPanel5.Visible = false;
                    Button28.Visible = true;
                    BPanel7.Visible = false;
                    d1.Visible = true;
                    Button28.Visible = false;
                }
                if ((ValA == 1) && (ValC == 1) && (ValB != 1) && (ValD != 1))
                {
                    BPanel5.Visible = false;
                    BPanel7.Visible = false;
                    Button2.Disabled = true;
                    Button3.Disabled = true;
                    Button4.Disabled = true;
                    a1.Visible = true;
                    b2.Visible = true;
                    c3.Visible = true;
                    d4.Visible = true;
                }
                if ((ValA == 1) && (ValD == 1) && (ValC != 1) && (ValB != 1))
                {
                    BPanel5.Visible = false;
                    BPanel7.Visible = false;
                    Button2.Disabled = true;
                    Button3.Disabled = true;
                    Button4.Disabled = true;
                    a1.Visible = true;
                    b2.Visible = true;
                    c3.Visible = true;
                    d4.Visible = true;
                }
                if ((ValC == 1) && (ValB == 1) && (ValA != 1) && (ValD != 1))
                {
                    BPanel5.Visible = false;
                    BPanel7.Visible = false;
                    BPanel1.Visible = false;
                    Button3.Disabled = true;
                    Button4.Disabled = true;
                    b1.Visible = true;
                    c2.Visible = true;
                    d3.Visible = true;
                }
                if ((ValD == 1) && (ValB == 1) && (ValC != 1) && (ValA != 1))
                {
                    BPanel5.Visible = false;
                    BPanel7.Visible = false;
                    BPanel1.Visible = false;
                    Button3.Disabled = true;
                    Button4.Disabled = true;
                    b1.Visible = true;
                    c2.Visible = true;
                    d3.Visible = true;
                }
                if ((ValC == 1) && (ValD == 1) && (ValA != 1) && (ValB != 1))
                {
                    BPanel1.Visible = false;
                    BPanel5.Visible = false;
                    BPanel2.Visible = false;
                    c1.Visible = true;
                    d2.Visible = true;

                }
                if ((ValA == 1) && (ValB == 1) && (ValC == 1) && (ValD == 1))
                {
                    BPanel5.Visible = false;
                    BPanel7.Visible = false;
                    Button2.Disabled = true;
                    Button3.Disabled = true;
                    Button4.Disabled = true;
                    a1.Visible = true;
                    b2.Visible = true;
                    c3.Visible = true;
                    d4.Visible = true;
                }
                if ((ValA == 1) && (ValB == 1) && (ValC == 1) && (ValD != 1))
                {
                    BPanel5.Visible = false;
                    BPanel7.Visible = false;
                    Button2.Disabled = true;
                    Button3.Disabled = true;
                    Button4.Disabled = true;
                    a1.Visible = true;
                    b2.Visible = true;
                    c3.Visible = true;
                    d4.Visible = true;
                }
                if ((ValD == 1) && (ValB != 1) && (ValC == 1) && (ValA == 1))
                {
                    BPanel5.Visible = false;
                    BPanel7.Visible = false;
                    Button2.Disabled = true;
                    Button3.Disabled = true;
                    Button4.Disabled = true;
                    a1.Visible = true;
                    b2.Visible = true;
                    c3.Visible = true;
                    d4.Visible = true;
                }
                if ((ValD == 1) && (ValC != 1) && (ValB == 1) && (ValA == 1))
                {
                    BPanel5.Visible = false;
                    BPanel7.Visible = false;
                    Button2.Disabled = true;
                    Button3.Disabled = true;
                    Button4.Disabled = true;
                    a1.Visible = true;
                    b2.Visible = true;
                    c3.Visible = true;
                    d4.Visible = true;
                }
                if ((ValC == 1) && (ValD == 1) && (ValA != 1) && (ValB == 1))
                {
                    BPanel5.Visible = false;
                    BPanel7.Visible = false;
                    BPanel1.Visible = false;
                    Button3.Disabled = true;
                    Button4.Disabled = true;
                    b1.Visible = true;
                    c2.Visible = true;
                    d3.Visible = true;
                }
                if ((ValC != 1) && (ValD != 1) && (ValA == 1) && (ValB == 1))
                {
                    BPanel5.Visible = false;
                    BPanel7.Visible = false;
                    Button3.Disabled = true;
                    Button4.Disabled = true;
                    a1.Visible = true;
                    b2.Visible = true;
                    c3.Visible = true;
                    d4.Visible = true;

                }
                if ((ValC != 1) && (ValD != 1) && (ValA != 1) && (ValB != 1) && (ValE != 1))
                {
                    Response.Redirect("Choice.aspx");


                }


                //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                ///////////////////////////////////Generate Token/////////////////////////////////////////////////////////////




                var client = new RestClient("https://jirauat.mobile.agl.com.au/api/jwt/login");
                var request = new RestRequest(Method.POST);
                request.AddHeader("cache-control", "no-cache");
                request.AddHeader("Connection", "keep-alive");
                request.AddHeader("Content-Length", "41");
                request.AddHeader("Accept-Encoding", "gzip, deflate");
                request.AddHeader("Host", "jirauat.mobile.agl.com.au");
                request.AddHeader("Postman-Token", "2332ba70-dcf1-4e0b-b248-8ad5c17500b3,f1624587-65bb-4734-87f7-25dc90c7e437");
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
                string URLinit = "https://jirauat.mobile.agl.com.au/api/arsys/v1/entry/CHG:Associations?q=%27Request%20ID02%27=%22";
                string URLReady = string.Concat(URLinit, CR, "%20%22");
                var client10 = new RestClient(URLReady);


                var request10 = new RestRequest(Method.GET);
                request10.AddHeader("cache-control", "no-cache");
                request10.AddHeader("Connection", "keep-alive");
                request10.AddHeader("Accept-Encoding", "gzip, deflate");
                request.AddHeader("Host", "jirauat.mobile.agl.com.au");
                request10.AddHeader("Postman-Token", "b9f14d6d-19ca-4d17-a820-daf1154bd2db,5fd63ab8-cfe2-456d-96f3-45b5da106246");
                request10.AddHeader("Cache-Control", "no-cache");
                request10.AddHeader("Accept", "*/*");
                request10.AddHeader("User-Agent", "PostmanRuntime/7.16.3");
                request10.AddHeader("Content-Type", "application/json");
                request10.AddHeader("Authorization", tokenPass);
                IRestResponse response10 = client10.Execute(request10);

                JObject jsonResponse10 = (JObject)JsonConvert.DeserializeObject(response10.Content);

                dynamic json = JValue.Parse(response10.Content);

                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



                List<string> AppCI = new List<string>();
                List<string> InfraCI = new List<string>();




                var js10 = new JavaScriptSerializer();
                var d10 = js10.Deserialize<dynamic>(Convert.ToString(jsonResponse10));
                int m = 1;
                int n = 0;
                dynamic jsonObj = JsonConvert.DeserializeObject(response10.Content);


                Dictionary<string, object> csObj =
        js10.Deserialize<Dictionary<string, object>>(response10.Content);
                n = ((ArrayList)csObj["entries"]).Count;





                for (int x = 0; x < n; x++)
                {


                    if (d10["entries"][x]["values"]["Lookup Keyword"] == "BMC_APPLICATION")
                    {
                        string Value1 = d10["entries"][x]["values"]["Request Description01"];
                        // AppCI.Add(Value1);

                        string[] separators = { "PROD", "NON PROD", "DR" };

                        string[] words = Value1.Split(separators, StringSplitOptions.RemoveEmptyEntries);
                        foreach (var word in words)
                            AppCI.Add(word);

                    }

                    if (d10["entries"][x]["values"]["Lookup Keyword"] == "BMC_COMPUTERSYSTEM")
                    {
                        string Value2 = d10["entries"][x]["values"]["Request Description01"];
                        // InfraCI.Add(Value2);

                        string[] separators = { "PROD", "NON PROD", "DR" };

                        string[] words = Value2.Split(separators, StringSplitOptions.RemoveEmptyEntries);
                        foreach (var word in words)
                            InfraCI.Add(word);


                    }

                }



                DL3.DataSource = AppCI;

                DL3.DataBind();
                DL4.DataSource = InfraCI;

                DL4.DataBind();
                DLApp.DataSource = AppCI;

                DLApp.DataBind();
                DLinf1.DataSource = InfraCI;

                DLinf1.DataBind();

                DLinf4.DataSource = InfraCI;

                DLinf4.DataBind();
                DLinf3.DataSource = InfraCI;

                DLinf3.DataBind();


                Session["InfraTotal"] = InfraCI.Count;

                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



            }



        }

        /*======================Magneto==========================================
=Function=  submit function for infrastructure onboarding modal 
=Developed By= Proloy Mukherjee
=Action= captures the user inputs for infrastructure onboarding modal and commits the same to the [Audit_Infrastructure_CI] table 
=Status= working
=========================================================================*/
        protected void Infra_SumbitBtn_Click(object sender, EventArgs e)
        {
            
            string a1, a2, a3, a4, a5, a6, a7, a8, a9,aS,aC,aR;
            int a10, a11;
            DateTime a12;
            System_Environment.Text = DropDownList5.SelectedValue;
            string a13;
         // a1 = CI_Name.Text;
          a1 = DL4.SelectedItem.Text; 
            a2 = System_Environment.Text;
            a3 = Primary_Capability_list.SelectedValue;
            //a3 = Primary_Capability.Text;
            a4 = Owner.Text;
            a5 = DropDownList6.SelectedValue;
            a6 = System_Role.Text;
            a7 = Site.Text;
            a8 = OEM_Supported.Text;
            a9 = I_CR_Num.Text;
            a10 = 1;
            a11 = 1;
            a12 = DateTime.Now;
            a13 = "I";
            aS = DropDownList9.SelectedValue;
            aR = DropDownList11.SelectedValue;
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
                    cmd.CommandText = "insert into [Audit_Infrastructure_CI](CR_Number,CI_Name,System_Environment,Primary_Capability,Owner,Supported_By,System_Role,Site,OEM_Supported,Transaction_Timestamp,Transaction_Status,Site_Group,Country,Region) values (@var9,@var1,@var2,@var3,@var4,@var5,@var6,@var7,@var8,@var12,@var13,@var14,@var15,@var16)";
                    cmd.Parameters.AddWithValue("@var9", a9);
                    cmd.Parameters.AddWithValue("@var1", a1);
                    cmd.Parameters.AddWithValue("@var2", a2);
                    cmd.Parameters.AddWithValue("@var3", a3);
                    cmd.Parameters.AddWithValue("@var4", a4);
                    cmd.Parameters.AddWithValue("@var5", a5);
                    cmd.Parameters.AddWithValue("@var6", a6);
                    cmd.Parameters.AddWithValue("@var7", a7);
                    cmd.Parameters.AddWithValue("@var8", a8);
                    cmd.Parameters.AddWithValue("@var12", a12);
                    cmd.Parameters.AddWithValue("@var13", a13);
                    cmd.Parameters.AddWithValue("@var14", aS);
                    cmd.Parameters.AddWithValue("@var15", aR);
                    cmd.Parameters.AddWithValue("@var16", aR);
                    int rowsAffected = cmd.ExecuteNonQuery();
                    int test = rowsAffected;
                    if (rowsAffected == 1)

                    {
                        T2.Visible = true;
                        Button3.Disabled = false;
                        Y2 = 1;
                        Button19.Visible = false;
                        Button20.Visible = true;
                        Button21.Visible = false;
                        Final1.Visible = true;
                        CI_Name.Text = "";
                        System_Environment.Text = "";
                        Primary_Capability.Text = "";
                        Owner.Text = "";
                        System_Role.Text = "";
                        Site.Text = "";
                        DropDownList6.SelectedValue = "Select";
                        DropDownList5.SelectedValue = "Select";
                        Button28.Visible = true;
                        Primary_Capability_list.SelectedValue= "Select";
                        Button1.Disabled = true;
                        Button2.Disabled = true;
                        Button3.Disabled = false;
                        Button4.Disabled = true;



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

        /*======================Magneto==========================================
     =Function=  submit function for Application modal 
     =Developed By= Proloy Mukherjee
     =Action= captures the user inputs for Application onboarding modal and commits the same to the [Audit_Application_CI] table 
     =Status= working
     =========================================================================*/
        protected void App_SumbitBtn_Click(object sender, EventArgs e)
        {
            string b1, b2, b3, b4, b5, b6, b7, b8;
            DateTime b9;
           
            b1 = A_CR_Number.Text;
            b2 = Application_ID.Text;
           // b3 = DDGroup.SelectedValue;
            b3 = DropDownList2.SelectedValue;
            b4 = DropDownList1.SelectedValue;
            b5 = DropDownList3.SelectedValue;
            b6 = Environment_Instance.Text;
         // b7 = Application_Name.Text;
            b7 = DL3.SelectedItem.Text; 
            b9 = DateTime.Now;
            b8 = "I";
            
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
                    cmd.CommandText = "insert into [Audit_Application_CI](CR_NUMBER,Application_Name,Application_Category,Application_Complexity,Remedy_Group,Application_Environment,Transaction_Timestamp,Transaction_Status) values (@var1,@var3,@var4,@var5,@var6,@var7,@var8,@var9)";
                    cmd.Parameters.AddWithValue("@var1", b1);
                 //   cmd.Parameters.AddWithValue("@var2", b2);
                    cmd.Parameters.AddWithValue("@var3", b7);
                    cmd.Parameters.AddWithValue("@var4", b3);
                    cmd.Parameters.AddWithValue("@var5", b4);
                    cmd.Parameters.AddWithValue("@var6", b5);
                    cmd.Parameters.AddWithValue("@var7", b6);
                    cmd.Parameters.AddWithValue("@var8", b9);
                    cmd.Parameters.AddWithValue("@var9", b8);
                    int rowsAffected = cmd.ExecuteNonQuery();
                    int test = rowsAffected;
                    if (rowsAffected == 1)

                    {
                        
                       // Response.Redirect("WebForm3.aspx");
                        T1.Visible = true;
                        Button2.Disabled = false;
                        Y1 = 1;
                        Button19.Visible = true;
                        Final1.Visible = true;

                        Button1.Disabled = true;
                        Button2.Disabled = false;
                        Button3.Disabled = true;
                        Button4.Disabled = true;

                    }
                    else
                    {
                        Response.Redirect("Choice.aspx");
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
=Function= submit function for Application to Infra relationship modal
=Developed By= Proloy Mukherjee
=Action=captures the user inputs for Application to infra relationship modal and commits the same to the [Audit_Relationship_App_to_Infra] table 
=Status= working
=========================================================================*/
        protected void AtoI_SumbitBtn_Click(object sender, EventArgs e)
        {
            string c1, c2, envi,CR_1;
           // c1 = TextBox11.Text;
            c1 = DLApp.SelectedItem.Text;
           CR_1= Session["CR_Num"].ToString();
            //  c2 = TextBox12.Text;
            c2 = DLinf1.SelectedItem.Text;
            DateTime c3 = DateTime.Now;
            envi = DropDownList7.SelectedItem.Text;
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
                    //cmd.CommandText = "insert into [Audit_Relationship_App_to_Infra](CR_Number,App_CI_Name,Infra_CI_Name,Transaction_Timestamp,Transaction_Status,Environment) values (@var1,@var2,@var3,@var4,@var5,@var6)";
                    //cmd.Parameters.AddWithValue("@var1", CR);
                    //cmd.Parameters.AddWithValue("@var2", c1);
                    //cmd.Parameters.AddWithValue("@var3", c2);
                    //cmd.Parameters.AddWithValue("@var4", c3);
                    //cmd.Parameters.AddWithValue("@var5", "I");
                    //cmd.Parameters.AddWithValue("@var1", envi);

                    //insert into [Audit_Relationship_App_to_Infra](CR_Number,App_CI_Name,Infra_CI_Name,Transaction_Timestamp,Transaction_Status,Environment) values (@var1,@var2,@var3,@var4,@var5,@var6)";
                    //INSERT INTO [dbo].[Audit_Relationship_App_to_Infra_Magneto]([CR_Number],[App_CI_Name],[Infra_CI_Name],[Transaction_Timestamp],[Transaction_Status],[Environment])

                    cmd.CommandText = "INSERT INTO [dbo].[Audit_Relationship_App_to_Infra_Magneto]([CR_Number],[App_CI_Name],[Infra_CI_Name],[Transaction_Timestamp],[Transaction_Status],[Environment]) values (@var1,@var2,@var3,@var4,@var5,@var6)";
                    cmd.Parameters.AddWithValue("@var1", CR_1);
                    cmd.Parameters.AddWithValue("@var2", c1);
                    cmd.Parameters.AddWithValue("@var3", c2);
                    cmd.Parameters.AddWithValue("@var4", c3);
                    cmd.Parameters.AddWithValue("@var5", "I");
                    cmd.Parameters.AddWithValue("@var6", envi);

                    int rowsAffected = cmd.ExecuteNonQuery();
                    int test = rowsAffected;
                    if (rowsAffected == 1)

                    {
                        
                       // Response.Redirect("WebForm3.aspx");
                        T3.Visible = true;
                        Button4.Disabled = false;
                        Y3 = 1;
                        Button20.Visible = false;
                        Button21.Visible = true;
                        Final1.Visible = true;
                        TextBox11.Text = "";
                        TextBox12.Text = "";
                        Button1.Disabled = true;
                        Button2.Disabled = true;
                        Button3.Disabled = true;
                        Button4.Disabled = false;
                        
                    }
                    else
                    {
                        Response.Redirect("Choice.aspx");
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
=Function= submit function for Infra to Infra relationship modal
=Developed By= Proloy Mukherjee
=Action=captures the user inputs for Infra to Infra  relationship modal and commits the same to the [Audit_Relationship_Infra_to_Infra] table 
=Status= working
=========================================================================*/
        protected void ItoI_SumbitBtn_Click(object sender, EventArgs e)
        {
            string c1, c2, CR_2;
            // c1 = TextBox13.Text;
            c1 = DLinf3.SelectedItem.Text;

            // c2 = TextBox14.Text;
            c2 = DLinf4.SelectedItem.Text;
            CR_2= Session["CR_Num"].ToString();
            DateTime c3 = DateTime.Now;
            string connString = "Data Source=transformationdev.database.windows.net;Initial Catalog=CMDB_DB_DEV;User ID=Transadmin;Password=Trans$@dmin";
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection(connString);
                conn.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    //[Audit_Relationship_Infra_to_Infra](CR_Number,Parent_Infra_CI_Name,Child_Infra_CI_Name,Transaction_Timestamp,Transaction_Status)
                    //[dbo].[Audit_Relationship_Infra_to_Infra_Magneto]([CR_Number],[Parent_Infra_CI_Name],[Child_Infra_CI_Name],[Transaction_Timestamp],[Transaction_Status])
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into [dbo].[Audit_Relationship_Infra_to_Infra_Magneto]([CR_Number],[Parent_Infra_CI_Name],[Child_Infra_CI_Name],[Transaction_Timestamp],[Transaction_Status]) values (@var1,@var2,@var3,@var4,@var5)";
                    cmd.Parameters.AddWithValue("@var1", CR_2);
                    cmd.Parameters.AddWithValue("@var2", c1);
                    cmd.Parameters.AddWithValue("@var3", c2);
                    cmd.Parameters.AddWithValue("@var4", c3);
                    cmd.Parameters.AddWithValue("@var5", "I");





                    int rowsAffected = cmd.ExecuteNonQuery();
                    int test = rowsAffected;
                    if (rowsAffected == 1)

                    {
                       
                       // Response.Redirect("WebForm3.aspx");
                        T4.Visible = true;
                        Y4 = 1;
                        Button21.Visible = false;
                        Button28.Visible = true;
                        Final1.Visible = true;
                        TextBox13.Text = "";
                        TextBox14.Text = "";
                    }
                    else
                    {
                        Response.Redirect("Choice.aspx");
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
=Function= submit function for Decommission modal
=Developed By= Proloy Mukherjee
=Action= displays the available decommissions types in magneto
=Status=working 
=========================================================================*/       
        protected void Dcom_SumbitBtn_Click(object sender, EventArgs e)
        {
            string c1, c2;
            c1 = D_Infra.Text;
            c2 = DropDownList4.SelectedValue;
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
                    cmd.CommandText = "insert into [Audit_Decomission](CR_Number,Infrastructure_CI_Name,Decommission_Type,Transaction_Timestamp,Transaction_Status) values (@var1,@var2,@var3,@var4,@var5)";
                    cmd.Parameters.AddWithValue("@var1", CR);
                    cmd.Parameters.AddWithValue("@var2", c1);
                    cmd.Parameters.AddWithValue("@var3", c2);
                    cmd.Parameters.AddWithValue("@var4", c3);
                    cmd.Parameters.AddWithValue("@var5", "I");
                    int rowsAffected = cmd.ExecuteNonQuery();
                    int test = rowsAffected;
                    if (rowsAffected == 1)

                    {
                        
                       // Response.Redirect("WebForm3.aspx");
                        T5.Visible = true;
                        Final1.Visible = true;
                    }

                    else
                    {
                        Response.Redirect("Choice.aspx");
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
=Function= button click event for the move to amend amend existing entry        
=Developed By= Proloy Mukherjee
=Action= moves to the corresponding grid for changing the data  
=Status=
=========================================================================*/   

        protected void move_toGrid1(object sender, EventArgs e) {
           
            Session["value11"] = "2";
            Response.Redirect("WebForm4.aspx");
        }

        /*======================Magneto==========================================
 =Function= button click event for the move to amend amend existing entry        
 =Developed By= Proloy Mukherjee
 =Action= moves to the corresponding grid for changing the data  
 =Status=
 =========================================================================*/
        protected void move_toGrid(object sender, EventArgs e)
        {
            Session["value11"] = "1";
            Response.Redirect("WebForm4.aspx");
        }

        /*======================Magneto==========================================
=Function=
=Developed By= Proloy Mukherjee
=Action=
=Status= IDLE / Not used 
=========================================================================*/
        protected void Infra_Add_Click(object sender, EventArgs e)
        {
            CI_Name.Text = "";
            System_Environment.Text = "";
            Primary_Capability.Text = "";
            Owner.Text = "";
            Supported_By.Text = "";
            System_Role.Text = "";

        }
        /*======================Magneto==========================================
=Function=
=Developed By= Proloy Mukherjee
=Action=
=Status=
=========================================================================*/

        protected void Workflow1(object sender, EventArgs e) {
            Response.Redirect("http://aglitremedyuat.agl.com.au:8080/arsys ");

        }

        /*======================Magneto==========================================
=Function=
=Developed By= Proloy Mukherjee
=Action=
=Status=
=========================================================================*/
        protected void decom1(object sender, EventArgs e) {
            if (DecomCBOX.SelectedValue == "Decommission Of Infrastructure") { BPanel5.Visible = true; }
            if (DecomCBOX.SelectedValue == "Decommission Of Application") { BPanel6.Visible = true; }
            if (DecomCBOX.SelectedValue == "Decommission of Application and Infrastructure")
            {
                BPanel6.Visible = true;
                BPanel5.Visible = true;
            }
           
            BPanel7.Visible = false;
            Button29.Visible = false;
        }

        /*======================Magneto==========================================
=Function=
=Developed By= Proloy Mukherjee
=Action=
=Status=
=========================================================================*/
        protected void Check1(object sender, EventArgs e)
        {

            string b1, b2, b3, b4, b5, b6, b7, b8;
            DateTime b9;
            b1 = A_CR_Number.Text;
            b2 = Application_ID.Text;
            b3 = DropDownList2.SelectedValue;
            b4 = DropDownList1.SelectedValue;
            b5 = DropDownList3.SelectedValue;
            b6 = Environment_Instance.Text;
            b7 = Application_Name.Text;
            b9 = DateTime.Now;
            b8 = "1";
       
        }
        /*======================Magneto==========================================
=Function=
=Developed By= Proloy Mukherjee
=Action=
=Status=
=========================================================================*/
        protected void Check2(object sender, EventArgs e)
        {
            string a1, a2, a3, a4, a5, a6, a7, a8, a9;
            System_Environment.Text = DropDownList5.SelectedValue;

            a1 = CI_Name.Text;
            a2 = System_Environment.Text;
            a3 = Primary_Capability_list.SelectedValue;
           // a3 = Primary_Capability.Text;
            a4 = Owner.Text;
            a5 = DropDownList6.SelectedValue;
            a6 = System_Role.Text;
            a7 = Site.Text;
            a8 = OEM_Supported.Text;
            a9 = I_CR_Num.Text;
           

        }
        /*======================Magneto==========================================
=Function=
=Developed By= Proloy Mukherjee
=Action=
=Status=
=========================================================================*/
        protected void Submit(object sender, EventArgs e)
        {
            Session["value11"] = "3";
            Response.Redirect("WebForm4.aspx");

        }

        protected void Test(object sender, EventArgs e)
        {
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///////////////////////////////////Generate Token/////////////////////////////////////////////////////////////
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

            List<string> AppCI = new List<string>();
            List<string> InfraCI = new List<string>();


            var js10 = new JavaScriptSerializer();
            var d10 = js10.Deserialize<dynamic>(Convert.ToString(jsonResponse10));



            string f10 = d10["entries"][0]["values"]["Request Description01"];

            string f11 = d10["entries"][1]["values"]["Request Description01"];
            int n = 0;
            dynamic jsonObj = JsonConvert.DeserializeObject(response10.Content);
            foreach (var obj in jsonObj.entries)
            {
                n = n + 1;

            }
            for (int x = 0; x < n; x++)
            {
                if (d10["entries"][x]["values"]["Lookup Keyword"] == "BMC_APPLICATION")
                {
                    string Value = d10["entries"][x]["values"]["Request Description01"];
                    AppCI.Add(Value);
                }

                if (d10["entries"][x]["values"]["Lookup Keyword"] == "BMC_COMPUTERSYSTEM")
                {
                    string Value = d10["entries"][x]["values"]["Request Description01"];
                    InfraCI.Add(Value);
                }

            }

            //DL3.DataSource = AppCI;
            //DL3.DataBind();
            //DL4.DataSource = InfraCI;
            //DL4.DataBind();
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


        }

        protected void drop_date_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
                     

            string connString = @"Server=10.208.24.6,52676;Database=Arsystem1;Integrated Security=False;User Id=test;Password=test;MultipleActiveResultSets=true";
            string query = "SELECT  [Site]  FROM [dbo].[SIT_Site_Alias_Company_LookUp] Where[Site_Group] = '" +DropDownList9.SelectedValue+"'";

            SqlConnection conn = new SqlConnection(connString);
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();

            // create data adapter
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            // this will query your database and return the result to your datatable
            da.Fill(ds);
            Site.DataSource = ds;
            Site.DataValueField = Convert.ToString( ds.Site);
            Site.DataBind();
            Site.Items.Insert(0, new ListItem("Select", "0"));
            conn.Close();
            da.Dispose();
            UpdatePanel.Update();
            

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
            request.AddHeader("Postman-Token", "2332ba70-dcf1-4e0b-b248-8ad5c17500b3,f1624587-65bb-4734-87f7-25dc90c7e437");
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
            var client10 = new RestClient("https://jirauat.mobile.agl.com.au/api/arsys/v1/entry/CHG:Associations?q=%27Request%20ID02%27=%22CRQ000000087001%20%22");
            var request10 = new RestRequest(Method.GET);
            request10.AddHeader("cache-control", "no-cache");
            request10.AddHeader("Connection", "keep-alive");
            request10.AddHeader("Accept-Encoding", "gzip, deflate");
            request.AddHeader("Host", "jirauat.mobile.agl.com.au");
            request10.AddHeader("Postman-Token", "b9f14d6d-19ca-4d17-a820-daf1154bd2db,5fd63ab8-cfe2-456d-96f3-45b5da106246");
            request10.AddHeader("Cache-Control", "no-cache");
            request10.AddHeader("Accept", "*/*");
            request10.AddHeader("User-Agent", "PostmanRuntime/7.16.3");
            request10.AddHeader("Content-Type", "application/json");
            request10.AddHeader("Authorization", tokenPass);
            IRestResponse response10 = client10.Execute(request10);

            JObject jsonResponse10 = (JObject)JsonConvert.DeserializeObject(response10.Content);

            dynamic json = JValue.Parse(response10.Content);
           
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
           
            //      Label2.Text = Convert.ToString( jsonResponse10) ;

            List<string> AppCI = new List<string>();
            List<string> InfraCI = new List<string>();
            AppCI.Add("Select");
            InfraCI.Add("Select");

            var js10 = new JavaScriptSerializer();
            var d10 = js10.Deserialize<dynamic>(Convert.ToString(jsonResponse10));
            int m = 1;
            int n = 0;
            dynamic jsonObj = JsonConvert.DeserializeObject(response10.Content);


            Dictionary<string, object> csObj =
    js10.Deserialize<Dictionary<string, object>>(response10.Content);
            n = ((ArrayList)csObj["entries"]).Count;
            // Label2.Text = Convert.ToString(n);

           


            for (int x = 0; x < n; x++)
            {

                if (d10["entries"][x]["values"]["Lookup Keyword"] == "BMC_APPLICATION")
                {
                    string Value1 = d10["entries"][x]["values"]["Request Description01"];
                    AppCI.Add(Value1);
                }

                if (d10["entries"][x]["values"]["Lookup Keyword"] == "BMC_COMPUTERSYSTEM")
                {
                    string Value2 = d10["entries"][x]["values"]["Request Description01"];
                    InfraCI.Add(Value2);
                }

            }



            DL3.DataSource = AppCI;
            DL3.DataBind();
            DL4.DataSource = InfraCI;
            DL4.DataBind();
            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


        }
    }

}
   



