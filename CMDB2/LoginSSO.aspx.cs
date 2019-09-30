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
    public partial class LoginSSO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.IsAuthenticated)
            {
                Label1.Text = System.Security.Claims.ClaimsPrincipal.Current.FindFirst("name").Value;
            }
            try
            {
                Context.GetOwinContext().Authentication.Challenge(
        new AuthenticationProperties { RedirectUri = "https://magnetodev.azurewebsites.net/Login.aspx" },
        OpenIdConnectAuthenticationDefaults.AuthenticationType);
            }
            catch (Exception ex)
            {
                Response.Redirect("LoginSSO.aspx");
            }


        }

        protected void Login_Click(object sender, EventArgs e)
        {
            try { 
            Context.GetOwinContext().Authentication.Challenge(
    new AuthenticationProperties { RedirectUri = "https://magnetodev.azurewebsites.net/Login.aspx" },
    OpenIdConnectAuthenticationDefaults.AuthenticationType);
            }
            catch (Exception ex)
            {
                Response.Redirect("LoginSSO.aspx");
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