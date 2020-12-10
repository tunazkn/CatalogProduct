<%@ Page Title="Materials" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Materials.aspx.cs" Inherits="CatalogProduct.Materials" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="OrtakAlan" runat="server">
     burası materials
    <div class="row">
        <div class="container">
            <div class="row">
                <h1><span class="badge badge-primary"><i class="fas fa-list-ol"></i></span> Materials </h1>
            </div>
            <!--<div class="row">
                <asp:Button CssClass="btn btn-lg btn-dark center mx-auto"  ID="BtnTumMalzemelerUrunEkle" runat="server" Width="200pt" Text="Malzeme Ekle" />
            </div><br/>-->
            <!--alttaki tag içnidekı  gridview icine doundfield ın altına yazılacak-->
            
            <div class="row">
                <asp:GridView CssClass="table table-striped table-hover" HeaderStyle-CssClass="thead-dark" ID="GridViewMaterials" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="MatID" HeaderText="Material Code" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="MatName" HeaderText="Material Name" ItemStyle-HorizontalAlign="Center" />
                        <asp:TemplateField HeaderStyle-CssClass="thead-dark">
                            <ItemTemplate>
                                <asp:LinkButton CssClass="badge badge-success" ID="LinkbtnUrunGoruntule" Text="Görüntüle" runat="server" CommandArgument='<%# Eval("MatID") %>' />
                                <asp:LinkButton CssClass="badge badge-warning" ID="LinkbtnUrunDuzenle" Text="Düzenle" runat="server" CommandArgument='<%# Eval("MatID") %>' />
                                <asp:LinkButton CssClass="badge badge-danger align-content-center" ID="LinkbtnUrunSil" Text="Sil" runat="server" CommandArgument='<%# Eval("MatID") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
