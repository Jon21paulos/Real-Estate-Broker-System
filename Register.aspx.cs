using System;
using System.Data.SqlClient;


namespace RealEstateBroker
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterID_Click(object sender, EventArgs e)
        {
            SqlConnection con = null;
            try
            {
                // Creating Connection  
                con = new SqlConnection("data source=DESKTOP-OVMSILC\\SQLEXPRESS; database=RealEstateBroker; integrated security=SSPI");
                // Writing insert query  
                string query = "insert into Registration(FirstName,LastName,Email,Password,Address,Contact)values('" + FirstNameID.Text + "','" + LastNameID.Text + "','" + EmailID.Text + "','" + PasswordID.Text + "','" + AddressID.Text + "','" + ContactID.Text + "')";  

                SqlCommand sc = new SqlCommand(query, con);
                // Opening connection  
                con.Open();
                // Executing query  
                int status = sc.ExecuteNonQuery();
                Success.Text = "Your record has been saved successfuly!";
               
            }
            catch (Exception ex)
            {
                Success.Text="OOPs, something went wrong." + ex;
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }
        }
    }
}