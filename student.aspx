<%@ Page Title="student" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="Week6.student" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>Students</h1>
    <a href="student_Details.aspx">Add a Student<a/>
    <asp:GridView ID="grdstudents" runat="server" CssClass="table table-striped"
        autogeneratecolumns="true">
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="ID" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" />
            <asp:BoundField DataField="FirstMidName" HeaderText=" FirstName" />
            <asp:BoundField DataField="EnrollmentDate" HeaderText="Inrollment Date" DataFormatString="{0:c}" />
        </Columns>
    </asp:GridView>
</asp:Content>