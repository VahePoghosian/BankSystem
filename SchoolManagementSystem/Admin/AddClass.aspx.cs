using System;
using System.Data;
using System.Drawing;
using SchoolManagementSystem.Models; // Համոզվիր, որ սա ճիշտ է

namespace SchoolManagementSystem.Admin
{
    public partial class AddClass : System.Web.UI.Page
    {
        // Սա քո օժանդակ դասն է
        CommonFn fn = new CommonFn();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Այս մասը կարող է դատարկ մնալ
        }

        // ՍԱ ԱՅՆ ՖՈՒՆԿՑԻԱՆ Է, ՈՐԸ ՔՈ ՄՈՏ ՉԿԱՐ
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                string className = txtClass.Text.Trim();

                // Ստուգում ենք՝ արդյոք դասարանը արդեն կա
                DataTable dt = fn.Fetch("SELECT * FROM Class WHERE ClassName = '" + className + "'");

                if (dt.Rows.Count == 0)
                {
                    // Ավելացնում ենք նոր դասարան
                    fn.Query("INSERT INTO Class (ClassName) VALUES ('" + className + "')");

                    lblMsg.Text = "Class added successfully!";
                    lblMsg.ForeColor = Color.Green;
                    txtClass.Text = string.Empty;
                }
                else
                {
                    lblMsg.Text = "Class already exists!";
                    lblMsg.ForeColor = Color.Red;
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error: " + ex.Message;
                lblMsg.ForeColor = Color.Red;
            }
        }
    }
}