using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace smartclusters.Web
{
    public partial class Insert_Country_Data : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("server=localhost;uid=root;pwd=krudes2909;database=smartclusters");
        int intUserId;
        protected void Page_Load(object sender, EventArgs e)
        {
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
            cmd.CommandText = "INSERT INTO smartclusters.Country_data (Countryname,Population,Reg_id) VALUES(@countryname,@population,@RegId)";
            con.Open();
            cmd.Prepare();

            cmd.Parameters.AddWithValue("@countryname", DropDownListCountry.SelectedItem);
            cmd.Parameters.AddWithValue("@population", population.Text );
            cmd.Parameters.AddWithValue("@RegId", intUserId);
            try
            {

                int success = cmd.ExecuteNonQuery();
                con.Close();

                if (success > 0)
                {
                    Label1.Text = "Data Successfully added";
                }
                population.Text ="";
                //Button1.Visible = true;



            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
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

        protected void hplbtnBack_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("~/Data.aspx?ID="+ Convert.ToString(intUserId));
        
        }
    }
}