<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="Online_Book_Store_WebForm.AddProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div >
            <h2 style="padding-top:6rem;">Add product</h2>
            <hr />

            <div >
                <asp:Label ID="lblProductName" runat="server"  Text="Product Name"></asp:Label>
                <div >
                    <asp:TextBox ID="txtproductName" CssClass="form-group" runat="server"></asp:TextBox>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblPrice" runat="server" Text="Price"></asp:Label>
                <div>
                    <asp:TextBox ID="txtPrice" CssClass="form-group" runat="server"></asp:TextBox>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblSellPrice" runat="server" CssClass="col-m-2 control-label" Text="Selling Price"></asp:Label>
                <div >
                    <asp:TextBox ID="txtsellPrice" CssClass="form-group" runat="server"></asp:TextBox>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblBrand" runat="server" CssClass="col-m-2 control-label" Text="Brand"></asp:Label>
                <div>
                    <asp:DropDownList ID="ddlBrand" CssClass="form-group" runat="server"/>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblCategory" runat="server" CssClass="col-m-2 control-label" Text="Category"></asp:Label>
                <div>
                    <asp:DropDownList ID="ddlCategory" CssClass="form-group" runat="server"></asp:DropDownList>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblSubCategory" runat="server" CssClass="col-m-2 control-label" Text="SubCategory"></asp:Label>
                <div >
                    <asp:DropDownList ID="ddlSubCategory" CssClass="form-group" runat="server"></asp:DropDownList>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblSize" runat="server" CssClass="col-m-2 control-label" Text="Size"></asp:Label>
                <div >
                    <asp:DropDownList ID="ddlDynamicSize" CssClass="form-group" runat="server"></asp:DropDownList>

                </div>
            </div>



            <div class="form-group">
                <asp:Label ID="lblDescription" runat="server" CssClass="col-m-2 control-label" Text="Description"></asp:Label>
                <div >
                    <asp:DropDownList ID="ddlDescription" TextMode="MultiLine" CssClass="form-group" runat="server"></asp:DropDownList>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblProductdetails" runat="server" CssClass="col-m-2 control-label" Text="Product details"></asp:Label>
                <div >
                    <asp:DropDownList ID="ddlProductdetails" TextMode="MultiLine" CssClass="form-group" runat="server"></asp:DropDownList>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lbluploadImage1" runat="server" CssClass="col-m-2 control-label" Text="Upload Image"></asp:Label>
                <div >
                    <asp:FileUpload ID="FileUpload1" CssClass="form-group" runat="server"></asp:FileUpload>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblFileUpload2" runat="server" CssClass="col-m-2 control-label" Text="Upload Image"></asp:Label>
                <div >
                    <asp:FileUpload ID="FileUpload2" CssClass="form-group" runat="server"></asp:FileUpload>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblFileUpload3" runat="server" CssClass="col-m-2 control-label" Text="Upload Image"></asp:Label>
                <div >
                    <asp:FileUpload ID="FileUpload3" CssClass="form-group" runat="server"></asp:FileUpload>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblFileUpload4" runat="server" CssClass="col-m-2 control-label" Text="Upload Image"></asp:Label>
                <div >
                    <asp:FileUpload ID="FileUpload4" CssClass="form-group" runat="server"></asp:FileUpload>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblFileUpload5" runat="server" CssClass="col-m-2 control-label" Text="Upload Image"></asp:Label>
                <div >
                    <asp:FileUpload ID="FileUpload5" CssClass="form-group" runat="server"></asp:FileUpload>

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblFreeDelivery" runat="server" CssClass="col-m-2 control-label" Text="Free Delivery"></asp:Label>
                <div >
                    <asp:CheckBox ID="chFD" runat="server" />

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblReturn" runat="server" CssClass="col-m-2 control-label" Text="30 days Return"></asp:Label>
                <div >
                    <asp:CheckBox ID="ch30Ret" runat="server" />

                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblCOD" runat="server" CssClass="col-m-2 control-label" Text="COD"></asp:Label>
                <div >
                    <asp:CheckBox ID="chCOD" runat="server" />

                </div>
            </div>


            <div style="padding-block: 16px; padding-left: 79rem;">
                
            <asp:Button ID="btnAdd" runat="server" class="btn btn-success" Text="Add Product" OnClick="btnAdd_Click" />

            </div>

        </div>
    </div>
</asp:Content>
