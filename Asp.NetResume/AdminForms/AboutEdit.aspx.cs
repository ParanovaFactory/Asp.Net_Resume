using Asp.NetResume.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.AdminForms
{
    public partial class AboutEdit : System.Web.UI.Page
    {
        Tbl_AboutTableAdapter adapter = new Tbl_AboutTableAdapter();
        int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["AboutId"]);
            if (Page.IsPostBack == false) 
            {
                try
                {
                    TextBox1.Text = adapter.AboutList()[0].AboutName;
                    TextBox2.Text = adapter.AboutList()[0].AboutSurname;
                    TextBox3.Text = adapter.AboutList()[0].AboutAddress;
                    TextBox4.Text = adapter.AboutList()[0].AboutMail;
                    TextBox5.Text = adapter.AboutList()[0].AboutPhone;
                    TextBox6.Text = adapter.AboutList()[0].AboutGitHub;
                    TextBox7.Text = adapter.AboutList()[0].AboutLinkedin;
                    TextBox8.Text = adapter.AboutList()[0].AboutImage;
                    txtContext.Value = adapter.AboutList()[0].AboutContext;
                }
                catch (Exception)
                {

                    throw;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            adapter.UpdateAbout(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text, txtContext.Value, TextBox6.Text, TextBox7.Text, TextBox8.Text,id);
            Response.Redirect("AboutList.aspx");
        }
    }
}