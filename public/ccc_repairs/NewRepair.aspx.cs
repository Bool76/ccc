using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;
using MySql.Data.MySqlClient;

namespace CCC_Repairs
{
    public partial class NewRepair : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtRepair.Focus();
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Server.Transfer("Main.aspx");
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            if (txtRepair.Text.Length == 0)
            {
                blValidation.Text = "Please enter a Repair Request!";
                return;
            }
            //SQL Server
            //string ConnectionString = @"Data Source=.\SQLExpress;Initial Catalog=CCC_Repairs;Integrated Security=True";
            //SqlConnection SQLConnection = new SqlConnection();

            //MySQL
            string ConnectionString = @"Server = mysql.wease.net; Database = ccc_repairs; Uid = ccc_repairs; Pwd = creative";
            MySqlConnection SQLConnection = new MySqlConnection();

            SQLConnection.ConnectionString = ConnectionString;

            string strSQL = "INSERT INTO Tbl_Repairs (Insert_User_ID, Update_User_ID, Insert_Date, Repair_Requested, Facility, EMail) VALUES ('";
            strSQL += GlobalClass.strGlobalUserID + "', '" + GlobalClass.strGlobalUserID + "', CURRENT_TIMESTAMP, '" + txtRepair.Text + "', '";
            strSQL += GlobalClass.strGlobalFacility + "', '" + GlobalClass.strGlobalEmail + "')";

            SQLConnection.Open();
            MySqlCommand cmd = new MySqlCommand(strSQL, SQLConnection);
            //cmd.Parameters.AddWithValue("@Insert_User_ID", Session["UserID"]);
            //cmd.Parameters.AddWithValue("@Update_User_ID", Session["UserID"]);
            //cmd.Parameters.AddWithValue("@Insert_Date", DateTime.Now);
            //cmd.Parameters.AddWithValue("@Repair_Requested", txtRepair.Text);
            //cmd.Parameters.AddWithValue("@Facility", Session["Facility"]);
            //cmd.Parameters.AddWithValue("@EMail", Session["EMail"]);

            cmd.ExecuteNonQuery();
            SQLConnection.Close();

            //Send e-mail to Manager           
            SmtpClient client = new SmtpClient();
            client.Port = 1025;
            client.Host = "mail.creativechildcareinc.com";
            //client.EnableSsl = true;
            client.Timeout = 10000;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential("ccc_repairs@creativechildcareinc.com", "CCCr3p@ir$");

            MailMessage mm = new MailMessage("ccc_repairs@creativechildcareinc.com", GlobalClass.strGlobalManagerEmail, "New CCC Work Order", "A new Work Order has been submitted in the Creative Child Care Repairs app: http://www.creativechildcareinc.com/ccc_repairs/Default.aspx");
            mm.BodyEncoding = UTF8Encoding.UTF8;
            mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;

            //Add this line to bypass the certificate validation
            System.Net.ServicePointManager.ServerCertificateValidationCallback = delegate(object s,
                    System.Security.Cryptography.X509Certificates.X509Certificate certificate,
                    System.Security.Cryptography.X509Certificates.X509Chain chain,
                    System.Net.Security.SslPolicyErrors sslPolicyErrors)
            {
                return true;
            };

            client.Send(mm);

            Server.Transfer("Main.aspx");
        }
    }
}