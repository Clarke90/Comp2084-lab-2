using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Week6
{
    public partial class Student_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Savebtn_Click(object sender, EventArgs e)
        {
            //connect
            var conn = new ContosoEntities();

            //use the s class of the new department object
            Student d = new Student();
            d.FirstMidName = txtFirstName.Text;
            d.LastName = txtLastName.Text;

            d.EnrollmentDate = DateTime.ParseExact(txtDate.Text, "dd/MM/yyyy", null);

            //save the new object into the database
            conn.Student.Add(d);
            conn.SaveChanges();

            //redirect to department page
            Response.Redirect("student.aspx");
        }
    }
}