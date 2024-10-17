using Asp.NetResume.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.AdminForms
{
    public partial class ExperienceAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tbl_ExperiencesTableAdapter adapter = new Tbl_ExperiencesTableAdapter();
            adapter.InsertExperience(TextBox1.Text, TextBox2.Text, txtContext.Value, TextBox6.Text);
            Response.Redirect("ExperienceList.aspx");
        }
    }
}