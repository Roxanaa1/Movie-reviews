using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proiect_MTP
{
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["ImagePath"] != null)
                {
                    Image2.ImageUrl = Session["ImagePath"].ToString();
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                // Preia datele din controalele de pe formular
                string biography = txtBiography.Text;
                string gender = ddlGender.SelectedValue;
                string email = txtEmail.Text;
                string newEmail = txtNewEmail.Text;
                string newPassword = txtNewPassword.Text;

                // Opreste operarea pentru a indica succesul
                Response.Write("<script>alert('Profil actualizat cu succes!');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Eroare la actualizarea profilului: " + ex.Message + "');</script>");
            }

        }

        protected void btnDeleteAccount_Click(object sender, EventArgs e)
        {
            try
            {
               
                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {
              
                Response.Write("<script>alert('Eroare la ștergerea contului: " + ex.Message + "');</script>");
            }

        }

        protected void ButtonDezactivareCont_Click(object sender, EventArgs e)
        {

        }

        protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}