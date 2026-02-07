using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DummyWeb.UserControls
{
    public partial class Header : UserControl
    {
        public class NavItem
        {
            public string Name { get; set; }
            public string Href { get; set; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadNavigation();
            }
        }

        private void LoadNavigation()
        {
            var navItems = new List<NavItem>
            {
                new NavItem { Name = "Courses", Href = "#courses" },
                new NavItem { Name = "Live Classes", Href = "#live" },
                new NavItem { Name = "Study Hub", Href = "#study-hub" },
                new NavItem { Name = "Test Series", Href = "#tests" },
                new NavItem { Name = "Career Guidance", Href = "#guidance" },
                new NavItem { Name = "Blogs", Href = "Blog.aspx" }
            };

            NavRepeater.DataSource = navItems;
            NavRepeater.DataBind();
        }
    }
}