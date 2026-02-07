using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DummyWeb.UserControls
{
    public partial class SuccessStories : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTestimonials();
            }
        }

        private void LoadTestimonials()
        {
            var testimonials = new List<object>
            {
                new {
                    Name = "Rahul Sharma",
                    Role = "Student",
                    Content = "EduVantage helped me secure AIR 12 in JEE. The live doubt solving was a game changer!",
                    Avatar = "https://ui-avatars.com/api/?name=Rahul+Sharma&background=4f46e5&color=fff",
                    Achievement = "AIR 12 in JEE 2024"
                },
                new {
                    Name = "Priya Patel",
                    Role = "Parent",
                    Content = "My daughter's board scores improved from 75% to 94% in just 6 months. The structured approach really works.",
                    Avatar = "https://ui-avatars.com/api/?name=Priya+Patel&background=10b981&color=fff",
                    Achievement = (string)null
                },
                new {
                    Name = "Arun Kumar",
                    Role = "Student",
                    Content = "The AI analytics pinpointed exactly where I needed to improve. Saved me hundreds of hours of aimless practice.",
                    Avatar = "https://ui-avatars.com/api/?name=Arun+Kumar&background=3b82f6&color=fff",
                    Achievement = "NEET 2024 Topper"
                }
            };

            rptTestimonials.DataSource = testimonials;
            rptTestimonials.DataBind();
        }
    }
}