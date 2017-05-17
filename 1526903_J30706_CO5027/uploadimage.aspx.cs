using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1526903_J30706_CO5027
{
    public partial class uploadimage : System.Web.UI.Page
    {
        //This code below was retireved from http://tutorials.tinyappco.com/ASPNET/LinkImageToDatabaseRecord

        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            string filename = productId + ".jpg";

            CurrentImage.ImageUrl = "~/productimages/" + filename;
        }

        //This code below was retireved from http://tutorials.tinyappco.com/ASPNET/LinkImageToDatabaseRecord

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            String productId = Request.QueryString["Id"];

            string filename = productId + ".jpg";
            string saveLocation = Server.MapPath("~/productimages/" + filename);

            imgFileUploadControl.SaveAs(saveLocation);
        }
    }
}