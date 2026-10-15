using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace janmatbharat
{
    public partial class CastVote : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cvParty_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = (rbBjp.Checked || rbInc.Checked || rbAap.Checked || rbCpi.Checked || rbTmc.Checked || rbBsp.Checked || rbNota.Checked);
        }

        protected void btnSubmitVote_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}