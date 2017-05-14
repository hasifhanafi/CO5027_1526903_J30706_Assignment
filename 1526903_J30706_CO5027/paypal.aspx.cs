using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace _1526903_J30706_CO5027
{
    public partial class paypal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnProductItem_Click(object sender, EventArgs e)
        {
            decimal ProductInterestRate = 3.95m;
            decimal ProductItemCost = 10.00m;
            int quantityOfItemCost = int.Parse(ddlproductitemQuantity.SelectedValue);
            decimal subtotal = (quantityOfItemCost * ProductItemCost);
            decimal total = subtotal + ProductInterestRate;

            //Authenticate with PayPal
            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();

            //Get APIContext Object
            var apiContext = new APIContext(accessToken);

            var ItemProducts = new Item();
            ItemProducts.name = "Testing Item Product";
            ItemProducts.currency = "BND";
            ItemProducts.price = ProductItemCost.ToString();
            ItemProducts.sku = "J30706_CO5027_ASG"; //sku is stock keeping unit - e.g.manufacturer code

            ItemProducts.quantity = quantityOfItemCost.ToString();


            var detailsOfTransactions = new Details();
            detailsOfTransactions.tax = "0";
            detailsOfTransactions.shipping = ProductItemCost.ToString();
            detailsOfTransactions.subtotal = subtotal.ToString("0.00");

            var amountOfTransactions = new Amount();
            amountOfTransactions.currency = "BND";
            amountOfTransactions.total = total.ToString("0.00");
            amountOfTransactions.details = detailsOfTransactions;

            var transaction = new Transaction();
            transaction.description = "Your order of Purchased Products";
            transaction.invoice_number = Guid.NewGuid().ToString(); //this should ideally be the id of a record storing the order
            transaction.amount = amountOfTransactions;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { ItemProducts }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "http://localhost:33339/cancel.aspx";
            redirectUrls.return_url = "http://localhost:33339/completepurchase.aspx";

            var payment = Payment.Create(apiContext, new Payment
            {

                intent = "sale",
                payer = payer,
                transactions = new List<Transaction> { transaction },
                redirect_urls = redirectUrls
            });

            Session["paymentId"] = payment.id;


            foreach (var link in payment.links)
            {
                if (link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    //found the appropriate link, send the user there
                    Response.Redirect(link.href);
                }
            }
        }
    }
}