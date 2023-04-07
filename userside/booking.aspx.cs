using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Database_Helpers;

public partial class userside_booking : System.Web.UI.Page
{
    helper db = new helper();

    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    DataTable dtbl = new DataTable();

    public string bookSlotId;

    public List<items> item_list = new List<items>();
    public List<counts> counts_list = new List<counts>();

    public string aid;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            c1();
        }
        panel1.Visible = false;
        
    }

    void c1()
    {
        drp1.Items.Clear();
        db.Connection.Open();
        string q = "select * from parking_area";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            ListItem l1 = new ListItem();
            l1.Text = dr["area_name"].ToString();
            l1.Value = dr["Id"].ToString();
            this.drp1.Items.Add(l1);
        }
        //drp1.Items.Insert(0, new ListItem("--select--"));
        dr.Close();
        db.Connection.Close();
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        panel1.Visible = true;
        aid = drp1.SelectedValue.ToString();
        //checkStatus();
        showdata();
    }

    protected void drp1_SelectedIndexChanged(object sender, EventArgs e)
    {
        c2();
    }

    void c2()
    {
        aid = drp1.SelectedValue.ToString();
    }

    void checkStatus() {
        db.Connection.Open();
        string q = "select * from bookings where areaid='" + drp1.SelectedValue + "' and date = '"+select_date.Text+"'";
        SqlCommand cmd = new SqlCommand(q, db.Connection);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            while (reader.Read())
            {
                item_list.Add(new items(reader["slotno"].ToString(), reader["areaid"].ToString(), reader["date"].ToString()));
                //msg_lbl.Text = item_list.Count.ToString();
                bookSlotId = reader["slotno"].ToString();
            }
            //bookSlotId = reader["slotno"].ToString();
            msg_lbl.Text = bookSlotId;
        }
        db.Connection.Close();
    }

    void showdata()
    {
        for (int i = 1; i <= 10; i++)
        {
            string q = "select count(Id) from bookings where areaid='" + drp1.SelectedValue + "' and date = '" + select_date.Text + "' and slotno='" + i + "'";
            int res = db.get_scalar(q);
            if (res > 0)
            {
                counts_list.Add(new counts("Booked",i,false));
            }
            else {
                counts_list.Add(new counts("Available",i,true));
            }
        }
    }


   
}