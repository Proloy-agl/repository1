using Microsoft.Owin.Security;
using Microsoft.Owin.Security.Cookies;
using Microsoft.Owin.Security.OpenIdConnect;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
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
            //if (Request.UrlReferrer == null)
            //{
            //    Response.Redirect("LoginSSO.aspx");
            //}

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
            ////////////////////////////////////////////////////////////////////////////
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
          
            Response.Redirect("WebForm5.aspx");
         
        }
      
    }
}