using System;
using System.Data.SqlClient;


namespace RealEstateBroker
{
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonId_Click(object sender, EventArgs e)
        {
            SqlConnection con = null;
            string path = "data source=DESKTOP-OVMSILC\\SQLEXPRESS; database=RealEstateBroker; integrated security=SSPI";
            try
            {
                con = new SqlConnection(path);
                SqlCommand cm = new SqlCommand("Select RealEsateName,RealEsatePassword from RealEstateAdmin", con);
                con.Open();
                SqlDataReader sdr = cm.ExecuteReader();

                if (UserNameID.Text == "Admin" && PasswordID.Text == "123")
                {
                    Response.Redirect("AdminPage.aspx");

                }
                
                while (sdr.Read())
                {

                    if (UserNameID.Text == sdr["RealEsateName"].ToString() && PasswordID.Text == sdr["RealEsatePassword"].ToString())
                    {
                        Response.Redirect("RealEstateAdminPage.aspx?id="+ sdr["RealEsateName"]);

                    }
                    else
                    {
                        Label.Text = "username or password not correct";

                    }
                 
                }
            }
            catch (Exception)
            {
                Console.WriteLine("OOPs, something went wrong.\n" + e);
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }
        
        }
    }
}