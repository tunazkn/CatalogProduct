<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CatalogProduct.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="OrtakAlan" runat="server">
    <div style="width: 100%;">
        <div class="cercevecevre" style="float: left; margin: 5px; width: 14%; height: 500px; background-color: whitesmoke;">
            <asp:MultiView ID="MultiView0" runat="server">
                <div class="row">
                    <asp:View ID="ViewSabit" runat="server">
                        <table id="Table1" runat="server" class="m-1" cellpadding="6" horizontalalign="left">
                            <tr>
                                <td class="auto-style3">
                                    <div class="labeltxtdropSize" style="float: left; text-align: left; background-color: lightgray;">
                                        <asp:Label CssClass="float-left labeltxtdropSize" ID="lblMainGroup" runat="server" Text="Main Group"></asp:Label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:DropDownList CssClass="labeltxtdropSize" ID="DropDownMainGroup" DataValueField="MGID" DataTextField="DESCRIPTION" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <div class="labeltxtdropSize" style="float: left; text-align: left; background-color: lightgray;">
                                        <asp:Label CssClass="float-left labeltxtdropSize" ID="lblSubGroup" runat="server" Text="Sub Group"></asp:Label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:DropDownList CssClass="labeltxtdropSize" ID="DropDownSubGroup" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <div class="labeltxtdropSize" style="float: left; text-align: left; background-color: lightgray;">
                                        <asp:Label CssClass="float-left labeltxtdropSize" ID="lblBrand" runat="server" Text="Brand"></asp:Label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:DropDownList CssClass="labeltxtdropSize" ID="DropDownBrand" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <div class="labeltxtdropSize" style="float: left; text-align: left; background-color: lightgray;">
                                        <asp:Label CssClass="float-left labeltxtdropSize" ID="blbEnginetypes" runat="server" Text="Engine Type"></asp:Label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:DropDownList CssClass="labeltxtdropSize" ID="DropDownEnginetypes" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <div class="labeltxtdropSize" style="float: left; text-align: left; background-color: lightgray;">
                                        <asp:Label CssClass="float-left labeltxtdropSize" ID="lblSeries" runat="server" Text="Series"></asp:Label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:DropDownList CssClass="labeltxtdropSize" ID="DropDownSeries" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>

                            <tr>
                                <td class="auto-style2">
                                    <asp:Button ID="Button1" runat="server" Style="width: 235px; background-color: dimgray" Text="Apply Filter" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </div>
            </asp:MultiView>

        </div>
        <div style="float: right; width: 85%; background-color: white;">
            <asp:MultiView ID="MultiView1" runat="server">
                <div class="row" style="align-content: center;">
                    <asp:View ID="ViewProducts0" runat="server">
                        <div class="row">
                            <div class="container">
                                <div class="row">
                                    <h1><span class="badge badge-primary"><i class="fas fa-boxes"></span></i> Products </h1>
                                </div>
                                <div class="row">
                                    <asp:GridView CssClass="table table-striped table-hover" HeaderStyle-CssClass="thead-dark" ID="ProductGridView" Style="position: center" runat="server" Font-Size="15px" AutoGenerateColumns="False">
                                        <Columns>
                                            <asp:BoundField DataField="PID" HeaderText="Product ID" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="CODE" HeaderText="Product Code" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="mgd" HeaderText="Maingroup" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="sgd" HeaderText="Subgroup" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="bd" HeaderText="Brand" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="etd" HeaderText="Engine Type" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="sd" HeaderText="Series" ItemStyle-HorizontalAlign="Center" />
                                            <asp:BoundField DataField="qd" HeaderText="Quality" ItemStyle-HorizontalAlign="Center" />
                                            <asp:TemplateField HeaderStyle-CssClass="thead-dark">
                                                <ItemTemplate>
                                                    <a href="Detail.aspx?pid=<%#Eval("PID")%>">View</a>
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
