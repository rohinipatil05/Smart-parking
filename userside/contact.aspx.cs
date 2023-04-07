using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Database_Helpers;

public partial class userside_contact : System.Web.UI.Page
{
    helper db = new helper();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    bool cont()
    {
        db.values.Add("first", TextBox1.Text);
        db.values.Add("last", TextBox2.Text);
        db.values.Add("email", TextBox5.Text);
        db.values.Add("msg", TextBox4.Text);
        if (db.insert("contact", db.values))
        {
            return true;
        }
        else
        {
            return false;
        }


    }
    protected void subbtn_Click(object sender, EventArgs e)
    {
        if (cont())
        {
            msg_lbl.Text = "Message sent Successfully";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox5.Text = "";
            TextBox4.Text = "";
        }
        else
        {
            msg_lbl.Text = "Failed";
        }
    }
}