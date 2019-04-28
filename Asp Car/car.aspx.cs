using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Car
{
    public partial class car : System.Web.UI.Page
    {
        CarsEntities data = new CarsEntities();
        Business bus = new Business();
        protected void Page_Load(object sender, EventArgs e)
        {
            Car_grid.DataSource = data.Mains.ToList();
            Car_grid.DataBind();//this loaded the data to both of table 
            Engine_grid.DataSource = data.Engines.ToList();
            Engine_grid.DataBind();
        }

        protected void Car_grid_SelectedIndexChanged(object sender, EventArgs e)
        {
            Color_txt.Text = Car_grid.SelectedRow.Cells[3].Text;
            Name_txt.Text = Car_grid.SelectedRow.Cells[4].Text;
            Make_txt.Text = Car_grid.SelectedRow.Cells[5].Text;
            Year_txt.Text = Car_grid.SelectedRow.Cells[6].Text;
            E_idtxt.Text = Car_grid.SelectedRow.Cells[2].Text;//this puts the data from table to textbox
            Carid_txt.Text = Car_grid.SelectedRow.Cells[1].Text;


        }

        protected void Engine_grid_SelectedIndexChanged(object sender, EventArgs e)
        {
           E_idtxt .Text = Engine_grid .SelectedRow.Cells[1].Text;

        }

        protected void Add_btn_Click(object sender, EventArgs e)
        {

            bus.AddMain(Color_txt.Text, Name_txt.Text, Make_txt.Text, Year_txt.Text , Convert.ToInt32(E_idtxt.Text));
            Response.Redirect("car.aspx");//this adds the to main table
        }

        protected void Delete_btn_Click(object sender, EventArgs e)
        {
            bus.Del_main(Convert.ToInt32(Carid_txt.Text));
            Response.Redirect("car.aspx");//it delets from main table
        }

        protected void Update_btn_Click(object sender, EventArgs e)
        {
            bus.CarChange(Convert.ToInt32(Carid_txt.Text), Color_txt.Text, Name_txt.Text, Make_txt.Text, Year_txt.Text, Convert.ToInt32(E_idtxt.Text));
            Response.Redirect("car.aspx");//it updates the table data
        }

        protected void log_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");//it logs u out 
        }
    }
}