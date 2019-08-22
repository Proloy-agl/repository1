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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            CR = Convert.ToString(TBox1.Text);
            Session["CR_Num"] = CR;
            Response.Redirect("WebForm5.aspx");
        }
    }
}