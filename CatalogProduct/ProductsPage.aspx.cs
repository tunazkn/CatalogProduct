using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatalogProduct
{
    public partial class ProductsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Convert.ToBoolean(Session["Product"]) != true)
                {
                    Response.Redirect("MainPage.aspx");
                }
                else
                {
                    MultiView0.ActiveViewIndex = 0;
                    MultiView1.ActiveViewIndex = 0;
                    try
                    {
                        GridViewProduct.DataSource = DBOperations.getProducts();
                        GridViewProduct.DataBind();

                        //DropDownList için verilerimi yazıyorum. Databinding yapıyorum.
                        DropDownMainGroup.DataSource = DBOperations.getMainGroups();
                        DropDownMainGroup.DataValueField = "mainID";
                        DropDownMainGroup.DataTextField = "mainName";
                        DropDownMainGroup.DataBind();

                        DropDownSeries.DataSource = DBOperations.getSeries();
                        DropDownSeries.DataValueField = "sID";
                        DropDownSeries.DataTextField = "sName";
                        DropDownSeries.DataBind();

                        DropDownBrand.DataSource = DBOperations.getBrands();
                        DropDownBrand.DataValueField = "bID";
                        DropDownBrand.DataTextField = "bName";
                        DropDownBrand.DataBind();

                        DropDownQuality.DataSource = DBOperations.getQuality();
                        DropDownQuality.DataValueField = "quID";
                        DropDownQuality.DataTextField = "quName";
                        DropDownQuality.DataBind();
                    }
                    catch { }
                }
            }
        }
        protected void LinkbtnUrunGoruntule_Click(object sender, EventArgs e)
        {
            try
            {
                string ProductID = (sender as LinkButton).CommandArgument;
                Session["ProductID"] = ProductID;
                Response.Redirect("ProductDetailPage.aspx?ProductCode=" + DBOperations.ReadProductDetail(Convert.ToInt32(ProductID))[1] + "");
            }
            catch { }

            MultiView1.ActiveViewIndex = 1;
        }
        
        protected void btnFilterProduct_Click(object sender, EventArgs e)
        {

            MultiView1.ActiveViewIndex = 0;
            MultiView0.ActiveViewIndex = 0;

            GridViewProduct.DataSource = DBOperations.SearchProduct(DropDownMainGroup.SelectedItem.ToString(), DropDownBrand.SelectedItem.ToString(), DropDownSeries.SelectedItem.ToString(), DropDownQuality.SelectedItem.ToString());
            GridViewProduct.DataBind();
            /** eger hiçbirşey seçilmediğinde uyarı vericeksek
             alttakı kod kullanıp bunların benzerlerini options'dan 
            ve fonsiyona count göndericez
            int count = 0;
            if (DropDownMainGroup.SelectedItem.ToString() != null) { count = count + 1; }
            if (DropDownBrand.SelectedItem.ToString() != null) { count = count + 1; }
            if (DropDownSeries.SelectedItem.ToString() != null) { count = count + 1; }
            if (DropDownQuality.SelectedItem.ToString() != null) { count = count + 1;}
            
            if (count == 0)
            {
                lblProductSearchWarning.ForeColor = System.Drawing.Color.Red;
                lblProductSearchWarning.Text = "Nothing Selected";
            }
            else
            {
                lblProductSearchWarning.ForeColor = System.Drawing.Color.Silver;
                lblProductSearchWarning.Text = ".";
            }**/
        }
    }
}