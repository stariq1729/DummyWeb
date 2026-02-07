using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DummyWeb.UserControls
{
    public partial class Hero : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Hero section initialization code
        }

        //protected void btnFreeDemo_Click(object sender, EventArgs e)
        //{
        //    // Redirect to demo registration page
        //    Response.Redirect("~/DemoRegistration.aspx");
        //}

        protected void btnWatchDemo_Click(object sender, EventArgs e)
        {
            // Open video modal or redirect to demo video page
            Page.ClientScript.RegisterStartupScript(
                this.GetType(),
                "OpenVideoModal",
                "$('#videoModal').modal('show');",
                true
            );
        }
    }
}