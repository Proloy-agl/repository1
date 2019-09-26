﻿using RestSharp;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMDB2
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)

            {

                SetInitialRow();

            }

        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                DateTime c3 = Convert.ToDateTime("2018-10-20");
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
                        cmd.CommandText = "insert into [Audit_Relationship_App_to_Infra](CR_Number,App_CI_Name,Infra_CI_Name,Transaction_Timestamp,Transaction_Status,Environment) values (@var1,@var2,@var3,@var4,@var5,@var6)";
                        cmd.Parameters.AddWithValue("@var1", "3");
                        cmd.Parameters.AddWithValue("@var2", "3");
                        cmd.Parameters.AddWithValue("@var3", "3");
                        cmd.Parameters.AddWithValue("@var4", c3);
                        cmd.Parameters.AddWithValue("@var5", "5");
                        cmd.Parameters.AddWithValue("@var6", "Envi");
                        int rowsAffected = cmd.ExecuteNonQuery();
                        int test = rowsAffected;
                        if (rowsAffected == 1)

                        {

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
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
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
                    cmd.Parameters.AddWithValue("@var1", "1");
                    cmd.Parameters.AddWithValue("@var2", "1");
                    cmd.Parameters.AddWithValue("@var3", "1");
                    cmd.Parameters.AddWithValue("@var4", c3);
                    cmd.Parameters.AddWithValue("@var5", "I");





                    int rowsAffected = cmd.ExecuteNonQuery();
                    int test = rowsAffected;
                    if (rowsAffected == 1)

                    {

                        
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

        protected void Gridview1_RowCreated(object sender, GridViewRowEventArgs e)

        {

            if (e.Row.RowType == DataControlRowType.DataRow)

            {

                DataTable dt = (DataTable)ViewState["CurrentTable"];

                LinkButton lb = (LinkButton)e.Row.FindControl("LinkButton1");

                if (lb != null)

                {

                    if (dt.Rows.Count > 1)

                    {

                        if (e.Row.RowIndex == dt.Rows.Count - 1)

                        {

                            lb.Visible = false;

                        }

                    }

                    else

                    {

                        lb.Visible = false;

                    }

                }

            }

        }



        protected void LinkButton1_Click(object sender, EventArgs e)

        {

            LinkButton lb = (LinkButton)sender;

            GridViewRow gvRow = (GridViewRow)lb.NamingContainer;

            int rowID = gvRow.RowIndex + 1;

            if (ViewState["CurrentTable"] != null)

            {

                DataTable dt = (DataTable)ViewState["CurrentTable"];

                if (dt.Rows.Count > 1)

                {

                    if (gvRow.RowIndex < dt.Rows.Count - 1)

                    {

                        //Remove the Selected Row data

                        dt.Rows.Remove(dt.Rows[rowID]);

                    }

                }

                //Store the current data in ViewState for future reference

                ViewState["CurrentTable"] = dt;

                //Re bind the GridView for the updated data

                Gridview1.DataSource = dt;

                Gridview1.DataBind();

            }



            

        }

        private void SetInitialRow()

        {

            DataTable dt = new DataTable();

            DataRow dr = null;

            dt.Columns.Add(new DataColumn("RowNumber", typeof(string)));

            dt.Columns.Add(new DataColumn("Column1", typeof(string)));

            dt.Columns.Add(new DataColumn("Column2", typeof(string)));

            dt.Columns.Add(new DataColumn("Column3", typeof(string)));

            dr = dt.NewRow();

            dr["RowNumber"] = 1;

            dr["Column1"] = string.Empty;

            dr["Column2"] = string.Empty;

            dr["Column3"] = string.Empty;

            dt.Rows.Add(dr);

            //dr = dt.NewRow();



            //Store the DataTable in ViewState

            ViewState["CurrentTable"] = dt;



            Gridview1.DataSource = dt;

            Gridview1.DataBind();

        }

        private void AddNewRowToGrid()

        {

            int rowIndex = 0;



            if (ViewState["CurrentTable"] != null)

            {

                DataTable dtCurrentTable = (DataTable)ViewState["CurrentTable"];

                DataRow drCurrentRow = null;

                if (dtCurrentTable.Rows.Count > 0)

                {

                    for (int i = 1; i <= dtCurrentTable.Rows.Count; i++)

                    {

                        //extract the TextBox values

                        TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("TextBox1");

                        TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("TextBox2");

                        TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("TextBox3");



                        drCurrentRow = dtCurrentTable.NewRow();

                        drCurrentRow["RowNumber"] = i + 1;



                        dtCurrentTable.Rows[i - 1]["Column1"] = box1.Text;

                        dtCurrentTable.Rows[i - 1]["Column2"] = box2.Text;

                        dtCurrentTable.Rows[i - 1]["Column3"] = box3.Text;



                        rowIndex++;

                    }

                    dtCurrentTable.Rows.Add(drCurrentRow);

                    ViewState["CurrentTable"] = dtCurrentTable;



                    Gridview1.DataSource = dtCurrentTable;

                    Gridview1.DataBind();

                }

            }

            else

            {

                Response.Write("ViewState is null");

            }



            //Set Previous Data on Postbacks

            SetPreviousData();

        }

        private void SetPreviousData()

        {

            int rowIndex = 0;

            if (ViewState["CurrentTable"] != null)

            {

                DataTable dt = (DataTable)ViewState["CurrentTable"];

                if (dt.Rows.Count > 0)

                {

                    for (int i = 0; i < dt.Rows.Count; i++)

                    {

                        TextBox box1 = (TextBox)Gridview1.Rows[rowIndex].Cells[1].FindControl("TextBox1");

                        TextBox box2 = (TextBox)Gridview1.Rows[rowIndex].Cells[2].FindControl("TextBox2");

                        TextBox box3 = (TextBox)Gridview1.Rows[rowIndex].Cells[3].FindControl("TextBox3");



                        box1.Text = dt.Rows[i]["Column1"].ToString();

                        box2.Text = dt.Rows[i]["Column2"].ToString();

                        box3.Text = dt.Rows[i]["Column3"].ToString();



                        rowIndex++;

                    }

                }

            }

        }

        protected void ButtonAdd_Click(object sender, EventArgs e)

        {

            AddNewRowToGrid();

        }
    }
}