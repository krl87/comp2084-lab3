﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//add reference so we can use ef for database
using comp2084_lab3.Models;

namespace comp2084_lab3
{
    public partial class students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //call the GetStudents function to populate the grid
            if (!IsPostBack)
            {
                GetStudents();
            }

        }

        protected void GetStudents()
        {
            //use enity framework to connect to get list of students
            using (DefaultConnection db = new DefaultConnection())
            {
                var stud = from s in db.Students
                           select s;
                //bind stud query results to our grid
                grdStudents.DataSource = stud.ToList();
                grdStudents.DataBind();
            }
        }

        protected void grdStudents_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //identify id of student to delete from the row the user has chosen
            Int32 StudentID = Convert.ToInt32(grdStudents.DataKeys[e.RowIndex].Values["StudentID"]);

            //connect
            using (DefaultConnection db = new DefaultConnection())
            {
                Student stud = (from s in db.Students
                                where s.StudentID == StudentID
                                select s).FirstOrDefault();

                //delete
                db.Students.Remove(stud);
                db.SaveChanges();

                //refresh grid
                Response.Redirect("students.aspx");

            }
        }
    }
}