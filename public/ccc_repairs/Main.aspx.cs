using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CCC_Repairs
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnMyRepairs.Focus();
        }
        protected void btnMyRepairs_Click(object sender, EventArgs e)
        {
            //if (Session["Manager"].ToString() == "Yes")
            if (GlobalClass.strGlobalManager == "Yes")            
            {
                Server.Transfer("ManagerRepairs.aspx");
            }
            else
            {
                Server.Transfer("Repairs.aspx");
            }
        }

        protected void btnNewRepair_Click(object sender, EventArgs e)
        {
            Server.Transfer("NewRepair.aspx");
        }

        protected void btnLogOff_Click(object sender, EventArgs e)
        {
            Session["UserID"] = "";
            Session["Manager"] = "";
            Session["Facility"] = "";
            Session["EMail"] = "";
            Session["ManagerEMail"] = "";
            Server.Transfer("Default.aspx");
        }

    }
}