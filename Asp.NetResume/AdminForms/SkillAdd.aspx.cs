using Asp.NetResume.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.AdminForms
{
    public partial class SkillAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tbl_SkillsTableAdapter adapter = new Tbl_SkillsTableAdapter();
            adapter.InsertSkill(TextBox1.Text, TextBox2.Text);
            Response.Redirect("SkillList.aspx");
        }
    }
}