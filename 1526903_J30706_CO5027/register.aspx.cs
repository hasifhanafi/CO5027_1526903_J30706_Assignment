using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;


namespace _1526903_J30706_CO5027
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //This was retrieved from http://tutorials.tinyappco.com/ASPNET/Identity

        protected void BtnSignup_Click(object sender, EventArgs e)
        {
            // create a dbcontext that specified the connection string
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");

            //create user store and user manager
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var roleStore = new RoleStore<IdentityRole>(identityDbContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            //create user
            var user = new IdentityUser() { UserName = txtFullname.Text, Email = txtEmail.Text };
            IdentityResult result = manager.Create(user, txtPassword.Text);

            IdentityRole endUserRole = new IdentityRole("admin");
            //create role name (admin)
            roleManager.Create(endUserRole);
            manager.AddToRole(user.Id, "admin");

            if (result.Succeeded)
            {
                Server.Transfer("login.aspx", true);
            }

            else
            {
                litRegisterError.Text = "An Error has occurred: " + result.Errors.FirstOrDefault();
            }

        }

       
    }
}