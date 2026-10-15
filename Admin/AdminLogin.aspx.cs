using System;
using System.Web.UI;

namespace janmatbharat.Admin
{
    public partial class AdminLogin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Redirect("Dashboard.aspx");
            }
        }
    }
}