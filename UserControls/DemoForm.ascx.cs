using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace DummyWeb.UserControls
{
    public partial class DemoForm : UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Initialization code
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    // In production, save to database and send email
                    //string name = txtName.Text;
                    //string email = txtEmail.Text;
                    //string phone = txtPhone.Text;
                    //string studentClass = ddlClass.SelectedValue;
                    //string timeSlot = ddlTime.SelectedValue;

                    //// Show success message
                    //lblEmail.Text = email;
                    //pnlForm.Visible = false;
                    //pnlSuccess.Visible = true;

                    // In production, send email
                    // SendConfirmationEmail(name, email, phone, studentClass, timeSlot);
                }
                catch (Exception ex)
                {
                    // Log error
                    Page.ClientScript.RegisterStartupScript(
                        this.GetType(),
                        "FormError",
                        $"alert('Error submitting form: {ex.Message}');",
                        true
                    );
                }
            }
        }

        protected void btnBookAnother_Click(object sender, EventArgs e)
        {
            // Reset form
            //txtName.Text = "";
            //txtEmail.Text = "";
            //txtPhone.Text = "";
            //ddlClass.SelectedIndex = 0;
            //ddlTime.SelectedIndex = 0;
            //cbAgree.Checked = false;

            pnlForm.Visible = true;
            pnlSuccess.Visible = false;
        }

        private void SendConfirmationEmail(string name, string email, string phone, string studentClass, string timeSlot)
        {
            // Email sending code (would be implemented in production)
            /*
            MailMessage mail = new MailMessage();
            mail.To.Add(email);
            mail.Subject = "EduVantage Demo Class Confirmation";
            mail.Body = $"Dear {name}, your demo class has been scheduled...";
            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.Send(mail);
            */
        }
    }
}