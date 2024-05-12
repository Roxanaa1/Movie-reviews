using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proiect_MTP
{
    public partial class MyProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("EditProfile.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.HasFile)
                {
                    // Setează căile pentru folderul virtual și cel fizic
                    string virtualFolder = "~/Imagini/Uploads/";
                    string physicalFolder = Server.MapPath(virtualFolder);
                    string fileName = Guid.NewGuid().ToString();
                    string extension = System.IO.Path.GetExtension(FileUpload1.FileName);

                    // Verifică extensia fișierului pentru a evita încărcarea de tipuri nesigure de fișiere
                    if (extension.Equals(".jpg", StringComparison.OrdinalIgnoreCase) ||
                        extension.Equals(".png", StringComparison.OrdinalIgnoreCase))
                    {
                        FileUpload1.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension));
                        Image2.ImageUrl = virtualFolder + fileName + extension;
                        ViewState["ImagePath"] = Image2.ImageUrl;
                    }
                    else
                    {
                        Response.Write("Formatul fișierului nu este acceptat. Încărcați doar imagini JPG sau PNG.");
                    }
                }
                else
                {
                    Response.Write("Selectați un fișier pentru încărcare.");
                }
            }
            catch (Exception ex)
            {
                // Log excepția și afișează un mesaj de eroare
                Response.Write("A apărut o eroare: " + ex.Message);
            }

        }

        protected void ButtonDeletePicture_Click(object sender, EventArgs e)
        {
            if (ViewState["ImagePath"] != null)
            {
                string physicalPath = Server.MapPath(ViewState["ImagePath"].ToString());
                if (System.IO.File.Exists(physicalPath))
                {
                    System.IO.File.Delete(physicalPath);
                    Image2.ImageUrl = null;
                    ViewState["ImagePath"] = null;
                    Response.Write("Imaginea a fost ștearsă cu succes.");
                }
                else
                {
                    Response.Write("Imaginea nu a fost găsită și nu a putut fi ștearsă.");
                }
            }
            else
            {
                Response.Write("Nu există nicio imagine de șters.");
            }
        }

        protected void ButtonViewPicture_Click(object sender, EventArgs e)
        {

            if (ViewState["ImagePath"] != null)
            {
                string imageUrl = ViewState["ImagePath"].ToString();
                Image2.ImageUrl = imageUrl;
                Image2.Visible = true;
            }
            else
            {
                Response.Write("Nicio imagine disponibila pentru vizualizare.");
            }
        }

        protected void ButtonAddPicture_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                string path = Server.MapPath("~/Imagini/") + filename;
                FileUpload1.SaveAs(path);
                Session["ImagePath"] = "~/Imagini/" + filename; // Salvăm calea în sesiune
            }
        }
    }
}