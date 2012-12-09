using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


    public partial class Data : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("server=localhost;uid=root;pwd=krudes2909;database=smartclusters");
            //con.Open();
        string strUserId;
        int intUserId;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            CheckData();
        }

        public void CheckData()
        {
            
            con.Open();

            //string Uid = Convert.ToString(intUserId);
            try
            {
                strUserId = Request.QueryString["ID"];
                intUserId = Convert.ToInt32(strUserId);
                //string Email = Request.QueryString["Email"];
                string Rid = "Select RegId from stck_data where RegId= '" + intUserId + "'";
                MySqlCommand Rid1 = new MySqlCommand(Rid, con);
                string strid = Convert.ToString(Rid1.ExecuteScalar());

                string Ridc = "Select Reg_id from Country_data where Reg_id= '" + intUserId + "'";
                MySqlCommand Rid1c = new MySqlCommand(Ridc, con);
                string stridc = Convert.ToString(Rid1c.ExecuteScalar());



                if (strid == "")
                {
                    if (stridc == "")
                    {

                        btnInsertData.Visible = true;
                        VisualizeData.Visible = false;
                        Label1.Visible = false;
                        BtnInsertCountrydata.Visible = true;
                        Label2.Visible = false;
                        BtnVisualizeContryData.Visible = false;
                    }
                    else
                    {
                        BtnInsertCountrydata.Visible = true;
                        Label2.Visible = true;
                        BtnVisualizeContryData.Visible = true;
                        VisualizeData.Visible = false;
                        Label1.Visible = false;
                    }
                    
                }
                else if(stridc=="")
                {
                    if (strid == "")
                    {
                        btnInsertData.Visible = true;
                        VisualizeData.Visible = false;
                        Label1.Visible = false;
                        BtnInsertCountrydata.Visible = true;
                        Label2.Visible = false;
                        BtnVisualizeContryData.Visible = false;
                    }
                    else
                    {  
                        btnInsertData.Visible = true;
                        VisualizeData.Visible = true;
                        Label1.Visible = true;
                        Label2.Visible = false;
                        BtnVisualizeContryData.Visible = false;
                    }
                }

                if (Request.QueryString["TempID"] != null || Request.QueryString["TempID"] != "")
                {
                    btnInsertData.Visible = true;
                    BtnInsertCountrydata.Visible = true;
                    Label2.Visible = true;
                    VisualizeData.Visible = true;
                    BtnVisualizeContryData.Visible = true;
                }



                   

            }
            catch (Exception e)
            {
                Response.Write(e.Message);
                btnInsertData.Visible = true;
                VisualizeData.Visible = false;
                BtnVisualizeContryData.Visible = false;
                BtnInsertCountrydata.Visible = true;

            }
        }
        protected void btnVisualizeData_Click(object sender, EventArgs e)
        {
            Response.Redirect("smartclustersTestPage.aspx?ID=" + intUserId);
        }

        protected void btnInsertData_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertData.aspx?ID=" + intUserId);
        }

        protected void BtnInsertCountrydata_Click(object sender, EventArgs e)
        {
            Response.Redirect("Insert Country Data.aspx?ID=" + intUserId);
        }

        protected void BtnVisualizeContryData_Click(object sender, EventArgs e)
        {
            Response.Redirect("CountryPopulation.aspx?ID=" + intUserId);
        }
    }
