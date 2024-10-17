using Asp.NetResume.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.AdminForms
{
    public partial class InterestEdit : System.Web.UI.Page
    {
        int id;
        Tbl_InterestsTableAdapter adapter = new Tbl_InterestsTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["InterestId"]);
            if (Page.IsPostBack == false)
            {
                try
                {
                    TextBox1.Text = adapter.InterestEditList(id)[0].InterestDescriptions;
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            adapter.UpdateInterest(TextBox1.Text,id);
            Response.Redirect("InterestsList.aspx");
        }
    }
}