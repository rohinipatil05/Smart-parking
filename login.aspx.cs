using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;


public partial class login : System.Web.UI.Page
{
    helper db = new helper();
    string user_name;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
    }

    void logindt()
    {
        if (TextBox1.Text == "admin" && TextBox2.Text == "admin")
        {
            Response.Redirect("~/adminside/ParkingArea.aspx");
        }
        else
        {
            user_name = TextBox1.Text.Trim();
            string q = "select COUNT(emailid) from users where emailid='" + TextBox1.Text + "' AND pass='" + TextBox2.Text + "'";

            int res = db.get_scalar(q);
            if (res > 0)
            {
                Session["user"] = user_name;
                Response.Redirect("~/userside/home.aspx");


            }
            else
            {
                string message = "Login failed ";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

            }
        }
    }
    protected void subbtn_Click(object sender, EventArgs e)
    {
        logindt();
    }
}