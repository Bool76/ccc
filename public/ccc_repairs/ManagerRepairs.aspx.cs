using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;

namespace CCC_Repairs
{
    public partial class ManagerRepairs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
            btnBack.Focus();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Server.Transfer("Main.aspx");
        }

        protected void Update(object sender, GridViewUpdateEventArgs e)
        {
            //Get EMail from row
            GridViewRow row = GridView1.Rows[e.RowIndex];
            String strEMail = row.Cells[5].Text;

            //Response.Write(strEMail);
            //Response.End();

            //Send e-mail to Manager           
            SmtpClient client = new SmtpClient();
            client.Port = 1025;
            client.Host = "mail.creativechildcareinc.com";            
            client.Timeout = 10000;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential("ccc_repairs@creativechildcareinc.com", "CCCr3p@ir$");
            client.EnableSsl = false;

            MailMessage mm = new MailMessage("ccc_repairs@creativechildcareinc.com", strEMail, "CCC Work Order Updated", "Your Work Order has been updated in the Creative Child Care Repairs app: http://www.creativechildcareinc.com/ccc_repairs/Default.aspx");
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
        }
    }
}

//<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLExpress;Initial Catalog=CCC_Repairs;Integrated Security=True" 
//        SelectCommand="SELECT Repairs_ID,Insert_Date,Repair_Requested,Facility,EMail,Repair_Scheduled_Date,Repair_Complete_Date FROM Tbl_Repairs"
//        UpdateCommand="UPDATE Tbl_Repairs SET Repair_Scheduled_Date = @Repair_Scheduled_Date, Repair_Complete_Date = @Repair_Complete_Date WHERE Repairs_ID = @Repairs_ID">
//        </asp:SqlDataSource>  