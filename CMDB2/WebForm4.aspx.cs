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
       public int varA,varB, ValF;
        public string CR;
        public int CR_Num;

        protected void Page_Load(object sender, EventArgs e)
        {
            string ChoiceF;
            
            varA = Convert.ToInt16(Session["value11"]);
            varB = Convert.ToInt16(Session["valueR"]);
            ValF = Convert.ToInt32(ChoiceF = Session["value6"].ToString());
            CR = Session["CR_Num"].ToString();
            CR_Num = Convert.ToInt32(CR = Session["CR_Num"].ToString());
            Label2.Text = CR;
            TextBox1.Text = CR;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (varA == 1) {
                panel456.Visible = true;
            GridView4.Visible = true;
                GridView5.Visible = false;
            }
            if (varA == 2) {
                panel456.Visible = true;
            GridView5.Visible = true;
                GridView4.Visible = false;
            }
            if (ValF== 1)
            {
                panel456.Visible = true;
                //GridView1.Visible = true;
                //GridView2.Visible = true;
                GridView4.Visible = true;
                GridView5.Visible = true;
                GridView3.Visible = true;

            }
            if (varA == 3) {
                panel456.Visible = true;
                //GridView1.Visible = true;
                //GridView2.Visible = true;
                GridView4.Visible = true;
                GridView5.Visible = true;
                GridView3.Visible = true;
                GridView1.Visible = true;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm3.aspx");
        }
    }
}