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
        public string opt;
        public int a;
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel7.Visible = true;
            if (Label15.Text == "2")
            {
                Button13.Visible = true;
            }
            else { Button13.Visible = false; }

            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
           string ChoiceA, ChoiceB, ChoiceC, ChoiceD, ChoiceE;
             int ValA, ValB, ValC, ValD, ValE;

             ValA = Convert.ToInt32(ChoiceA = Session["value1"].ToString());
             ValB = Convert.ToInt32(ChoiceB = Session["value2"].ToString());
             ValC = Convert.ToInt32(ChoiceC = Session["value3"].ToString());
             ValD = Convert.ToInt32(ChoiceD = Session["value4"].ToString());
             ValE = Convert.ToInt32(ChoiceE = Session["value5"].ToString());


             if (ValE ==1)
             {
                 Button1.Visible = false;
                 Button2.Visible = false;
                 Button3.Visible = false;
                 Button4.Visible = false;
                Button13.Visible = false;
            }

             if ((ValA == 1) && (ValB != 1) && (ValC != 1) && (ValD != 1))
             {
                 Button5.Visible = false;
                
            }
             if ((ValA == 0) && (ValB == 1) && (ValC != 1) && (ValD != 1))
             {
                 Button5.Visible = false;
               
            }
             if ((ValC == 1) && (ValB != 1) && (ValA != 1) && (ValD != 1))
             {
               //Button1.Visible = false;
               //Button5.Visible = false;
                
                Button1.Text = "Not available for this choice";
                Button5.Text = "Not available for this choice";
                
                
            }
             if ((ValD == 1) && (ValB != 1) && (ValC != 1) && (ValA != 1))
             {
                 Button1.Visible = false;
                 Button2.Visible = false;
                 Button3.Visible = false;
                 Button5.Visible = false;
             }
             if ((ValA == 1) && (ValC == 1) && (ValB != 1) && (ValD != 1))
             {
                 Button5.Visible = false;
             }
             if ((ValA == 1) && (ValD == 1) && (ValC != 1) && (ValB != 1))
             {
                 Button5.Visible = false;
             }
             if ((ValC == 1) && (ValB == 1) && (ValA != 1) && (ValD != 1))
             {
                 Button5.Visible = false;
             }
             if ((ValD == 1) && (ValB == 1) && (ValC != 1) && (ValA != 1))
             {
                 Button5.Visible = false;
             }
             if ((ValC == 1) && (ValD == 1) && (ValA != 1) && (ValB != 1))
             {
                 Button1.Visible = false;
                 Button5.Visible = false;
             }
             if ((ValA == 1) && (ValB == 1) && (ValC == 1) && (ValD == 1))
             {
                 Panel6.Visible = false;
             }
             if ((ValA == 1) && (ValB == 1) && (ValC == 1) && (ValD != 1))
             {
                 Panel6.Visible = false;
             }
             if ((ValD == 1) && (ValB != 1) && (ValC == 1) && (ValA == 1))
             {
                 Panel6.Visible = false;
             }
             if ((ValD == 1) && (ValC != 1) && (ValB == 1) && (ValA == 1))
             {
                 Panel6.Visible = false;
             }

            

        }

        public void Button1_Click(object sender, EventArgs e)
        {

      

            if (Label15.Text == "1")
            {
                Panel7.Visible = false;
                Panel2.Visible = true;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;

            }

            if (Label15.Text == "2")
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel8.Visible = true;
                Panel6.Visible = false;
                Panel7.Visible = false;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            

            if (Label15.Text == "1")
            {
                Panel3.Visible = true;
                Panel2.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;
                Panel7.Visible = false;
            }
            if (Label15.Text == "2")
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel8.Visible = true;
                Panel6.Visible = false;
                Panel7.Visible = false;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Label15.Text == "1")
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = true;
                Panel5.Visible = false;
                Panel6.Visible = false;
                Panel7.Visible = false;
            }
            if (Label15.Text == "2")
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel8.Visible = true;
                Panel6.Visible = false;
                Panel7.Visible = false;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Label15.Text == "1")
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = true;
                Panel6.Visible = false;
                Panel7.Visible = false;
            }
            if (Label15.Text == "2")
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel8.Visible = true;
                Panel6.Visible = false;
                Panel7.Visible = false;
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
           
            if (Label15.Text == "1")
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = true;
                Panel7.Visible = false;
            }
        }

        protected void Button13_Click(object sender, EventArgs e)
        {

            if (Label15.Text == "1")
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel8.Visible = true;
                Panel6.Visible = false;
                Panel7.Visible = false;

            }
        }

        public void Button12_Click(object sender, EventArgs e)
        {
            Label15.Text = "2";
            Panel7.Visible = false;
            return;
        }

        public void  Button11_Click(object sender, EventArgs e)
        {
            Label15.Text = "1";
            Panel7.Visible = false;
           
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel7.Visible = false;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Panel7.Visible = false;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Panel7.Visible = false;
        }


    }
}