using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace Assignment_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;


        }

        protected void ImgCalendar_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDOB.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                String firstName = txtFirstName.Text;
                String lastName = txtLastName.Text;
                String dob = Calendar1.SelectedDate.ToString("ddMMyyyy");
                String studentPath = firstName + "-" + lastName + "-" + dob + ".txt";
                String finalPath = "~\\Requests\\" + studentPath;


                using (System.IO.StreamWriter file = new StreamWriter(finalPath))
                {

                    file.WriteLine(txtFirstName.Text + " " + txtLastName.Text);
                    file.WriteLine(Calendar1.SelectedDate.ToString("dd/MM/yyyy"));
                    file.WriteLine(ddlGender.SelectedValue);
                    file.WriteLine(txtAddress1.Text);
                    file.WriteLine(txtAddress2.Text);
                    file.WriteLine(txtCity.Text);
                    file.WriteLine(ddlStates.SelectedValue);
                    file.WriteLine(txtZipCode.Text);
                    file.WriteLine(txtMobile.Text);
                    file.WriteLine(ddlTextYou.SelectedValue);
                    file.WriteLine(txtOtherPhone.Text);
                    file.WriteLine(txtEmail.Text);
                    file.WriteLine(ddlSemester.SelectedValue);
                    file.WriteLine(ddlCampus.SelectedValue);
                    file.WriteLine(ddlProgramofInterest.SelectedValue);
                    file.WriteLine(ddlInterStudent.SelectedValue);
                    file.WriteLine(ddlHousing.SelectedValue);
                    file.WriteLine(ddlVeteran.SelectedValue);
                    file.WriteLine(listHearUHCL.SelectedValue);
                }
            }
        }

        protected void CstValDOB_ServerValidate(object source, ServerValidateEventArgs args)
        {
            DateTime thisDay = DateTime.Today;
            System.TimeSpan diff = thisDay.Subtract(Calendar1.SelectedDate);
            if (diff.TotalDays <= 0)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
    }

        
 }
