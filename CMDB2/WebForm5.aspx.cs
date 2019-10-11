using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMDB2
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        public string choiceA, choiceB, choiceC, choiceD, choiceE, choiceF;
        /*======================Magneto==========================================
=Function= Page load for the homepage for Magneto interface 
=Developed By= Proloy Mukherjee
=Action=  Display the list of choices available for user in Magneto in Tiles like fashion, also receives the user name and passes to display 
=Status= working 
=========================================================================*/
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.UrlReferrer == null)
            {
                Response.Redirect("LoginSSO.aspx");
            }
            
  //Label4.Text = System.Security.Claims.ClaimsPrincipal.Current.FindFirst("name").Value;
           
        }

        /*======================Magneto==========================================
=Function= Captures user initial choice if the same is for updating the CR details and redirects WebForm4 
=Developed By= Proloy Mukherjee
=Action= user selected updating existing CR for an open CR category 
=Status=Working 
=========================================================================*/
        protected void Button1_Click(object sender, EventArgs e)
        {
            string choiceF="";
            Session["valueR"] = 1;

            choiceF = Convert.ToString("1");
            Session["value6"] = choiceF;
            Response.Redirect("WebForm4.aspx");
        }
        /*======================Magneto==========================================
=Function= First choice modal box submit function for creating new entries for a CR
=Developed By= Proloy Mukherjee
=Action= On click event for modal submissions for the choices available on selecting the "I am in process of creating a new CR" tile
=Status=working 
=========================================================================*/

        protected void modal_Submit(object sender, EventArgs e) {
            if (CheckBox6.Checked) { choiceA = Convert.ToString("1"); Session["value1"] = choiceA; } else { choiceA = Convert.ToString("5"); Session["value1"] = "5"; };
            if (CheckBox7.Checked) { choiceB = Convert.ToString("1"); Session["value2"] = choiceB; } else { choiceB = Convert.ToString("5"); Session["value2"] = "5"; };
            if (CheckBox8.Checked) { choiceC = Convert.ToString("1"); Session["value3"] = choiceC; } else { choiceC = Convert.ToString("5"); Session["value3"] = "5"; };
            if (CheckBox9.Checked) { choiceD = Convert.ToString("1"); Session["value4"] = choiceD; } else { choiceD = Convert.ToString("5"); Session["value4"] = "5"; };
            if (CheckBox10.Checked){ choiceE = Convert.ToString("1"); Session["value5"] = choiceE; } else { choiceE = Convert.ToString("5"); Session["value5"] = "5"; };
          //if (CheckBox6.Checked) { choiceF = Convert.ToString("1"); Session["value6"] = choiceF; } else { choiceF = Convert.ToString("5"); Session["value6"] = "5"; };

            if ((choiceA == "5") && (choiceB == "5") && (choiceC == "5") && (choiceD == "5") && (choiceE == "5") && (choiceF == "5"))
            {
                Response.Redirect("Choice.aspx");
            }
            Response.Redirect("WebForm3.aspx");
        }
    }
}