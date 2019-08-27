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
      
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.IsAuthenticated)
            {
                
                Label1.Text = System.Security.Claims.ClaimsPrincipal.Current.FindFirst("name").Value;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            CR = Convert.ToString(TBox1.Text);
            Session["CR_Num"] = CR;
            Response.Redirect("WebForm5.aspx");
        }
        protected void Login_Click(object sender, EventArgs e)
        {

            Context.GetOwinContext().Authentication.Challenge(
    new AuthenticationProperties { RedirectUri = "/" },
    OpenIdConnectAuthenticationDefaults.AuthenticationType);
        }

        protected void Loginout_Click(object sender, EventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(
               OpenIdConnectAuthenticationDefaults.AuthenticationType,
               CookieAuthenticationDefaults.AuthenticationType);
        }
    }
}