using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatalogProduct
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                try
                {
                    Session["Product"] = true;
                    GridViewProductMain.DataSource = DBOperations.getProducts();
                    GridViewProductMain.DataBind();
                }
                catch { }
            }
        }

    }
}