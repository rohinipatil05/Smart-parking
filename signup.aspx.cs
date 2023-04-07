using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;
using System.Data.SqlClient;

public partial class signup : System.Web.UI.Page
{
    helper db = new helper();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void subbtn_Click(object sender, EventArgs e)
    {

        if (reg())
        {
            msg_lbl.Text = "registration successful";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";

        }
        else
        {
            msg_lbl.Text = "failed to register";
        }
    }


    bool reg()
    {
        db.values.Add("firstname", TextBox1.Text);
        db.values.Add("lastname", TextBox2.Text);
        db.values.Add("mobileno", TextBox3.Text);

        db.values.Add("addr", TextBox4.Text);
        db.values.Add("emailid", TextBox5.Text);
        db.values.Add("pass", TextBox6.Text);




        if (db.insert("users", db.values))
        {
            return true;

        }
        else
        {
            return false;
        }
    }

}