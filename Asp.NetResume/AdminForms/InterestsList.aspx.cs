using Asp.NetResume.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.AdminForms
{
    public partial class InterestsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Tbl_InterestsTableAdapter adapter = new Tbl_InterestsTableAdapter();
            Repeater1.DataSource = adapter.InterestList();
            Repeater1.DataBind();
        }
    }
}