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
            if (Request.UrlReferrer == null)
            {
                Response.Redirect("LoginSSO.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            CR = Convert.ToString(TBox1.Text);
            Session["CR_Num"] = CR;
            Button1.Visible = false;
            Response.Redirect("WebForm5.aspx");
         
        }
      
    }
}