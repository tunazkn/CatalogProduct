using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatalogProduct
{
    public partial class ProductDetailPage : System.Web.UI.Page
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
                    try
                    {
                        int productid = Convert.ToInt32(Session["ProductID"]);
                        lblDetailProductNameTitle.Text = DBOperations.ReadProductDetail(productid)[2];
                        txtDetailProductCode.Text = DBOperations.ReadProductDetail(productid)[1];
                        txtDetailProductName.Text = DBOperations.ReadProductDetail(productid)[2];
                        txtDetailProductMainID.Text = DBOperations.ReadProductDetail(productid)[3];
                        txtDetailProductMainName.Text = DBOperations.ReadProductDetail(productid)[4];
                        txtDetailProductBrandID.Text = DBOperations.ReadProductDetail(productid)[5];
                        txtDetailProductBrandName.Text = DBOperations.ReadProductDetail(productid)[6];
                        txtDetailProductFeatureID.Text = DBOperations.ReadProductDetail(productid)[7];
                        txtDetailProductFeatureDescrptn.Text = DBOperations.ReadProductDetail(productid)[8];
                        txtDetailProductComProductID.Text = DBOperations.ReadProductDetail(productid)[9];
                        txtDetailProductComProductName.Text = DBOperations.ReadProductDetail(productid)[10];
                        txtDetailProductSeriesID.Text = DBOperations.ReadProductDetail(productid)[11];
                        txtDetailProductSeriesName.Text = DBOperations.ReadProductDetail(productid)[12];
                        txtDetailProductQualityID.Text = DBOperations.ReadProductDetail(productid)[13];
                        txtDetailProductQualityName.Text = DBOperations.ReadProductDetail(productid)[14];
                        txtDetailProductRecipeID.Text = DBOperations.ReadProductDetail(productid)[15];
                        MultiViewDetail.ActiveViewIndex = 0;
                    }
                    catch { }
                }
            }
        }

        protected void btnProductDetailShowRecipe_Click(object sender, EventArgs e)
        {
            lblDetailProductDetailProductName.Text = DBOperations.ReadProductDetail(Convert.ToInt32(Session["ProductID"]))[2];
            GridViewRecipe.DataSource = DBOperations.getRecipeDetail(Convert.ToInt32(Session["ProductID"]));
            GridViewRecipe.DataBind();
            MultiViewDetail.ActiveViewIndex = 1;
        }
    }
}