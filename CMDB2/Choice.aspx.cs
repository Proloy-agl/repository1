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
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string choiceA, choiceB, choiceC, choiceD, choiceE,choiceF;
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (CheckBox1.Checked) { choiceA = Convert.ToString("1"); Session["value1"] = choiceA; } else { Session["value1"] = "5"; };
            if (CheckBox2.Checked) { choiceB = Convert.ToString("1"); Session["value2"] = choiceB; } else { Session["value2"] = "5"; };
            if (CheckBox3.Checked) { choiceC = Convert.ToString("1"); Session["value3"] = choiceC; } else { Session["value3"] = "5"; };
            if (CheckBox4.Checked) { choiceD = Convert.ToString("1"); Session["value4"] = choiceD; } else { Session["value4"] = "5"; };
            if (CheckBox5.Checked) { choiceE = Convert.ToString("1"); Session["value5"] = choiceE; } else { Session["value5"] = "5"; };
            if (CheckBox6.Checked) { choiceF = Convert.ToString("1"); Session["value6"] = choiceF; } else { Session["value6"] = "5"; };

            if ((choiceA == "1") && (choiceB != "1") && (choiceC != "1") && (choiceD != "1")&& (choiceE != "1")&& (choiceF != "1"))
            {
                Response.Redirect("Choice.aspx");
            }    
                Response.Redirect("WebForm3.aspx");
       
        }
    }
}