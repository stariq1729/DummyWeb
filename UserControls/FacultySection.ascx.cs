using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DummyWeb.UserControls
{
    public partial class FacultySection : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadFaculty();
            }
        }

        private void LoadFaculty()
        {
            var faculty = new List<object>
            {
                new {
                    Name = "Dr. Rajesh Verma",
                    Subject = "Physics (JEE Expert)",
                    Experience = "15+ years teaching experience",
                    Education = "PhD Physics, IIT Delhi",
                    Image = "https://ui-avatars.com/api/?name=Rajesh+Verma&size=120&background=4f46e5&color=fff&bold=true"
                },
                new {
                    Name = "Prof. Anjali Sharma",
                    Subject = "Mathematics",
                    Experience = "12+ years teaching experience",
                    Education = "M.Tech, IIT Bombay",
                    Image = "https://ui-avatars.com/api/?name=Anjali+Sharma&size=120&background=10b981&color=fff&bold=true"
                },
                new {
                    Name = "Dr. Amit Patel",
                    Subject = "Chemistry",
                    Experience = "18+ years teaching experience",
                    Education = "PhD Chemistry, IIT Kanpur",
                    Image = "https://ui-avatars.com/api/?name=Amit+Patel&size=120&background=3b82f6&color=fff&bold=true"
                },
                new {
                    Name = "Prof. Sneha Reddy",
                    Subject = "Biology (NEET Expert)",
                    Experience = "10+ years teaching experience",
                    Education = "MBBS, AIIMS Delhi",
                    Image = "https://ui-avatars.com/api/?name=Sneha+Reddy&size=120&background=ec4899&color=fff&bold=true"
                }
            };

            rptFaculty.DataSource = faculty;
            rptFaculty.DataBind();
        }
    }
}