using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class signup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-NS74VV97\SQLEXPRESS;Initial Catalog=fort;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Declering the data set
        SqlCommand cmd = new SqlCommand("insert into FortSign (First_name,Last_name,Email,Mobile_no,Address,DOB,username,password) Values(@fnm,@lnm,@mail,@Pno,@Addr,@DOB,@unm,@pass)", con);
        cmd.Parameters.AddWithValue("@fnm", txtfnm.Text);
        cmd.Parameters.AddWithValue("@lnm", txtlnm.Text);
        cmd.Parameters.AddWithValue("@mail", txtmail.Text);
        cmd.Parameters.AddWithValue("@Pno", txtnumber.Text);
        cmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
        cmd.Parameters.AddWithValue("@Addr", txtaddr.Text);
        cmd.Parameters.AddWithValue("@unm", txtunm.Text);
        cmd.Parameters.AddWithValue("@pass", txtpass.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        txtfnm.Text = "";
        txtlnm.Text = "";
        txtmail.Text = "";
        txtnumber.Text = "";
        txtaddr.Text = "";
        txtDOB.Text = "";
        txtunm.Text = "";
        txtpass.Text = "";
    }
}