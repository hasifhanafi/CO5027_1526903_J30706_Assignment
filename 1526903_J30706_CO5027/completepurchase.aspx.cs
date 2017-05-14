using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace _1526903_J30706_CO5027
{
    public partial class completepurchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmPurchase_Click(object sender, EventArgs e)
        {
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            var apiContext = new APIContext(accessToken);

            var paymentID = Session["paymentID"].ToString();

            if (!String.IsNullOrEmpty(paymentID))
            {
                //create a payment object with the paymentId from session
                var payment = new Payment() { id = paymentID };


                //retrieve the payerId from the querystring and use it to create a new payment execution object
                var payerId = Request.QueryString["PayerID"].ToString();
                var paymentExecution = new PaymentExecution() { payer_id = payerId };

                //execute the payment
                var executedPayment = payment.Execute(apiContext, paymentExecution);

                //inform the user
                litInformation.Text = "<p>Your order has been completed</p>";
                btnConfirmPurchase.Visible = false;
            }
        }
    }
}
    
