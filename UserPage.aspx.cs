using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace RealEstateBroker
{
    public partial class UserPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("data source=DESKTOP-OVMSILC\\SQLEXPRESS; database=RealEstateBroker; integrated security=SSPI");
        protected void Page_Load(object sender, EventArgs e)
        {
            fill();
        }
        public void fill()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from PostForm", conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void ButtonId_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "insert into Apply(fname,lname,contact,comment,price)values('" + FirstNameID.Text + "','" + LastNameID.Text + "','" + ContactID.Text + "','" + CommentID.Text + "','" + PriceID.Text + "')";

                SqlCommand sc = new SqlCommand(query, conn);
                conn.Open();
                int status = sc.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
               // Success.Text = "OOPs, something went wrong." + ex;
            }
            
            finally
            {
                conn.Close();
            }
        }
    }
    }
