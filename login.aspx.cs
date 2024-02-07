using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(localdb)\v11.0;Initial Catalog=livgard;Integrated Security=True;Pooling=False");
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsub_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();

        string em, pass, q;

        em = txtemail.Value;
        pass = txtpass.Value;

        try
        {
            q = "select * from users where email = '" + em + "'";
            cmd.Connection = con;
            cmd.CommandText = q;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                if (pass.ToString() == dr["password"].ToString())
                {
                    Session["userid"] = dr["email"];
                    Response.Redirect("index.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Your Password Is Wrong')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('You Are Not Registered')</script>");
            }
        }
        catch (Exception e1)
        {
            Response.Write("<script>alert('" + e1.Message + "')</script>");
        }    
    }
}