using BusinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class ProductGroupParts : System.Web.UI.Page
    {
        private string productGroup;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (var servicesWrapper = new ServicesWrapper())
            {
                productGroup = Request.QueryString["productGroup"];
                List<Part> parts;
                switch (servicesWrapper.Services.GetProductGroupParts(productGroup, out parts))
                {
                    case Method_status.Success:
                        grid.DataSource = parts;
                        grid.DataBind();
                        lblMessage.Text = String.Format("{0} matching parts", parts.Count);
                        break;
                    case Method_status.Fatal_error:
                        lblMessage.Text = "Fatal error!";
                        break;
                }
            }
        }

    }
}