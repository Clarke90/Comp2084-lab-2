using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Web.ModelBinding;

namespace Week6
{
    public partial class Department_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //connect
            var conn = new ContosoEntities();

            //use department class of the new department object
            Department d = new Department();
            d.Name = txtName.Text;
            d.Budget = Convert.ToDecimal(txtBudget.Text);

            //save the new object into the database
            conn.Departments.Add(d);
            conn.SaveChanges();

            //redirect to department page
            Response.Redirect("departments.aspx");

            
        }
    }
}