using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMDB2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ChoiceA;
            int ValA;
            ValA = Convert.ToInt32(ChoiceA = Session["value1"].ToString());
            if (ValA == 1)
            {
                GridView1.Visible = true;
              
            }
        }
    }
}