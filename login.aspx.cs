using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-NS74VV97\SQLEXPRESS;Initial Catalog=fort;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("(select * from FortSign where username=@unm and password =@pass) ", con);

        cmd.Parameters.AddWithValue("@unm", txtmail.Text);
        cmd.Parameters.AddWithValue("@pass", txtpass.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {

            Response.Redirect("index.html");

        }
        else
        {
            lblmsg.Text = "incorrect username and password";

        }
    }
}