using AfricasTalkingCS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BulkWeb
{
    public partial class BulkWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var context = new Model1();
            var missing = context.Missings.ToList();
           
            Repeater1.DataSource = missing;
            Repeater1.DataBind();
            // Initialize username and apiKey here
            var username = "sandbox";
            var apiKey = "3ac7c2fb91b40e4f461652ce8ee13b4cf07ecd33fca5ef01de61e45fa0f9f66a";
            ViewState["Username"] = username;
            ViewState["ApiKey"] = apiKey;
        }

        protected void SendSmsButton_Click(object sender, EventArgs e)
        {
            // Retrieve username and apiKey from ViewState
            var username = ViewState["Username"].ToString();
            var apiKey = ViewState["ApiKey"].ToString();

            var recep = "+254745344834"; // Set recipient phone number
            var msg = "Super awesome message ☻ 😁"; // Set message content

            var gateway = new AfricasTalkingGateway(username, apiKey);
            try
            {
                dynamic res = gateway.SendMessage(recep, msg);
                Response.Write("SMS sent successfully!"); // Display success message
            }
            catch (AfricasTalkingGatewayException exception)
            {
                Response.Write("Error sending SMS: " + exception.Message); // Display error message
            }
        }
    }
}