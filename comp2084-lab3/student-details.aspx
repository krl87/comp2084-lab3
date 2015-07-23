<%@ Page Title="Student Details" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="student-details.aspx.cs" Inherits="comp2084_lab3.student_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Student Details</h1>
    <h5>All fields are required</h5>
    <div class="form-group">
        <label for="txtLast" class="cal-sm-2">Last Name: *</label>
        <asp:TextBox ID="txtLast" runat="server" MaxLength="50" required />
    </div>
    <div class="form-group">
        <label for="txtFirst" class="cal-sm-2">First Name: *</label>
        <asp:TextBox ID="txtFirst" runat="server" MaxLength="50" required />
    </div>
    <div class="form-group">
        <label for="txtEnroll" class="cal-sm-2">Enrollment Date: *</label>
        <asp:TextBox ID="txtEnroll" runat="server" required TextMode="DateTime" />
    </div>
    <div class="col-sm-offset-2">
        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
    </div>
    <asp:Panel runat="server" Visible="false">
    <h2>Courses</h2>
        <asp:GridView ID="grdCourses" runat="server" AutoGenerateColumns="false" DataKeyNames="EnrollmentID" OnRowDeleting="grdCourses_RowDeleting" CssClass="table table-striped table-hover">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Department" />
                <asp:BoundField DataField="Title" HeaderText="Course" />
                <asp:BoundField DataField="Grade" HeaderText="Grade" />
                <asp:CommandField ShowDeleteButton="true" DeleteText="Delete" HeaderText="Delete" />
            </Columns>
        </asp:GridView>
    </asp:Panel>
</asp:Content>
