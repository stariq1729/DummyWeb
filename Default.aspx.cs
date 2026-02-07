using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DummyWeb
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadStatsData();
            }
        }

        private void LoadStatsData()
        {
            var stats = new List<string>
            {
                "AIR 1, 4, 7 & 12 in JEE 2024",
                "Best Live Learning App Award 2023",
                "50k+ Questions Solved Daily",
                "AIR 1, 4, 7 & 12 in JEE 2024",
                "Best Live Learning App Award 2023",
                "50k+ Questions Solved Daily"
            };

            StatsRepeater.DataSource = stats;
            StatsRepeater.DataBind();
        }
    }
}