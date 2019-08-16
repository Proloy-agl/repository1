using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMDB2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string CR;
        public int CR_Num;
        protected void Page_Load(object sender, EventArgs e)
        {
            
         CR=Session["CR_Num"].ToString();
        CR_Num=Convert.ToInt32(CR = Session["CR_Num"].ToString());
        }
        public string choiceA, choiceB, choiceC, choiceD, choiceE,choiceF;

        protected void Button2_Click(object sender, EventArgs e)
        {

            P1.Visible = true;
            P2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
            Session["valueR"] = 1;

            choiceF = Convert.ToString("1");
            Session["value6"] = choiceF;
            Response.Redirect("WebForm4.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (CheckBox1.Checked) { choiceA = Convert.ToString("1"); Session["value1"] = choiceA; } else { choiceA = Convert.ToString("5"); Session["value1"] = "5"; };
            if (CheckBox2.Checked) { choiceB = Convert.ToString("1"); Session["value2"] = choiceB; } else { choiceB = Convert.ToString("5"); Session["value2"] = "5"; };
            if (CheckBox3.Checked) { choiceC = Convert.ToString("1"); Session["value3"] = choiceC; } else { choiceC = Convert.ToString("5"); Session["value3"] = "5"; };
            if (CheckBox4.Checked) { choiceD = Convert.ToString("1"); Session["value4"] = choiceD; } else { choiceD = Convert.ToString("5"); Session["value4"] = "5"; };
            if (CheckBox5.Checked) { choiceE = Convert.ToString("1"); Session["value5"] = choiceE; } else { choiceE = Convert.ToString("5"); Session["value5"] = "5"; };
            //if (CheckBox6.Checked) { choiceF = Convert.ToString("1"); Session["value6"] = choiceF; } else { choiceF = Convert.ToString("5"); Session["value6"] = "5"; };
           
            if ((choiceA == "5") && (choiceB == "5") && (choiceC == "5") && (choiceD == "5")&& (choiceE == "5")&& (choiceF == "5"))
            {
                Response.Redirect("Choice.aspx");
            }
            Response.Redirect("WebForm3.aspx");

        }
    }
}