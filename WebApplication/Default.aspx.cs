using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic;

namespace WebApplication
{
    public partial class Default : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (var servicesWrapper = new ServicesWrapper())
            {
                lblErrorText.Text = "";
                string message;
                switch (servicesWrapper.Services.Login(txtLogin.Text, txtPassword.Text, out message))
                {
                    case Method_status.Success:
                        Response.Redirect("~/MainMenu.aspx", false);
                        break;
                    case Method_status.Fail:
                        lblErrorText.Text = message;
                        txtPassword.Focus();
                        break;
                }
            }
        }
    }
}