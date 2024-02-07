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
        String nm, img, add, ct, mb, em, pass,q;
        nm = txtnm.Value;
        img = Server.MapPath("users-image");
        if(FileUpload1.HasFile==true)
        { 
            img= img +"//"+FileUpload1.FileName;

            FileUpload1.SaveAs(img);
            Session["userimage"] = img;
        }
       
        add = txtadd.Value;
        ct = txtct.Value;
        mb = txtmb.Value;
        em = txtem.Value;
        pass = txtpass.Value;

        try
        {
            q = "select * from users where email = '" + em + "'";
            cmd.Connection = con;
            cmd.CommandText = q;

            SqlDataReader dr = cmd.ExecuteReader();
            if(!dr.HasRows)
            {
                dr.Close();

                q="insert into users(name,image,address,city,mobile,email,password) values('" + nm + "','" + img + "','" + add + "','" + ct + "','" + mb + "','" + em + "','" + pass + "')";

                cmd.Connection = con;
                cmd.CommandText = q;

                int row = cmd.ExecuteNonQuery();
                if(row > 0)
                {
                    Response.Write("<script>alert('Registration Successfully 👍👍👍')</script>");
                    txtnm.Value = string.Empty;
                   
                    txtadd.Value = string.Empty;
                    txtct.Value = string.Empty;
                    txtmb.Value = string.Empty;
                    txtem.Value = string.Empty;
                    txtpass.Value = string.Empty;
                }
                else
                {
                    Response.Write("<script>alert('Something Else')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('This Email Already Registered')</script>");
                txtnm.Value = string.Empty;
               
                txtadd.Value = string.Empty;
                txtct.Value = string.Empty;
                txtmb.Value = string.Empty;
                txtem.Value = string.Empty;
                txtpass.Value = string.Empty;
            }
        }
        catch(Exception e1)
        {
            Response.Write("<script>alert('" + e1.Message + "')</script>");
             txtnm.Value=string.Empty;
            
             txtadd.Value = string.Empty;
             txtct.Value = string.Empty;
             txtmb.Value = string.Empty;
             txtem.Value = string.Empty;
             txtpass.Value = string.Empty;
        }
    }
}