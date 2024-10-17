using Asp.NetResume.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.AdminForms
{
    public partial class EducationEdit : System.Web.UI.Page
    {
        int id;
        Tbl_EducationsTableAdapter adapter = new Tbl_EducationsTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["EducationId"]);
            if (Page.IsPostBack == false)
            {
                try
                {
                    TextBox1.Text = adapter.EducationEditList(id)[0].EducationTitle;
                    TextBox2.Text = adapter.EducationEditList(id)[0].EducationSubtitle;
                    TextBox3.Text = adapter.EducationEditList(id)[0].EducationDescription;
                    TextBox4.Text = adapter.EducationEditList(id)[0].EducationAvg;
                    TextBox5.Text = adapter.EducationEditList(id)[0].EducationDate;
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            adapter.UpdateEducation(TextBox1.Text,TextBox2.Text, TextBox3.Text,TextBox4.Text,TextBox5.Text,id);
            Response.Redirect("EducationList.aspx");
        }
    }
}