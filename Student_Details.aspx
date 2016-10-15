<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student_Details.aspx.cs" Inherits="Week6.Student_Details" %>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h1>Student Details</h1>
    <div class="form-group">
        <label for="txtFirstName" class="col-sm-3 control-label">Name:</label>
        <asp:TextBox ID="txtFirstName" runat="server" required/>
     </div>
      <div class="form-group">
        <label for="txtLastName" class="col-sm-3 control-label">Last Name:</label>
        <asp:TextBox ID="txtLastName" runat="server" required/>
     </div>
    <div class="form-group">
          <label for="txtDate" class="col-sm-3 control-label">Enrollment Date:</label>
          <asp:TextBox ID="txtDate" runat="server" required />
    </div>
   
    <asp:button class="btn btn-success col-sm-3" id="Savebtn" runat="server" text="save" OnClick="Savebtn_Click"/>
  
</asp:Content>