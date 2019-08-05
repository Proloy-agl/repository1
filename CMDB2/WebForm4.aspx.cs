using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMDB2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
       public int varA;
        protected void Page_Load(object sender, EventArgs e)
        {
            varA = Convert.ToInt16(Session["value11"]);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (varA == 1) { 
            GridView1.Visible = true;
            }
            if (varA == 2) { 
            GridView2.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm3.aspx");
        }
    }
}