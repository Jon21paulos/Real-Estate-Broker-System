using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace RealEstateBroker
{

    public partial class AdminPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("data source=DESKTOP-OVMSILC\\SQLEXPRESS; database=RealEstateBroker; integrated security=SSPI");
        string ID;
        string pathImage1, pathImage2, pathImage3, pathVideo;


        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            ID = id;
            Name.Text = id;
        }
        
        protected void UploadID_Click(object sender, EventArgs e)
        {
            if((FileUpload1.PostedFile != null)&& (FileUpload1.PostedFile.ContentLength > 0))
            {
                string extImage1 = Path.GetExtension(FileUpload1.FileName);
                if ((extImage1 == ".jpg" || extImage1 == ".png"))
                {
                    FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "Images//" + FileUpload1.FileName);
                    pathImage1 = FileUpload1.FileName;
                }
                else
                {
                    FileUploadID.Text = "incorrect file type";
                    FileUploadID.ForeColor = System.Drawing.Color.Red;

                }

            }
            if ((FileUpload2.PostedFile != null) && (FileUpload2.PostedFile.ContentLength > 0))
            {
                string extImage2 = Path.GetExtension(FileUpload1.FileName);
                if ((extImage2 == ".jpg" || extImage2 == ".png"))
                {
                    FileUpload2.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "Images//" + FileUpload2.FileName);
                    pathImage2 = FileUpload2.FileName;
                }
                else
                {
                    FileUploadID.Text = "incorrect file type";
                    FileUploadID.ForeColor = System.Drawing.Color.Red;

                }

            }
            if ((FileUpload3.PostedFile != null) && (FileUpload3.PostedFile.ContentLength > 0))
            {
                string extImage3 = Path.GetExtension(FileUpload3.FileName);
                if ((extImage3 == ".jpg" || extImage3 == ".png"))
                {
                    FileUpload3.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "Images//" + FileUpload3.FileName);
                    pathImage3 = FileUpload3.FileName;
                }
                else
                {
                    FileUploadID.Text = "incorrect file type";
                    FileUploadID.ForeColor = System.Drawing.Color.Red;

                }

            }
            if ((FileUpload4.PostedFile != null) && (FileUpload4.PostedFile.ContentLength > 0))
            {
                string extVideo = Path.GetExtension(FileUpload4.FileName);
                if ((extVideo == ".mp4" || extVideo == ".mkv"))
                {
                    FileUpload4.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "Images//" + FileUpload4.FileName);
                    pathVideo = FileUpload4.FileName;
                }
                else
                {
                    FileUploadID.Text = "incorrect file type";
                    FileUploadID.ForeColor = System.Drawing.Color.Red;

                }             

            }

            string query = "insert into PostForm(Name,Discription,City,Address,Price,Image1,Image2,Image3,Video)values('" + ID + "','" + DiscriptionID.Text + "','" + CityID.Text + "','" + AddressID.Text + "','" + PriceID.Text + "','" + pathImage1 + "','" + pathImage2 + "','" + pathImage3 + "','" + pathVideo + "')";
            SqlCommand cmd = new SqlCommand(query, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            FileUploadID.Text = "you successfully posted";
            FileUploadID.ForeColor = System.Drawing.Color.Green;

        }
   
   }
     
}