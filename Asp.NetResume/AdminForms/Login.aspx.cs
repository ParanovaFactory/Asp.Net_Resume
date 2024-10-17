using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.NetResume.AdminForms
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=predator;Initial Catalog=Db_Resume;Integrated Security=True;TrustServerCertificate=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand sqlCommand = new SqlCommand("select * from Tbl_Admin where Username = @p1 and Password = @p2",connection);
            sqlCommand.Parameters.AddWithValue("@p1", TextUSR.Text);
            sqlCommand.Parameters.AddWithValue("@p2", TextPASS.Text);
            SqlDataReader reader = sqlCommand.ExecuteReader();
            if (reader.Read())
            {
                Response.RedirectPermanent("AboutList.aspx");
            }
            else
            {
                Response.Write("Chech the Username and Password");
            }
        }
    }
}