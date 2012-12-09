using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("server=localhost;uid=root;pwd=krudes2909;database=smartclusters");
            con.Open();
            string cmdstr = "Select count(*) from Registration where Email = '" + TextBoxEmail.Text + "'";

            MySqlCommand checkuser = new MySqlCommand(cmdstr, con);
            int temp = Convert.ToInt32(checkuser.ExecuteScalar().ToString());

            if (temp == 1)
            {
                string cmdstr2 = "Select Password from Registration where Email='" + TextBoxEmail.Text + "'";
                MySqlCommand pass = new MySqlCommand(cmdstr2, con);

                string password = pass.ExecuteScalar().ToString();
                if (password == TextBoxPwd.Text)
                {

                    string cmdstr3 = "Select Reg_Id from Registration where Email ='" + TextBoxEmail.Text + "'";
                    MySqlCommand Rid = new MySqlCommand(cmdstr3, con);
                    string strid = Rid.ExecuteScalar().ToString();
                    //Label1.text = strid;
                    //Session["New"] = TextBox2.Text;
                    //Response.Redirect("Data.aspx");
                    Response.Redirect("Data.aspx?ID=" + strid); 
                    
                    Session["New"] = TextBoxPwd.Text;
                    //Response.Redirect("Data.aspx");
                    

                }
                else
                {
                    Label1.Text = "Invalid Password.Please try again";
                }
            }
            else
            {
                Label1.Text ="Invalid UserName.Please try again";
            }
         
            
        
        }
    }
