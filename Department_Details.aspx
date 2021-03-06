﻿<%@ Page Title="Department Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Department_Details.aspx.cs" Inherits="Week6.Department_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h1>Department Details</h1>
    <div class="form-group">
        <label for="txtName" class="col-sm-3 control-label">Name:</label>
        <asp:TextBox ID="txtName" runat="server" required/>
     </div>
    <div class="form-group">
          <label for="txtBudget" class="col-sm-3 control-label">Budget:</label>
          <asp:TextBox ID="txtBudget" runat="server" required type="number"
           min="0" max="999999" step="1"/>
    </div>
    <asp:button class="btn btn-success col-sm-3" id="btnSave" runat="server" text="save" OnClick="btnSave_Click"/>
  
</asp:Content>
