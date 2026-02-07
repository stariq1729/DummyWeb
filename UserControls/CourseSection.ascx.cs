using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DummyWeb.UserControls
{
    public partial class CourseSection : UserControl
    {
        public class Course
        {
            public int Id { get; set; }
            public string Title { get; set; }
            public string Description { get; set; }
            public string Category { get; set; }
            public string ImageUrl { get; set; }
            public string Price { get; set; }
        }

        public class CourseCategory
        {
            public string Name { get; set; }
            public List<Course> Courses { get; set; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCourses();
            }
        }

        private void LoadCourses()
        {
            var categories = new List<CourseCategory>
            {
                new CourseCategory
                {
                    Name = "Foundation (Class 6-8)",
                    Courses = new List<Course>
                    {
                        new Course { Id=1, Title="Math Foundation", Description="Build strong math concepts", Category="Foundation", Price="₹2,999/month", ImageUrl="https://images.unsplash.com/photo-1635070041078-e363dbe005cb?w=400&h=200&fit=crop" },
                        new Course { Id=2, Title="Science Explorer", Description="Hands-on science learning", Category="Foundation", Price="₹2,999/month", ImageUrl="https://images.unsplash.com/photo-1532094349884-543bc11b234d?w=400&h=200&fit=crop" }
                    }
                },
                new CourseCategory
                {
                    Name = "Secondary (Class 9-10)",
                    Courses = new List<Course>
                    {
                        new Course { Id=3, Title="Advanced Math", Description="Board exam prep", Category="Secondary", Price="₹3,499/month", ImageUrl="https://images.unsplash.com/photo-1509228627152-72ae9ae6848d?w=400&h=200&fit=crop" },
                        new Course { Id=4, Title="Physics & Chemistry", Description="Science mastery", Category="Secondary", Price="₹3,499/month", ImageUrl="https://images.unsplash.com/photo-1603126857599-f6e157fa2fe6?w=400&h=200&fit=crop" }
                    }
                }
            };

            rptCategories.DataSource = categories;
            rptCategories.DataBind();

            rptCourseTabs.DataSource = categories;
            rptCourseTabs.DataBind();
        }

        // ADD THIS METHOD - handles nested repeater binding
        protected void rptCourseTabs_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                var category = (CourseCategory)e.Item.DataItem;
                var rptCourses = (Repeater)e.Item.FindControl("rptCourses");

                if (rptCourses != null && category != null)
                {
                    rptCourses.DataSource = category.Courses;
                    rptCourses.DataBind();
                }
            }
        }

        protected void btnEnroll_Command(object sender, CommandEventArgs e)
        {
            string courseId = e.CommandArgument.ToString();
            Response.Redirect("~/CourseDetails.aspx?id=" + courseId);
        }
    }
}