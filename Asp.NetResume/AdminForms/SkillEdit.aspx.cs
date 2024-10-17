using Asp.NetResume.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.AdminForms
{
    public partial class SkillEdit : System.Web.UI.Page
    {
        int id;
        Tbl_SkillsTableAdapter adapter = new Tbl_SkillsTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["SkillId"]);

            if (Page.IsPostBack == false)
            {
                try
                {
                    TextBox1.Text = adapter.SkillEditList(id)[0].SkillTitle;
                    TextBox2.Text = adapter.SkillEditList(id)[0].SkillName;
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            adapter.UpdateSkill(TextBox1.Text, TextBox2.Text, id);
            Response.Redirect("SkillList.aspx");
        }
    }
}