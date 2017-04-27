using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1526903_J30706_CO5027
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        //This was retrieved from http://tutorials.tinyappco.com/ASPNET/Identity

        protected void btnSend_Click(object sender, EventArgs e)
        {



            SmtpClient smtpClient = new SmtpClient();
            smtpClient.EnableSsl = true;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("hhasif212@gmail.com", "hasif123");

            smtpClient.Credentials = credentials;

            MailMessage msg = new MailMessage("hhasif212@gmail.com", "hhasif212@gmail.com");
            msg.Subject = "Name: " + txtName.Text + "Subject: " + txtSubject.Text;
            msg.Body = txtMessage.Text;
          

            MailMessage MailMessage = new MailMessage();
            MailMessage.From = new MailAddress("hhasif212@gmail.com");
            MailMessage.To.Add(txtEmail.Text);
            MailMessage.Subject = txtSubject.Text;


            try
            {
                smtpClient.Send(msg);
                litMsg.Text = "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
            }

            catch (Exception exp)
            {
                litMsg.Text = "<p>Send Failed: " + exp.Message + ";" + exp.InnerException + "</p>";
            }
        }
    }
}

            