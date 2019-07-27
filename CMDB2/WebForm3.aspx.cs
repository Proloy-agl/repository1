using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMDB2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ChoiceA, ChoiceB, ChoiceC, ChoiceD, ChoiceE,ChoiceF;
            int ValA, ValB, ValC, ValD, ValE,ValF;

            ValA = Convert.ToInt32(ChoiceA = Session["value1"].ToString());
            ValB = Convert.ToInt32(ChoiceB = Session["value2"].ToString());
            ValC = Convert.ToInt32(ChoiceC = Session["value3"].ToString());
            ValD = Convert.ToInt32(ChoiceD = Session["value4"].ToString());
            ValE = Convert.ToInt32(ChoiceE = Session["value5"].ToString());
            ValF = Convert.ToInt32(ChoiceF = Session["value6"].ToString());
            if (ValE == 1)
            {
                BPanel1.Visible = false;
                BPanel2.Visible = false;
                BPanel3.Visible = false;
                BPanel4.Visible = false;
                BPanel6.Visible = false;
            }
            if (ValF == 1)
            {
                BPanel1.Visible = false;
                BPanel2.Visible = false;
                BPanel3.Visible = false;
                BPanel4.Visible = false;
                BPanel5.Visible = false;
                
            }

            if ((ValA == 1) && (ValB != 1) && (ValC != 1) && (ValD != 1))
            {
                BPanel5.Visible = false;
                BPanel6.Visible = false;

            }
            if ((ValA == 0) && (ValB == 1) && (ValC != 1) && (ValD != 1))
            {
                BPanel5.Visible = false;
                BPanel6.Visible = false;

            }
            if ((ValC == 1) && (ValB != 1) && (ValA != 1) && (ValD != 1))
            {
                BPanel1.Visible = false;
                BPanel5.Visible = false;
                BPanel6.Visible = false;




            }
            if ((ValD == 1) && (ValB != 1) && (ValC != 1) && (ValA != 1))
            {
                BPanel1.Visible = false;
                BPanel2.Visible = false;
                BPanel3.Visible = false;
                BPanel5.Visible = false;
                BPanel6.Visible = false;
            }
            if ((ValA == 1) && (ValC == 1) && (ValB != 1) && (ValD != 1))
            {
                BPanel5.Visible = false;
                BPanel6.Visible = false;
            }
            if ((ValA == 1) && (ValD == 1) && (ValC != 1) && (ValB != 1))
            {
                BPanel5.Visible = false;
                BPanel6.Visible = false;
            }
            if ((ValC == 1) && (ValB == 1) && (ValA != 1) && (ValD != 1))
            {
                BPanel5.Visible = false;
                BPanel6.Visible = false;
            }
            if ((ValD == 1) && (ValB == 1) && (ValC != 1) && (ValA != 1))
            {
                BPanel5.Visible = false;
                BPanel6.Visible = false;
            }
            if ((ValC == 1) && (ValD == 1) && (ValA != 1) && (ValB != 1))
            {
                BPanel1.Visible = false;
                BPanel5.Visible = false;
                BPanel6.Visible = false;
            }
            if ((ValA == 1) && (ValB == 1) && (ValC == 1) && (ValD == 1))
            {
                BPanel5.Visible = false;
                BPanel6.Visible = false;
            }
            if ((ValA == 1) && (ValB == 1) && (ValC == 1) && (ValD != 1))
            {
                BPanel5.Visible = false;
                BPanel6.Visible = false;
            }
            if ((ValD == 1) && (ValB != 1) && (ValC == 1) && (ValA == 1))
            {
                BPanel5.Visible = false;
                BPanel6.Visible = false;
            }
            if ((ValD == 1) && (ValC != 1) && (ValB == 1) && (ValA == 1))
            {
                BPanel5.Visible = false;
                BPanel6.Visible = false;
            }
        }
    }
}