using Asp.NetResume.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.AdminForms
{
    public partial class SkillList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Tbl_SkillsTableAdapter adapter = new Tbl_SkillsTableAdapter();
            Repeater1.DataSource = adapter.SkillList();
            Repeater1.DataBind();
        }
    }
}