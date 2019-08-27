using Microsoft.Owin.Security;
using Microsoft.Owin.Security.Cookies;
using Microsoft.Owin.Security.OpenIdConnect;
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
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.IsAuthenticated)
            {
                
                UsrName.Text = System.Security.Claims.ClaimsPrincipal.Current.FindFirst("name").Value;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            CR = Convert.ToString(TBox1.Text);
            Session["CR_Num"] = CR;
            Button1.Visible = false;
          LoginPanel.Visible = true;
        }
        protected void Login_Click(object sender, EventArgs e)
        {

            CR = Convert.ToString(TBox1.Text);
            Session["CR_Num"] = CR;
            

            Context.GetOwinContext().Authentication.Challenge(
       new AuthenticationProperties { RedirectUri = "https://magnetodev.azurewebsites.net/WebForm3.aspx" },
            OpenIdConnectAuthenticationDefaults.AuthenticationType);
            if (Request.IsAuthenticated)
            {
                CR = Convert.ToString(TBox1.Text);
                Session["CR_Num"] = CR;
                UsrName.Text = System.Security.Claims.ClaimsPrincipal.Current.FindFirst("name").Value;
                Session["UserName"] = Convert.ToString(UsrName.Text);
              //  Response.Redirect("WebForm5.aspx");
            }
        }

        protected void Loginout_Click(object sender, EventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(
               OpenIdConnectAuthenticationDefaults.AuthenticationType,
               CookieAuthenticationDefaults.AuthenticationType);
        }
    }
}