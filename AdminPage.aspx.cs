using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace RealEstateBroker
{
    public partial class AdminPage1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-OVMSILC\\SQLEXPRESS; database=RealEstateBroker; integrated security=SSPI");
        protected void Page_Load(object sender, EventArgs e)
        {
            fill();
        }
        public void fill()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from Apply", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
        
        

        protected void ButtonId_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection("data source=DESKTOP-OVMSILC\\SQLEXPRESS; database=RealEstateBroker; integrated security=SSPI");
                string query = "insert into RealEstateAdmin(ManagerFirstName,ManagerLastName,ManagerEmail,RealEsatePassword,RealEsateName)values('" + ManagerFirstNameID.Text + "','" + ManagerLastNameID.Text + "','" + ManagerEmailID.Text + "','" + RealEsatePasswordID.Text + "','" + RealEsateNameID.Text + "')";

                SqlCommand sc = new SqlCommand(query, con);
                con.Open();
                int status = sc.ExecuteNonQuery();
                Success.Text = "Your record has been saved successfuly!";

            }
            catch (Exception ex)
            {
                Success.Text = "OOPs, something went wrong." + ex;
            }
            finally
            {
                con.Close();
            }
        }
    }
    }
