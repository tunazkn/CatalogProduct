<%@ Page Title="Product Detail" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductDetailPage.aspx.cs" Inherits="CatalogProduct.ProductDetailPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="OrtakAlan" runat="server">
    <asp:MultiView ID="MultiViewDetail" runat="server">
        <div class="row">
            <asp:View ID="ViewProductDetailDetail" runat="server">
                <div class="container">
                    <div class="row">
                        <asp:Label ID="lblDetailProductDetailTitle" runat="server" Text="Detail" Font-Bold="true" Font-Underline="true" Font-Size="20pt"></asp:Label>
                    </div><br/>
                    <div class="row">
                        <asp:Label ID="lblDetailProductNameTitle" runat="server" Text="Name" Font-Bold="true" Font-Italic="true"  Font-Underline="true" Font-Size="15pt"></asp:Label>
                    </div><br/>
                    <div class="row">
                        <div class="container" >
                            <table id="Table1" runat="server" class="m-2" CellPadding="6" HorizontalAlign="left">
                                <tr>
                                    <td class="auto-style3" style="text-align:center; align-content:center; position:center;">
                                        <div class="input-group mb-5" style="text-align:center; align-content:center">
                                            <asp:Button CssClass="btn btn-link" ID="btnProductDetailShowRecipe" runat="server" BackColor="#c0c0c0" Width="430px" Text="Show Recipe" OnClick="btnProductDetailShowRecipe_Click" />
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3" style="text-align:center; width:430px;">
                                        <div class="input-group mb-5">
                                            <div class="input-group-prepend">
                                                <asp:Label CssClass="input-group-text labeldetailsize" ID="lblDetailProductCode" runat="server" Text="Product Code:"  ></asp:Label>
                                            </div>
                                        <asp:TextBox CssClass="form-control" ID="txtDetailProductCode" runat="server" ReadOnly="true" AutoCompleteType="Disabled"></asp:TextBox>
                                        </div>
                                    </td>
                                    <td class="auto-style3" style="text-align:center;">
                                        <div class="input-group mb-5">
                                            <div class="input-group-prepend">
                                                <asp:Label CssClass="input-group-text labeldetailsize" ID="lblDetailProductName" runat="server" Text="Product Name:"  ></asp:Label>
                                            </div>
                                            <asp:TextBox CssClass="form-control" ID="txtDetailProductName" runat="server" ReadOnly="true" AutoCompleteType="Disabled"></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3" style="text-align:center;">
                                         <div class="input-group mb-5">
                                            <div class="input-group-prepend">
                                                <asp:Label CssClass="input-group-text labeldetailsize" ID="lblDetailProductMainID" runat="server" Text="Main Group ID:"  ></asp:Label>
                                            </div>
                                            <asp:TextBox CssClass="form-control" ID="txtDetailProductMainID" runat="server" ReadOnly="true" AutoCompleteType="Disabled"></asp:TextBox>
                                        </div>
                                    </td>
                                    <td class="auto-style3" style="text-align:center;">
                                        <div class="input-group mb-5">
                                            <div class="input-group-prepend">
                                                <asp:Label CssClass="input-group-text labeldetailsize" ID="lblDetailProductMainName" runat="server" Text="Main Group Name:"  ></asp:Label>
                                            </div>
                                            <asp:TextBox CssClass="form-control" ID="txtDetailProductMainName" runat="server" ReadOnly="true" AutoCompleteType="Disabled" ></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3" style="text-align:center;">
                                        <div class="input-group mb-5">
                                            <div class="input-group-prepend">
                                                <asp:Label CssClass="input-group-text labeldetailsize" ID="lblDetailProductBrandID" runat="server" Text="Brand ID:"  ></asp:Label>
                                            </div>
                                            <asp:TextBox CssClass="form-control" ID="txtDetailProductBrandID" runat="server" ReadOnly="true" AutoCompleteType="Disabled" ></asp:TextBox>
                                        </div>
                                    </td>
                                    <td class="auto-style3" style="text-align:center;">
                                        <div class="input-group mb-5">
                                            <div class="input-group-prepend">
                                                <asp:Label CssClass="input-group-text labeldetailsize" ID="lblDetailProductBrandName" runat="server" Text="Brand Name:"  ></asp:Label>
                                            </div>
                                            <asp:TextBox CssClass="form-control" ID="txtDetailProductBrandName" runat="server" ReadOnly="true" AutoCompleteType="Disabled" ></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3" style="text-align:center;">
                                        <div class="input-group mb-5">
                                            <div class="input-group-prepend">
                                                <asp:Label CssClass="input-group-text labeldetailsize" ID="lblDetailProductFeatureID" runat="server" Text="Feature ID:"  ></asp:Label>
                                            </div>
                                            <asp:TextBox CssClass="form-control" ID="txtDetailProductFeatureID" runat="server" ReadOnly="true" AutoCompleteType="Disabled" ></asp:TextBox>
                                        </div>
                                    </td>
                                    <td class="auto-style3" style="text-align:center;">
                                        <div class="input-group mb-5">
                                            <div class="input-group-prepend">
                                                <asp:Label CssClass="input-group-text labeldetailsize" ID="lblDetailProductFeatureDescrptn" runat="server" Text="Feature Description:"  ></asp:Label>
                                            </div>
                                            <asp:TextBox CssClass="form-control" ID="txtDetailProductFeatureDescrptn" runat="server" ReadOnly="true" AutoCompleteType="Disabled" ></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3" style="text-align:center;">
                                        <div class="input-group mb-5">
                                            <div class="input-group-prepend">
                                                <asp:Label CssClass="input-group-text labeldetailsize" ID="lblDetailProductComProductID" runat="server" Text="Commercial Product ID:"  ></asp:Label>
                                            </div>
                                            <asp:TextBox CssClass="form-control" ID="txtDetailProductComProductID" runat="server" ReadOnly="true" AutoCompleteType="Disabled" ></asp:TextBox>
                                        </div>
                                    </td>
                                    <td class="auto-style3" style="text-align:center;">
                                         <div class="input-group mb-5">
                                            <div class="input-group-prepend">
                                                <asp:Label CssClass="input-group-text labeldetailsize" ID="lblDetailProductComProductName" runat="server" Text="Commercial Product Name:"  ></asp:Label>
                                            </div>
                                            <asp:TextBox CssClass="form-control" ID="txtDetailProductComProductName" runat="server" ReadOnly="true" AutoCompleteType="Disabled" ></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3" style="text-align:center;">
                                         <div class="input-group mb-5">
                                            <div class="input-group-prepend">
                                                <asp:Label CssClass="input-group-text labeldetailsize" ID="lblDetailProductSeriesID" runat="server" Text="Series ID:"  ></asp:Label>
                                            </div>
                                            <asp:TextBox CssClass="form-control" ID="txtDetailProductSeriesID" runat="server" ReadOnly="true" AutoCompleteType="Disabled" > </asp:TextBox>
                                        </div>
                                    </td>
                                    <td class="auto-style3" style="text-align:center;">
                                        <div class="input-group mb-5">
                                            <div class="input-group-prepend">
                                                <asp:Label CssClass="input-group-text labeldetailsize" ID="lblDetailProductSeriesName" runat="server" Text="Series Name:"  ></asp:Label>
                                            </div>
                                            <asp:TextBox CssClass="form-control" ID="txtDetailProductSeriesName" runat="server" ReadOnly="true" AutoCompleteType="Disabled" ></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3" style="text-align:center;">
                                        <div class="input-group mb-5">
                                            <div class="input-group-prepend">
                                                <asp:Label CssClass="input-group-text labeldetailsize" ID="lblDetailProductQualityID" runat="server" Text="Quality ID:"  ></asp:Label>
                                            </div>
                                            <asp:TextBox CssClass="form-control" ID="txtDetailProductQualityID" runat="server" ReadOnly="true" AutoCompleteType="Disabled" ></asp:TextBox>
                                        </div>
                                    </td>
                                    <td class="auto-style3" style="text-align:center;">
                                        <div class="input-group mb-5">
                                            <div class="input-group-prepend">
                                                <asp:Label CssClass="input-group-text labeldetailsize" ID="lblDetailProductQualityName" runat="server" Text="Quality:"  ></asp:Label>
                                            </div>
                                            <asp:TextBox CssClass="form-control" ID="txtDetailProductQualityName" runat="server" ReadOnly="true" AutoCompleteType="Disabled" ></asp:TextBox>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3" style="text-align:center;">
                                        <div class="input-group mb-5" >
                                            <div class="input-group-prepend">
                                                <asp:Label CssClass="input-group-text labeldetailsize" ID="lblDetailProductRecipeID" runat="server" Text="Recipe ID:"  ></asp:Label>
                                            </div>
                                            <asp:TextBox CssClass="form-control" ID="txtDetailProductRecipeID" runat="server" ReadOnly="true" AutoCompleteType="Disabled" ></asp:TextBox>
                                        </div>
                                    </td>
                                    
                                </tr>
                            </table>
                        </div>
                        <div>
                            <asp:Label ID="lblMalzemeDuzenleUyari" runat="server" Text="." ForeColor="White"></asp:Label><br />
                            <div class="btn-group mx-auto">
                                <asp:Button CssClass="btn btn-success" ID="BtnMalzemeDuzenleUrunSilEvet" runat="server" Text="Evet"  Visible="false" />
                                <asp:Button CssClass="btn btn-warning" ID="BtnMalzemeDuzenleUrunSilHayir" runat="server" Text="Hayır"  Visible="false" />
                                <asp:Button CssClass="btn btn-primary" ID="BtnMalzemeDuzenleUrunDuzenle" runat="server" Text="Düzenle" Visible="false" />
                                <asp:Button CssClass="btn btn-info" ID="BtnMalzemeDuzenleUrunKaydet" runat="server" Text="Kaydet" Visible="false" />
                                <asp:Button CssClass="btn btn-danger" ID="BtnMalzemeDuzenleUrunSil" runat="server" Text="Sil" Visible="false" />
                            </div>
                        </div>
                    </div>
                </div>
            </asp:View>
        </div>
        <div class="row">
            <asp:View ID="ViewProductDetailRecipe" runat="server">
                <div class="container">
                    <div class="row">
                            <asp:Label ID="lblProductDetailRepiceTitle" runat="server" Text="Recipe" Font-Bold="true" Font-Underline="true" Font-Size="20pt"></asp:Label>
                    </div><br/>
                    <div class="row">
                        <asp:Label ID="lblDetailProductDetailProductName" runat="server" Text="Name" Font-Bold="true" Font-Italic="true"  Font-Underline="true" Font-Size="15pt"></asp:Label>
                    </div><br/>
                    <div class="row">
                        <div class="container" >
                            <div class="row">
                                    <asp:GridView CssClass="table table-striped table-hover" HeaderStyle-CssClass="thead-dark" ID="GridViewRecipe" runat="server" Font-Size="13px" Visible="true" AutoGenerateColumns="false">
                                        <Columns>
                                            <asp:BoundField DataField="pCode" HeaderText="Product Code" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="pName" HeaderText="Product Name" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="MatID" HeaderText="Material ID" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="MatName" HeaderText="Material Name" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="QUOM" HeaderText="Quantity (for 100 grams)" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="110px" />
                                        </Columns>
                                    </asp:GridView>
                                </div>
                        </div>
                    </div>
                </div>
            </asp:View>
        </div>
    </asp:MultiView>
</asp:Content>
