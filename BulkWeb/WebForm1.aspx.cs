using AfricasTalkingCS;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BulkWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var username = "Eren";
            var apiKey = "4fb571b9418bb490be7112994a163a25dc7dbc5737b81d4a1f1492b40aba4779";
            ViewState["Username"] = username;
            ViewState["ApiKey"] = apiKey;

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            int age = Convert.ToInt32(txtAge.Text);
            string gender = txtGender.Text;
            int contact = Convert.ToInt32(txtContact.Text);
            string dateInput = txtLastSeen.Text;
            string format = "yyyy-MM-dd HH:mm:ss"; // Adjust the format as needed
            string location = txtLocation.Text;
            string wearing = txtWearing.Text;

            if (DateTime.TryParseExact(dateInput, format, CultureInfo.InvariantCulture, DateTimeStyles.None, out DateTime lastSeen))
            {

            }
            else
            {
                // The string could not be parsed
            }



            Image.SaveAs(Request.PhysicalApplicationPath + "./Image" + Image.FileName.ToString());
            string a;
            a = "./Image" + Image.FileName.ToString();

            using (var context = new Model1())
            {
                ;

                Missing missing = new Missing
                {
                    Name = name,
                    Age = age,
                    Gender = gender,
                    ContactInfo = contact,

                    Image = a,
                    LastLocation = location,
                    Wearing = wearing

                };
                context.Missings.Add(missing);
                context.SaveChanges();
            }
        }
        protected void SendSmsButton_Click(object sender, EventArgs e)
        {
            // Retrieve username and apiKey from ViewState
            var username = ViewState["Username"].ToString();
            var apiKey = ViewState["ApiKey"].ToString();

            try
            {
                using (var context = new Model1())
                {
                    var missing = context.Missings.FirstOrDefault(); // Retrieve the first missing person from the database
                    if (missing != null)
                    {
                        var name = missing.Name;
                        var age = missing.Age;
                        var gender = missing.Gender;
                        var contact = missing.ContactInfo;
                        var lastSeen = missing.LastSeen;
                        var location = missing.LastLocation;
                        var wearing = missing.Wearing;
                        var link = "BulkWeb.aspx";

                        // Construct the SMS message with all variables
                        var msg = $"Name: {name}, Age: {age}, Gender: {gender}, Contact: {contact}, Last Seen: {lastSeen}, Location: {location}, Wearing: {wearing}, link: {link}";

                        var recep = "+254798839912"; // Set recipient phone number

                        var gateway = new AfricasTalkingGateway(username, apiKey);
                        dynamic res = gateway.SendMessage(recep, msg);

                        // Display success message
                        Response.Write("SMS sent successfully!");
                    }
                    else
                    {
                        // No missing person found in the database
                        Response.Write("No missing person data found in the database.");
                    }
                }
            }
            catch (AfricasTalkingGatewayException exception)
            {
                // Display error message if sending SMS fails
                Response.Write("Error sending SMS: " + exception.Message);
            }
        }


    }
}
