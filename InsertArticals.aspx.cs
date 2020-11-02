using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ArticalsSystem
{
    public partial class InsertArticals : System.Web.UI.Page
    {

        static SqlConnection sqlConnection = new SqlConnection();


        static SqlCommand command = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            sqlConnection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["academiaADBConnection"].ConnectionString;

            command.Connection = sqlConnection;

            command.CommandType = System.Data.CommandType.Text;
        }

        protected void Articalsbtn_Click(object sender, EventArgs e)
        {
            command.CommandText = "INSERT INTO  Articals (ArticalId,ArticalName,ArticalPublishDate,SubjectsId) VALUES('" +ArticalIDTextbox.Text + "','" + ArticalNameText.Text + "','" +
               DateText.Text +"'," + SubjectSelected.SelectedValue + ")";


            sqlConnection.Open();

            command.ExecuteNonQuery();


            sqlConnection.Close();
            Response.Redirect("Articals.aspx");

        }

       

        protected void MagAddbtn_Click(object sender, EventArgs e)
        {
            command.CommandText = "INSERT INTO  Magazine (MagazineId,MagazineName) VALUES('" + MagIdText.Text + "','" + MgTextBox.Text + "')";


            sqlConnection.Open();

            command.ExecuteNonQuery();

            sqlConnection.Close();
            Response.Redirect("Articals.aspx");

        }

        protected void ClearFormbtn1_Click(object sender, EventArgs e)
        {
            DateText.Text = "";
            ArticalIDTextbox.Text = "";
            ArticalNameText.Text = "";
            MagIdText.Text = "";
            MgTextBox.Text = "";
        }
    }
}