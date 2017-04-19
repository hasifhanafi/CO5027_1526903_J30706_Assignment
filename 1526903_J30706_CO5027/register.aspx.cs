using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1526903_J30706_CO5027
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");

            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            var user = new IdentityUser() { UserName = txtEmail.Text, Email = txtEmail.Text };
            IdentityResult result = manager.Create(user, txtPassword.Text);

            IdentityRole endUserRole = new IdentityRole ("admin");
            roleManager.Create(endUserRole);
            manager.AddToRole(user.Id, "admin");
            IdentityResult decision = manager.Update(user);

            if (result.Succeeded)

            {
                Server.Transfer("login.aspx", true);
            }

            else

            {
                litRegisterError.Text = "An error has occurred: " + result.Errors.FirstOrDefault();
            }
        }

        protected void Unnamed1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}