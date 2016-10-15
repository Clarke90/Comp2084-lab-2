using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Week6
{
    public partial class student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // get the departments and display in the gridview
            getStudent();
        }

        protected void getStudent()
        {
            // connect to db
            var conn = new ContosoEntities();

            // run the query using LINQ
            var Student = from d in conn.Student
                           select d;

            // display query result in gridview
            grdstudents.DataSource = Student.ToList();
            grdstudents.DataBind();

        }


    }
}