<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="CatalogProduct.MainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="OrtakAlan" runat="server">
    <div class="row">
        <div class="container">
            <div class="row">
                <h1><span class="badge badge-primary"><i class="fas fa-list-ol"></i></span>Products </h1>
            </div>
            <!--<div class="row">
                <asp:Button CssClass="btn btn-lg btn-dark center mx-auto"  ID="BtnTumMalzemelerUrunEkle" runat="server" Width="200pt" Text="Malzeme Ekle" />
            </div><br/>-->
            <!--alttaki tag içnidekı  gridview icine doundfield ın altına yazılacak-->

            <div class="row">
                <asp:GridView CssClass="table table-striped table-hover" HeaderStyle-CssClass="thead-dark" ID="GridViewProductMain" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="pID" HeaderText="Product Code" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="pName" HeaderText="Product Name" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="mainName" HeaderText="Main Group" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="bName" HeaderText="Brand" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="FtDescription" HeaderText="Feature" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="cpName" HeaderText="Commercial Product" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="sName" HeaderText="Series" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="quName" HeaderText="Quality" ItemStyle-HorizontalAlign="Center" />

                        
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
