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
    public partial class Suppliers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Supplier> suppliers;

            using (var servicesWrapper = new ServicesWrapper())
            {
                switch (servicesWrapper.Services.ReadAllSuppliers(out suppliers))
                {
                    case Method_status.Success:
                        grid.DataSource = suppliers;
                        grid.DataBind();
                        lblMessage.Text = String.Format("{0} matching suppliers", suppliers.Count);
                        break;
                    case Method_status.Fatal_error:
                        lblMessage.Text = "Fatal error!";
                        break;
                }
            }

        }

    }
}