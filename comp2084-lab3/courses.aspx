<%@ Page Title="Courses" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="comp2084_lab3.courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Courses</h1>

    <a href="course-details.aspx">Add Course</a>
    <asp:GridView ID="grdCourses" AutoGenerateColumns="false" DataKeyNames="CourseID" CssClass="table table-striped table-hover"  runat="server">
        <Columns>
            <asp:BoundField DataField="CourseID" HeaderText="Course ID" />
            <asp:BoundField DataField="Title" HeaderText="Title" />
            <asp:BoundField DataField="Credits" HeaderText="Credits" />
            <asp:BoundField DataField="Depmartment.Name" HeaderText="Department" />
             <asp:HyperLinkField HeaderText="Edit" NavigateUrl="course-details.aspx" Text="Edit"
             DataNavigateUrlFormatString="course-details.aspx?CourseID={0}" DataNavigateUrlFields="CourseID"/>
        </Columns>
    </asp:GridView>

    <div></div>
</asp:Content>
