using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CMDB2
{

   
    public partial class WebForm3 : System.Web.UI.Page
    {
        public int Y1, Y2, Y3, Y4, Y5;
        public string CR;
        public int CR_Num;

        SqlConnection con = new SqlConnection("Data Source=transformationdev.database.windows.net;Initial Catalog=CMDB_DB_DEV;User ID=Transadmin;Password=Trans$@dmin");

        protected void Page_Load(object sender, EventArgs e)
        {
            string ChoiceA, ChoiceB, ChoiceC, ChoiceD, ChoiceE, ChoiceF;
       int ValA, ValB, ValC, ValD, ValE, ValF;

            ValA = Convert.ToInt32(ChoiceA = Session["value1"].ToString());
            ValB = Convert.ToInt32(ChoiceB = Session["value2"].ToString());
            ValC = Convert.ToInt32(ChoiceC = Session["value3"].ToString());
            ValD = Convert.ToInt32(ChoiceD = Session["value4"].ToString());
            ValE = Convert.ToInt32(ChoiceE = Session["value5"].ToString());
            ValF = 5;
           
            CR = Session["CR_Num"].ToString();
            CR_Num = Convert.ToInt32(CR = Session["CR_Num"].ToString());
            I_CR_Num.Text =CR;
            A_CR_Number.Text = CR;
            if (ValE == 1)
            {
                BPanel7.Visible = true;
                BPanel1.Visible = false;
                BPanel2.Visible = false;
                BPanel3.Visible = false;
                BPanel4.Visible = false;
                BPanel6.Visible = false;
                BPanel5.Visible = false;
                Button29.Visible = true;


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
                //BPanel6.Visible = false;
                Button2.Disabled = true;
                Button3.Disabled = true;
                Button4.Disabled = true;
                BPanel7.Visible = false;

            }
            if ((ValA != 1) && (ValB == 1) && (ValC != 1) && (ValD != 1))
            {
                BPanel5.Visible = false;
               
                BPanel1.Visible = false;
                Button3.Disabled = true;
                Button4.Disabled = true;
                BPanel7.Visible = false;
            }
            if ((ValC == 1) && (ValB != 1) && (ValA != 1) && (ValD != 1))
            {
                BPanel1.Visible = false;
                BPanel5.Visible = false;
                BPanel7.Visible = false;
                BPanel2.Visible = false;
                BPanel4.Visible = false;
                Button28.Visible = true;



            }
            if ((ValD == 1) && (ValB != 1) && (ValC != 1) && (ValA != 1))
            {
                BPanel1.Visible = false;
                BPanel2.Visible = false;
                BPanel3.Visible = false;
                BPanel5.Visible = false;
                Button28.Visible = true;
                BPanel7.Visible = false;
            }
            if ((ValA == 1) && (ValC == 1) && (ValB != 1) && (ValD != 1))
            {
                BPanel5.Visible = false;
                BPanel7.Visible = false;
                Button2.Disabled = true;
                Button3.Disabled = true;
                Button4.Disabled = true;
            }
            if ((ValA == 1) && (ValD == 1) && (ValC != 1) && (ValB != 1))
            {
                BPanel5.Visible = false;
                BPanel7.Visible = false;
                Button2.Disabled = true;
                Button3.Disabled = true;
                Button4.Disabled = true;
            }
            if ((ValC == 1) && (ValB == 1) && (ValA != 1) && (ValD != 1))
            {
                BPanel5.Visible = false;
                BPanel7.Visible = false;
                BPanel1.Visible = false;
                Button3.Disabled = true;
                Button4.Disabled = true;
            }
            if ((ValD == 1) && (ValB == 1) && (ValC != 1) && (ValA != 1))
            {
                BPanel5.Visible = false;
                BPanel7.Visible = false;
                BPanel1.Visible = false;
                Button3.Disabled = true;
                Button4.Disabled = true;
            }
            if ((ValC == 1) && (ValD == 1) && (ValA != 1) && (ValB != 1))
            {
                BPanel1.Visible = false;
                BPanel5.Visible = false;
               
            }
            if ((ValA == 1) && (ValB == 1) && (ValC == 1) && (ValD == 1))
            {
                BPanel5.Visible = false;
                BPanel7.Visible = false;
                Button2.Disabled = true;
                Button3.Disabled = true;
                Button4.Disabled = true;
            }
            if ((ValA == 1) && (ValB == 1) && (ValC == 1) && (ValD != 1))
            {
                BPanel5.Visible = false;
                BPanel7.Visible = false;
                Button2.Disabled = true;
                Button3.Disabled = true;
                Button4.Disabled = true;
            }
            if ((ValD == 1) && (ValB != 1) && (ValC == 1) && (ValA == 1))
            {
                BPanel5.Visible = false;
                BPanel7.Visible = false;
                Button2.Disabled = true;
                Button3.Disabled = true;
                Button4.Disabled = true;
            }
            if ((ValD == 1) && (ValC != 1) && (ValB == 1) && (ValA == 1))
            {
                BPanel5.Visible = false;
                BPanel7.Visible = false;
                Button2.Disabled = true;
                Button3.Disabled = true;
                Button4.Disabled = true;
            }
            if ((ValC == 1) && (ValD == 1) && (ValA != 1) && (ValB == 1))
            {
                BPanel5.Visible = false;
                BPanel7.Visible = false;
                BPanel1.Visible = false;
                Button3.Disabled = true;
                Button4.Disabled = true;
            }
            if ((ValC != 1) && (ValD != 1) && (ValA == 1) && (ValB == 1))
            {
                BPanel5.Visible = false;
                BPanel7.Visible = false;
                Button3.Disabled = true;
                Button4.Disabled = true;

            }
            if ((ValC != 1) && (ValD != 1) && (ValA != 1) && (ValB != 1)&&(ValE!=1))
            {
                Response.Redirect("Choice.aspx");
                          

            }


        }

        protected void Infra_SumbitBtn_Click(object sender, EventArgs e)
        {
            
            string a1, a2, a3, a4, a5, a6, a7, a8, a9;
            int a10, a11;
            DateTime a12;
            System_Environment.Text = DropDownList5.SelectedValue;
            string a13;
            a1 = CI_Name.Text;
            a2 = System_Environment.Text;
            a3 = Primary_Capability.Text;
            a4 = Owner.Text;
            a5 = DropDownList6.SelectedValue;
            a6 = System_Role.Text;
            a7 = Site.Text;
            a8 = OEM_Supported.Text;
            a9 = I_CR_Num.Text;
            a10 = 1;
            a11 = 1;
            a12 = DateTime.Now;
            a13 = "pass";
            string connString = "Data Source=transformationdev.database.windows.net;Initial Catalog=CMDB_DB_DEV;User ID=Transadmin;Password=Trans$@dmin";
            SqlConnection conn = null;

            try
            {
                conn = new SqlConnection(connString);
                conn.Open();

                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into [Audit_Infrastructure_CI](CR_Number,CI_Name,System_Environment,Primary_Capability,Owner,Supported_By,System_Role,Site,OEM_Supported,Transaction_Timestamp,Transaction_Status) values (@var9,@var1,@var2,@var3,@var4,@var5,@var6,@var7,@var8,@var12,@var13)";
                    cmd.Parameters.AddWithValue("@var9", a9);
                    cmd.Parameters.AddWithValue("@var1", a1);
                    cmd.Parameters.AddWithValue("@var2", a2);
                    cmd.Parameters.AddWithValue("@var3", a3);
                    cmd.Parameters.AddWithValue("@var4", a4);
                    cmd.Parameters.AddWithValue("@var5", a5);
                    cmd.Parameters.AddWithValue("@var6", a6);
                    cmd.Parameters.AddWithValue("@var7", a7);
                    cmd.Parameters.AddWithValue("@var8", a8);
                    cmd.Parameters.AddWithValue("@var12", a12);
                    cmd.Parameters.AddWithValue("@var13", a13);
                    int rowsAffected = cmd.ExecuteNonQuery();
                    int test = rowsAffected;
                    if (rowsAffected == 1)

                    {
                        T2.Visible = true;
                        Button3.Disabled = false;
                        Y2 = 1;
                        Button19.Visible = false;
                        Button20.Visible = true;
                        Final.Visible = true;
                        CI_Name.Text = "";
                        System_Environment.Text = "";
                        Primary_Capability.Text = "";
                        Owner.Text = "";
                        System_Role.Text = "";
                        Site.Text = "";
                        DropDownList6.SelectedValue = "Select";
                        DropDownList5.SelectedValue = "Select";
                        Button28.Visible = true;

                    }
                    else
                    {

                    }
                }
            }
            catch (Exception ex)
            {


            }
            finally
            {
                if (conn != null)
                {
                    //cleanup connection i.e close 
                }
            }
        }

        protected void App_SumbitBtn_Click(object sender, EventArgs e)
        {
            string b1, b2, b3, b4, b5, b6, b7, b8;
            DateTime b9;
            b1 = A_CR_Number.Text;
            b2 = Application_ID.Text;
            b3 = DropDownList2.SelectedValue;
            b4 = DropDownList1.SelectedValue;
            b5 = DropDownList3.SelectedValue;
            b6 = Environment_Instance.Text;
            b7 = Application_Name.Text;
            b9 = DateTime.Now;
            b8 = "1";
            
            string connString = "Data Source=transformationdev.database.windows.net;Initial Catalog=CMDB_DB_DEV;User ID=Transadmin;Password=Trans$@dmin";
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection(connString);
                conn.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into [Audit_Application_CI](CR_NUMBER,App_ID,Application_Name,Application_Category,Application_Complexity,Remedy_Group,Application_Environment,Transaction_Timestamp,Transaction_Status) values (@var1,@var2,@var3,@var4,@var5,@var6,@var7,@var8,@var9)";
                    cmd.Parameters.AddWithValue("@var1", b1);
                    cmd.Parameters.AddWithValue("@var2", b2);
                    cmd.Parameters.AddWithValue("@var3", b7);
                    cmd.Parameters.AddWithValue("@var4", b3);
                    cmd.Parameters.AddWithValue("@var5", b4);
                    cmd.Parameters.AddWithValue("@var6", b5);
                    cmd.Parameters.AddWithValue("@var7", b6);
                    cmd.Parameters.AddWithValue("@var8", b9);
                    cmd.Parameters.AddWithValue("@var9", b8);
                    int rowsAffected = cmd.ExecuteNonQuery();
                    int test = rowsAffected;
                    if (rowsAffected == 1)

                    {
                        
                       // Response.Redirect("WebForm3.aspx");
                        T1.Visible = true;
                        Button2.Disabled = false;
                        Y1 = 1;
                        Button19.Visible = true;
                        Final.Visible = true;
                       
                    }
                    else
                    {
                        Response.Redirect("Choice.aspx");
                    }

                }

            }
            catch (Exception ex)
            {


            }
            finally
            {
                if (conn != null)
                {
                    //cleanup connection i.e close 
                }
            }
        }

        protected void AtoI_SumbitBtn_Click(object sender, EventArgs e)
        {
            string c1, c2;
            c1 = TextBox11.Text;
            c2 = TextBox12.Text;
            DateTime c3 = DateTime.Now;
            string connString = "Data Source=transformationdev.database.windows.net;Initial Catalog=CMDB_DB_DEV;User ID=Transadmin;Password=Trans$@dmin";
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection(connString);
                conn.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into [Audit_Relationship_App_to_Infra](CR_Number,App_CI_Name,Infra_CI_Name,Transaction_Timestamp,Transaction_Status) values (@var1,@var2,@var3,@var4,@var5)";
                    cmd.Parameters.AddWithValue("@var1", CR);
                    cmd.Parameters.AddWithValue("@var2", c1);
                    cmd.Parameters.AddWithValue("@var3", c2);
                    cmd.Parameters.AddWithValue("@var4", c3);
                    cmd.Parameters.AddWithValue("@var5", "new");
                    int rowsAffected = cmd.ExecuteNonQuery();
                    int test = rowsAffected;
                    if (rowsAffected == 1)

                    {
                        
                       // Response.Redirect("WebForm3.aspx");
                        T3.Visible = true;
                        Button4.Disabled = false;
                        Y3 = 1;
                        Button20.Visible = false;
                        Button21.Visible = true;
                        Final.Visible = true;
                        TextBox11.Text = "";
                        TextBox12.Text = "";
                    }
                    else
                    {
                        Response.Redirect("Choice.aspx");
                    }
                }
            }
            catch (Exception ex)
            {


            }
            finally
            {
                if (conn != null)
                {
                    //cleanup connection i.e close 
                }
            }
        }
        protected void ItoI_SumbitBtn_Click(object sender, EventArgs e)
        {
            string c1, c2;
            c1 = TextBox13.Text;
            c2 = TextBox14.Text;
            DateTime c3 = DateTime.Now;
            string connString = "Data Source=transformationdev.database.windows.net;Initial Catalog=CMDB_DB_DEV;User ID=Transadmin;Password=Trans$@dmin";
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection(connString);
                conn.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into [Audit_Relationship_Infra_to_Infra](CR_Number,Parent_Infra_CI_Name,Child_Infra_CI_Name,Transaction_Timestamp,Transaction_Status) values (@var1,@var2,@var3,@var4,@var5)";
                    cmd.Parameters.AddWithValue("@var1", CR);
                    cmd.Parameters.AddWithValue("@var2", c1);
                    cmd.Parameters.AddWithValue("@var3", c2);
                    cmd.Parameters.AddWithValue("@var4", c3);
                    cmd.Parameters.AddWithValue("@var5", "new");
                    int rowsAffected = cmd.ExecuteNonQuery();
                    int test = rowsAffected;
                    if (rowsAffected == 1)

                    {
                       
                       // Response.Redirect("WebForm3.aspx");
                        T4.Visible = true;
                        Y4 = 1;
                        Button21.Visible = false;
                        Button28.Visible = true;
                        Final.Visible = true;
                        TextBox13.Text = "";
                        TextBox14.Text = "";
                    }
                    else
                    {
                        Response.Redirect("Choice.aspx");
                    }
                }
            }
            catch (Exception ex)
            {


            }
            finally
            {
                if (conn != null)
                {
                    //cleanup connection i.e close 
                }
            }
        }
        
        protected void Dcom_SumbitBtn_Click(object sender, EventArgs e)
        {
            string c1, c2;
            c1 = D_Infra.Text;
            c2 = DropDownList4.SelectedValue;
            DateTime c3 = DateTime.Now;
            string connString = "Data Source=transformationdev.database.windows.net;Initial Catalog=CMDB_DB_DEV;User ID=Transadmin;Password=Trans$@dmin";
            SqlConnection conn = null;
            try
            {
                conn = new SqlConnection(connString);
                conn.Open();
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into [Audit_Decomission](CR_Number,Infrastructure_CI_Name,Decommission_Type,Transaction_Timestamp,Transaction_Status) values (@var1,@var2,@var3,@var4,@var5)";
                    cmd.Parameters.AddWithValue("@var1", CR);
                    cmd.Parameters.AddWithValue("@var2", c1);
                    cmd.Parameters.AddWithValue("@var3", c2);
                    cmd.Parameters.AddWithValue("@var4", c3);
                    cmd.Parameters.AddWithValue("@var5", "new");
                    int rowsAffected = cmd.ExecuteNonQuery();
                    int test = rowsAffected;
                    if (rowsAffected == 1)

                    {
                        
                       // Response.Redirect("WebForm3.aspx");
                        T5.Visible = true;
                        Final.Visible = true;
                    }

                    else
                    {
                        Response.Redirect("Choice.aspx");
                    }
                }
            }
            catch (Exception ex)
            {


            }
            finally
            {
                if (conn != null)
                {
                    //cleanup connection i.e close 
                }
            }
        }

    

        protected void move_toGrid1(object sender, EventArgs e) {
           
            Session["value11"] = "2";
            Response.Redirect("WebForm4.aspx");
        }
        protected void move_toGrid(object sender, EventArgs e)
        {
            Session["value11"] = "1";
            Response.Redirect("WebForm4.aspx");
        }

        protected void Infra_Add_Click(object sender, EventArgs e)
        {
            CI_Name.Text = "";
            System_Environment.Text = "";
            Primary_Capability.Text = "";
            Owner.Text = "";
            Supported_By.Text = "";
            System_Role.Text = "";

        }

        protected void Workflow1(object sender, EventArgs e) {
            Response.Redirect("http://aglitremedyuat.agl.com.au:8080/arsys ");

        }

        protected void decom1(object sender, EventArgs e) {
            if (DecomCBOX.SelectedValue == "Decommission Of Infrastructure") { BPanel5.Visible = true; }
            if (DecomCBOX.SelectedValue == "Decommission Of Application") { BPanel6.Visible = true; }
            if (DecomCBOX.SelectedValue == "Decommission of Application and Infrastructure")
            {
                BPanel6.Visible = true;
                BPanel5.Visible = true;
            }
           
            BPanel7.Visible = false;
            Button29.Visible = false;
        }

        protected void Check1(object sender, EventArgs e)
        {

            string b1, b2, b3, b4, b5, b6, b7, b8;
            DateTime b9;
            b1 = A_CR_Number.Text;
            b2 = Application_ID.Text;
            b3 = DropDownList2.SelectedValue;
            b4 = DropDownList1.SelectedValue;
            b5 = DropDownList3.SelectedValue;
            b6 = Environment_Instance.Text;
            b7 = Application_Name.Text;
            b9 = DateTime.Now;
            b8 = "1";
        //    if (b1 == "") { Error1.Visible = true; }
            //if (b2 == "") { Error2.Visible = true; }
            //if (b7 == "") { Error3.Visible = true; }
            //if (b3 == "Select") { Error4.Visible = true; }
            //if (b4 == "Select") { Error5.Visible = true; }
            //if (b5 == "Select") { Error6.Visible = true; }
            //if (b6 == "") { Error7.Visible = true; }
            //Button6.Visible = true;
            //Button30.Visible = false;
        }
        protected void Check2(object sender, EventArgs e)
        {
            string a1, a2, a3, a4, a5, a6, a7, a8, a9;
            System_Environment.Text = DropDownList5.SelectedValue;
            
            a1 = CI_Name.Text;
            a2 = System_Environment.Text;
            a3 = Primary_Capability.Text;
            a4 = Owner.Text;
            a5 = DropDownList6.SelectedValue;
            a6 = System_Role.Text;
            a7 = Site.Text;
            a8 = OEM_Supported.Text;
            a9 = I_CR_Num.Text;
            //if (a1 == "") { Error9.Visible = true; }
            //if (a2 == "Select") { Error10.Visible = true; }
            //if (a3 == "") { Error11.Visible = true; }
            //if (a4 == "") { Error12.Visible = true; }
            //if (a5 == "Select") { Error13.Visible = true; }
            //if (a6 == "") { Error14.Visible = true; }
            //if (a7 == "") { Error15.Visible = true; }
            //if (a8 == "") { Error16.Visible = true; }
            //if (a9 == "") { Error8.Visible = true; }
            //Button7.Visible = true;
            //Button31.Visible = false;

        }

    }

}
   



