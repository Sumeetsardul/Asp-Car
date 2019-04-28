<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="car.aspx.cs" Inherits="Asp_Car.car" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
  margin: 0;
  font-family: Tahoma, Geneva, sans-serif;
   background-image: url("https://sunsetblaze.net/wp-content/uploads/2018/07/ford-mustang-gt-wallpaper-wallpaper-studio-10-beautiful-of-hd-wallpapers-1440x900-cars-of-hd-wallpapers-1440x900-cars.jpg");
     background-attachment: fixed;
   height: 100%;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.active {
  background-color: #4CAF50;
  color: white;
}

.topnav .icon {
  display: none;
}
.o {
	
	
    top: 0%;
    left:5%;
    font-size: 20px;

    width: 20%;
  height:20%;
    text-align: center;
position: sticky  ;
}
.p {
	
	
    top: 0%;
    left:70%;
    font-size: 20px;

    width: 20%;
  height:20%;
    text-align: center;
position: sticky  ;
}
.y {
	font-family: 'Yu Gothic UI';
	
	
	 	 	font-size: 25px;

    
    padding: 20px;
    background:  white;
  
}
    </style>
</head>
<body>
    <div class="topnav" id="myTopnav">
  
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
    <form id="form1" runat="server">
        <asp:GridView class="o" ID="Car_grid" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="Car_grid_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:GridView class="p" ID="Engine_grid" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnSelectedIndexChanged="Engine_grid_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <br />
        <br />
        <div class ="y ">
        <asp:Label ID="Label1" runat="server" Font-Names="Nirmala UI" Font-Size="Large" Text="Car_id"></asp:Label>
        <asp:TextBox ID="Carid_txt" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Font-Names="Nirmala UI" Font-Size="Large" Text="Color"></asp:Label>
        <asp:TextBox ID="Color_txt" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Font-Names="Nirmala UI" Font-Size="Large" Text="Name"></asp:Label>
        <asp:TextBox ID="Name_txt" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Font-Names="Nirmala UI" Font-Size="Large" Text="Make"></asp:Label>
        <asp:TextBox ID="Make_txt" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Font-Names="Nirmala UI" Font-Size="Large" Text="Year"></asp:Label>
        <asp:TextBox ID="Year_txt" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Font-Names="Nirmala UI" Font-Size="Large" Text="Engine_Id"></asp:Label>
        <asp:TextBox ID="E_idtxt" runat="server" ReadOnly="True"></asp:TextBox>
            </div>
        <p>
            <asp:Button ID="Add_btn" runat="server" BackColor="Lime" BorderStyle="None" Font-Names="Segoe UI" ForeColor="Black" Height="38px" OnClick="Add_btn_Click" Text="Add" Width="79px" />
            <asp:Button ID="Delete_btn" runat="server" BackColor="Lime" BorderStyle="None" Font-Names="Segoe UI" ForeColor="Black" Height="38px" OnClick="Delete_btn_Click" Text="Delete" Width="79px" />
            <asp:Button ID="Update_btn" runat="server" BackColor="Lime" BorderStyle="None" Font-Names="Segoe UI" ForeColor="Black" Height="38px" OnClick="Update_btn_Click" Text="Update" Width="79px" />
            <asp:Button ID="log_btn" runat="server" OnClick="log_btn_Click" Text="Log Out" />
        </p>
    </form>
</body>
</html>
