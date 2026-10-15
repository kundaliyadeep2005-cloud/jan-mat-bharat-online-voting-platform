using System;
using System.Web.UI;

namespace janmatbharat.Admin
{
    public partial class ContentManagement : Page
    {
        protected void Page_Load(object sender, EventArgs e) { }

        protected void btnSavePageData_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Stays on page (no redirect)
            }
        }
    }
}