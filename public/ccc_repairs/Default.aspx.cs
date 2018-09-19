using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using MySql.Data.MySqlClient;

namespace CCC_Repairs
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUsername.Focus();
            //Sean
            //GlobalClass.strGlobalUserID = "Jase";
            //lblValidation.Text = GlobalClass.strGlobalUserID;            
            //Response.Write(GlobalClass.strGlobalManagerEmail);
            //Response.End();
            //Sean
        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            if (Validate(txtUsername.Text.ToString()) == false)
            {
                lblValidation.Text = "Please enter your Username.";
                txtUsername.Focus();
                return;
            }

            if (Validate(txtPassword.Text.ToString()) == false)
            {
                lblValidation.Text = "Please enter your Password.";
                txtPassword.Focus();
                return;
            }

            //Local SQL Server
            //SqlConnection con = new SqlConnection(@"Data Source=.\SQLExpress;Initial Catalog=CCC_Repairs;Integrated Security=True");

            //MySQL
            //Server = myServerAddress; Database = myDataBase; Uid = myUsername; Pwd = myPassword;
            //SqlConnection con = new SqlConnection("Server = mysql.wease.net; Database = ccc_repairs; Uid = ccc_repairs; Pwd = creative");

            //SqlConnectionStringBuilder conn_string = new SqlConnectionStringBuilder();
            MySqlConnectionStringBuilder conn_string = new MySqlConnectionStringBuilder();
            conn_string.Server = "mysql.wease.net";
            conn_string.UserID = "ccc_repairs";
            conn_string.Password = "creative";
            conn_string.Database = "ccc_repairs";

            //SqlConnection con = new SqlConnection(conn_string.ToString());
            MySqlConnection con = new MySqlConnection(conn_string.ToString());

            //SQL Server
            //SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) FROM Tbl_User WHERE UserName='" + txtUsername.Text + "' AND Password='" + txtPassword.Text + "'", con);            
            /* in above line the program is selecting the whole data from table and the matching it with the user name and password provided by user. */

            //MySQL
            MySqlDataAdapter sda = new MySqlDataAdapter("SELECT COUNT(*) FROM Tbl_User WHERE UserName='" + txtUsername.Text + "' AND Password='" + txtPassword.Text + "'", con);
            DataTable dt = new DataTable(); //this is creating a virtual table  
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                //Find User_ID and if they are a Manager                
                con.Open();

                //SQL Server
                //SqlCommand command = new SqlCommand("SELECT User_ID, Manager, Facility, EMail FROM Tbl_User WHERE UserName=@UserName", con);

                string strMySQL  = "SELECT User_ID, Manager, Facility, EMail FROM Tbl_User WHERE UserName = '" + txtUsername.Text + "'";

                //MySQL
                //MySqlCommand command = new MySqlCommand("SELECT User_ID, Manager, Facility, EMail FROM Tbl_User WHERE UserName=@UserName", con);
                MySqlCommand command = new MySqlCommand(strMySQL, con);

                command.Prepare();

                //Response.Write(txtUsername.Text);
                //Response.End();

                //command.Parameters.AddWithValue("@UserName", txtUsername.Text);

                //Response.Write(command.Parameters.);

                //using (SqlDataReader reader = command.ExecuteReader())
                using (MySqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        GlobalClass.strGlobalUserID = reader["User_ID"].ToString();
                        GlobalClass.strGlobalManager = reader["Manager"].ToString();
                        GlobalClass.strGlobalFacility = reader["Facility"].ToString();
                        GlobalClass.strGlobalEmail = reader["EMail"].ToString();                        
                    }
                    else
                    {
                        Response.Write("There was an error connecting to the database.");
                        Response.End();
                    }

                }
                con.Close();

                Server.Transfer("Main.aspx");
            }
            else
            {
                lblValidation.Text = "Username / Password incorrect.";
                txtUsername.Focus();
            }
        }

        new private bool Validate(string strValidateString)
        {
            bool boolResult = true;

            if (strValidateString == "")
                boolResult = false;

            return boolResult;
        }
    }
}
