using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Asp.NetResume.DataSet1TableAdapters;

namespace Asp.NetResume.AdminForms
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Tbl_AboutTableAdapter adapter = new Tbl_AboutTableAdapter();
            Repeater1.DataSource = adapter.AboutList();
            Repeater1.DataBind();
        }
    }
}