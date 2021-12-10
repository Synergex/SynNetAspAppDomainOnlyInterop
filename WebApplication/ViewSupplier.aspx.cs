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
    public partial class ViewSupplier : System.Web.UI.Page
    {
        String supplierId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                lblErrorMessage.Text = "";
            }
            else
            {
                supplierId = Request.QueryString["id"];
                try
                {
                    using (var servicesWrapper = new ServicesWrapper())
                    {
                        Supplier supplier;
                        String grfa;
                        switch (servicesWrapper.Services.ReadSupplier(supplierId, out supplier, out grfa))
                        {
                            case Method_status.Success:
                                showSupplier(supplier, grfa);
                                break;
                            case Method_status.Fatal_error:
                                lblErrorMessage.Text = "Service method ReadSupplier_0 returned a fatal error notification!";
                                break;
                        }
                    }
                }
                catch (Exception ex)
                {
                    lblErrorMessage.Text = "Service method call failed with error: " + ex.Message;
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Suppliers.aspx", false);
        }

        private void showSupplier(Supplier supplier, String grfa)
        {
            txtSupplierId.Text = supplier.Supplier_id;
            txtName.Text = supplier.Name;
            txtAddress1.Text = supplier.Address_1;
            txtAddress2.Text = supplier.Address_2;
            txtAddress3.Text = supplier.Address_3;
            txtCity.Text = supplier.City;
            txtPostalCode.Text = supplier.Postal_code;
            txtWebAddress.Text = supplier.Web_address;
        }

    }
}