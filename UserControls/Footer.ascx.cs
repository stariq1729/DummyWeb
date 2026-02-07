using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DummyWeb.UserControls
{
    public partial class Footer : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Footer initialization code if needed
        }

        protected void btnSubscribe_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtNewsletter.Text))
            {
                // In a real application, save to database or send to email service
                // For now, just show success message
                lblSubscribeMessage.Text = "Thank you! You've subscribed to our newsletter.";
                lblSubscribeMessage.Visible = true;
                txtNewsletter.Text = string.Empty;

                // Hide message after 5 seconds
                ScriptManager.RegisterStartupScript(this, GetType(), "hideMessage",
                    "setTimeout(function() { document.getElementById('" + lblSubscribeMessage.ClientID + "').style.display='none'; }, 5000);", true);
            }
        }
    }
}