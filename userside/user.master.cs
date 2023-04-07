using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Database_Helpers;
using System.Data;
public partial class userside_user : System.Web.UI.MasterPage
{
    public string eml;
    public string firstname;
    public string lastname;


    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    helper db = new helper();

    protected void Page_Load(object sender, EventArgs e)
    {



        if (Session["user"] == null)
        {
            Response.Redirect("~/login.aspx");
        }

        else
        {
            showdata();
        }
    }


    void showdata()
    {
        db.Connection.Open();
        string q = "select * from users where emailid='" + Session["user"] + "'";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        
        sda.SelectCommand = cmd;
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count == 1)
        {

            firstname = ds.Tables[0].Rows[0]["firstname"].ToString();
            lastname = ds.Tables[0].Rows[0]["lastname"].ToString();
            eml = ds.Tables[0].Rows[0]["emailid"].ToString();


            userlabel.Text = "Welcome " + firstname + " " + lastname;
        }
        db.Connection.Close();


    }
}
