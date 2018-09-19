using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CCC_Repairs
{
    public partial class Repairs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNewRepair_Click(object sender, EventArgs e)
        {
            Server.Transfer("NewRepair.aspx");
        }    
    }
}