<%@ Page Title="Products" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductsPage.aspx.cs" Inherits="CatalogProduct.ProductsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="OrtakAlan" runat="server">
    <div style="width:100%; height:auto;">
        <div class="cercevecevre" style="float:left; margin:5px; width:14%; height:auto; background-color:silver;">
            <asp:MultiView ID="MultiView0" runat="server">
                <div class="row">
                    <asp:View ID="ViewSabit0" runat="server">
                        <asp:Label CssClass="float-left labeltxtdropSize ml-3 mt-1 mb-1"  ID="lblSearchSabit" runat="server" Text="Filter" Font-Bold="true" Font-Size="X-Large" Font-Italic="true"></asp:Label><br />
                        <table id="Table1" runat="server" class="m-2" CellPadding="6" HorizontalAlign="left">
                            <tr>
                                <td  style="text-align:center;">
                                    <div class="labeltxtdropSize Cercevelbltxt" style="float:left; text-align:left; background-color:grey;">
                                        <asp:Label CssClass="float-left labeltxtdropSize ml-1 " ID="lblMainGroup" runat="server" Text="Main Group" ></asp:Label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:DropDownList CssClass="labeltxtdropSize Cercevelbltxt" ID="DropDownMainGroup" runat="server" AppendDataBoundItems="true">
                                        <asp:ListItem Value="Null">--Select--</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <div class="labeltxtdropSize Cercevelbltxt" style="float:left; text-align:left; background-color:grey;">
                                        <asp:Label CssClass="float-left labeltxtdropSize ml-1" ID="lblSeries" runat="server" Text="Series" ></asp:Label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:DropDownList CssClass="labeltxtdropSize Cercevelbltxt" ID="DropDownSeries" runat="server" AppendDataBoundItems="true">
                                        <asp:ListItem Value="Null">--Select--</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <div class="labeltxtdropSize Cercevelbltxt" style="float:left; text-align:left; background-color:grey;">
                                        <asp:Label CssClass="float-left labeltxtdropSize ml-1" ID="lblBrand" runat="server" Text="Brand" ></asp:Label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:DropDownList CssClass="labeltxtdropSize Cercevelbltxt" ID="DropDownBrand" runat="server" AppendDataBoundItems="true">
                                        <asp:ListItem Value="Null">--Select--</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <div class="labeltxtdropSize Cercevelbltxt" style="float:left; text-align:left; background-color:grey;">
                                        <asp:Label CssClass="float-left labeltxtdropSize ml-1" ID="lblQuality" runat="server" Text="Quality" ></asp:Label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3 ">
                                    <asp:DropDownList CssClass="labeltxtdropSize Cercevelbltxt" ID="DropDownQuality" runat="server" AppendDataBoundItems="true">
                                        <asp:ListItem Value="Null">--Select--</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                             <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="lblProductFilterWarning" runat="server" Text="Warning" ForeColor="silver"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <div class="ml-2">
                            <asp:Button ID="btnFilterProduct" runat="server" style="width:160px; text-align:center; background-color:dimgray" Text="Apply" OnClick="btnFilterProduct_Click" />
                        </div> 
                    </asp:View>
                </div>
            </asp:MultiView>
        </div>
        <div style="float:right; width:85%; height:auto; background-color:lightgray;">
            <asp:MultiView ID="MultiView1" runat="server">
                <div class="row">
                    <asp:View ID="ViewProducts0" runat="server">
                        <div class="row">
                            <div class="container">
                                <div class="row">
                                    <h1><span class="badge badge-primary"><i class="fas fa-list-ol"></i></span> Products </h1>
                                </div>
                                <!--<div class="row">
                                    <asp:Button CssClass="btn btn-lg btn-dark center mx-auto"  ID="BtnTumMalzemelerUrunEkle" runat="server" Width="200pt" Text="Malzeme Ekle" />
                                </div><br/>-->
                                <!--alttaki tag içnidekı  gridview icine doundfield ın altına yazılacak-->
                                <div class="row">
                                    <asp:GridView CssClass="table table-striped table-hover" HeaderStyle-CssClass="thead-dark" ID="GridViewProduct" runat="server" Font-Size="13px" Visible="true" AutoGenerateColumns="false">
                                        <Columns>
                                            <asp:BoundField DataField="pID" HeaderText="Product ID" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="pCode" HeaderText="Product Code" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="pName" HeaderText="Product Name" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="mainName" HeaderText="Main Group" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="bName" HeaderText="Brand" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="FtDescription" HeaderText="Feature" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="cpName" HeaderText="Commercial Product" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="sName" HeaderText="Sub Gruop" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="quName" HeaderText="Quality" ItemStyle-HorizontalAlign="Center" />

                                            <asp:TemplateField HeaderStyle-CssClass="thead-dark">
                                                <ItemTemplate>
                                                    <asp:LinkButton CssClass="badge badge-success" ID="LinkbtnUrunGoruntule" Text="View" runat="server" OnClick="LinkbtnUrunGoruntule_Click" CommandArgument='<%# Eval("pID") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </asp:View>
                </div>
            </asp:MultiView>
        </div>
    </div>
</asp:Content>