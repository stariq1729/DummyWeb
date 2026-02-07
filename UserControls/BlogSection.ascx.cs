using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DummyWeb.UserControls
{
    public partial class BlogSection : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBlogPosts();
            }
        }

        private void LoadBlogPosts()
        {
            var posts = new List<object>
            {
                new {
                    Id = 1,
                    Title = "JEE 2025 Preparation Strategy",
                    Excerpt = "Complete roadmap for JEE aspirants covering time management and topic prioritization.",
                    Category = "Exam Tips",
                    ReadTime = "5 min read",
                    Image = "https://images.unsplash.com/photo-1516321318423-f06f85e504b3?w=400&h=200&fit=crop"
                },
                new {
                    Id = 2,
                    Title = "Effective Time Management for Students",
                    Excerpt = "Learn how to balance school, coaching, and self-study effectively.",
                    Category = "Study Tips",
                    ReadTime = "4 min read",
                    Image = "https://images.unsplash.com/photo-1434030216411-0b793f4b4173?w-400&h=200&fit=crop"
                },
                new {
                    Id = 3,
                    Title = "Parent's Guide to Online Learning",
                    Excerpt = "How parents can support their children in online education environments.",
                    Category = "Parenting",
                    ReadTime = "6 min read",
                    Image = "https://images.unsplash.com/photo-1577896851231-70ef18881754?w=400&h=200&fit=crop"
                }
            };

            rptBlogPosts.DataSource = posts;
            rptBlogPosts.DataBind();
        }

        protected void btnReadMore_Click(object sender, EventArgs e)
        {
            var button = (System.Web.UI.WebControls.Button)sender;
            string postId = button.CommandArgument;
            Response.Redirect($"~/BlogDetails.aspx?id={postId}");
        }

        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Blog.aspx");
        }
    }
}