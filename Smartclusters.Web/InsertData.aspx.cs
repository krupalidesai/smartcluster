using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


    public partial class InsertData : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("server=localhost;uid=root;pwd=krudes2909;database=smartclusters");
        int intUserId;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Button1.Visible = false;
            try
            {
                intUserId = Convert.ToInt32(Request.QueryString["ID"]);
       

                //Response.Write("Connecting to MySQL...");

            }

            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }

        protected void Add_Click(object sender, EventArgs e)
        {
             intUserId = Convert.ToInt32(Request.QueryString["ID"]);
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO smartclusters.stck_data (stck_name, stck_sale, stck_prft, stck_aset, stck_mrkt_valu,RegId) VALUES(@stck_name,@stck_sale,@stck_prft,@stck_aset,@stck_mrkt_valu,@RegId)";
            con.Open();
            cmd.Prepare();

            cmd.Parameters.AddWithValue("@stck_name", stck_name.Text);
            cmd.Parameters.AddWithValue("@stck_sale", stck_sale.Text);
            cmd.Parameters.AddWithValue("@stck_prft", stck_prft .Text);
            cmd.Parameters.AddWithValue("@stck_aset",stck_aset.Text);
            cmd.Parameters.AddWithValue("@stck_mrkt_valu",stck_mrkt_valu.Text);
            cmd.Parameters.AddWithValue("@RegId", intUserId);
            try
            {

                int success = cmd.ExecuteNonQuery();
                con.Close();
                
                if (success > 0)
                {
                    Label1.Text = "Data Successfully added";
                }
                stck_name.Text = "";
                stck_sale.Text = "";
                stck_prft.Text = "";
                stck_aset.Text = "";
                stck_mrkt_valu.Text = "";
                //Button1.Visible = true;


                
            }
            catch (Exception ex)
            {
                
                //Response.Write(ex.Message);
                Label1.Text = "Unable to insert data.  Please try again later";
               // Response.Write("Unable to insert data.  Please try again later</b>");
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }

            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {

        }

        protected void hplbtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Data.aspx?ID="+ Convert.ToString(intUserId));
        }

       

        
    }
