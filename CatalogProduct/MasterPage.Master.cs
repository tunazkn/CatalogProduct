using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatalogProduct
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LinkbtnMainMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainPage.aspx");
        }

        protected void LinkbtnProducts_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductsPage.aspx");
        }

        protected void LinkbtnAbout_Click(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }
    }
}