using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Drawing;


namespace Smartclusters
{
    public partial class Main : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("server=localhost;uid=root;pwd=krudes2909;database=smartclusters");

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //con.Open();

                //Response.Write("Connecting to MySQL...");

            }

            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //MySqlConnection con = new MySqlConnection("server=localhost;uid=root;pwd=sweta;database=smartclusters");
            
            con.Open();
            string cmdstr = "Select count(*) from Registration where Email = '" + TextBox1.Text + "'";

            MySqlCommand checkuser = new MySqlCommand(cmdstr, con);
            int temp = Convert.ToInt32(checkuser.ExecuteScalar().ToString());

            if (temp == 1)
            {
                string cmdstr2 = "Select Password from Registration where Email='" +TextBox1.Text + "'";
                
                MySqlCommand pass = new MySqlCommand(cmdstr2, con);

                string password = pass.ExecuteScalar().ToString();
                if (password == TextBox2.Text)
                {
                    string  cmdstr3 = "Select Reg_Id from Registration where Email ='" +TextBox1.Text + "'";
                    MySqlCommand Rid = new MySqlCommand(cmdstr3, con);
                    string strid = Rid.ExecuteScalar().ToString();
                    //Label1.text = strid;
                    Session["New"] = TextBox2.Text;
                    //Response.Redirect("Data.aspx");
                    Response.Redirect("Data.aspx?ID=" + strid); 


                }
                else
                {
                    Label1.Text = "Invalid Password.Please try again";
                    //Response.Write("Invalid Password.Please try again");
                }
            }
            else
            {
                Label1.Text ="Invalid UserName.Please try again";
      
                //Response.Write("Invalid UserName.Please try again");
            }
        }
        

        /*protected void Button2_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO smartclusters.registration (Fname, Lname, Email, Password, ConfirmPassword) VALUES(@Fname,@Lname,@Email,@Password,@ConfirmPassword)";
            cmd.Prepare();

            cmd.Parameters.AddWithValue("@Fname",TextBox3.Text);
            cmd.Parameters.AddWithValue("@Lname",TextBox4.Text);
            cmd.Parameters.AddWithValue("@Email",TextBox5.Text);
            cmd.Parameters.AddWithValue("@Password",TextBox6.Text);
            cmd.Parameters.AddWithValue("@ConfirmPassword",TextBox7.Text);
            try
            {

                int success = cmd.ExecuteNonQuery();
                //insertUser.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Data.aspx");
            }
            catch (Exception ex)
            {
                //ex.Message("Unable to create a user.  Please try again later</b>");
                Response.Write(ex.Message);
                Response.Write("Unable to create a user.  Please try again later</b>");
            }
            //cmd.ExecuteNonQuery();

            finally
            {
                if (con != null)
                {
                    con.Close();
                }

            }
        }*/
    }
}