using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DummyWeb.UserControls
{
    public partial class AnalyticsSection : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Initialization code
        }

        protected void btnViewSample_Click(object sender, EventArgs e)
        {
            // Open sample report
            Page.ClientScript.RegisterStartupScript(
                this.GetType(),
                "OpenReport",
                "alert('Sample report would open here. In production, this would show a detailed PDF/analytics dashboard.');",
                true
            );
        }
    }
}