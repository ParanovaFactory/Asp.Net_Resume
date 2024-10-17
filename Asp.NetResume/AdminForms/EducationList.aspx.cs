using Asp.NetResume.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.AdminForms
{
    public partial class EducationList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Tbl_EducationsTableAdapter adapter = new Tbl_EducationsTableAdapter();
            Repeater1.DataSource = adapter.EducationList();
            Repeater1.DataBind();
        }
    }
}