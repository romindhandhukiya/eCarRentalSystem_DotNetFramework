<%@ import Namespace="System" %>
<%@ Page Title="Manage Car" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage-Car.aspx.cs" Inherits="eCar_Rental_System.Admin.Manage_Car" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <h2>Manage Car</h2>
     <center>
        <asp:TextBox ID="Search_Textbox" runat="server" Font-Size="Medium" Height="48px" Width="400px" placeholder="Enter the number of seats" TextMode="Number" ></asp:TextBox>&nbsp;
        <asp:Button ID="Search_Btn" runat="server" BackColor="Black" CssClass="btn" Font-Size="Medium" ForeColor="White" Height="40px" Text="SEARCH" OnClick="Search_Click" Width="109px" />
        <br />
    </center>
    <hr />

    <center>
        <asp:Button ID="AddCar_Btn" runat="server" BackColor="Black" CssClass="btn" Font-Size="Medium" ForeColor="White" Height="40px" Text="ADD CAR" OnClick="AddCar_Click" Width="109px" />
    </center>
    <br />
    <center>
        <h4 style="color:red;"><asp:Label ID="Server_Message" runat="server" Text=""></asp:Label></h4>
    </center>

    <%if(allCars.Count == 0) {%>
            <center><h2>No Car Found !!</h2></center>
            <br /><br /><br /><br /><br /><br /><br /><br /><br />
            <br /><br /><br /><br /><br /><br /><br /><br />
    <%} %>
    <% else
        { %>
    <div class="row">

        <%foreach (var car in allCars)
            { %>
                <div class="col-lg-3 col-md-6 col-sm-10 offset-md-0 offset-sm-1" style="margin-bottom: 10px;">
            <div class="panel panel-default ">
                <img src=<%= car.ImageUrl %> style="width:100%; height:200px;" />
                <div class="panel-body">
                    <b>Name:</b><p style="display:inline-block;">&nbsp;<%= car.Name %></p>&nbsp;&nbsp;&nbsp;
                    <b>Fuel Type:</b><p style="display:inline-block;">&nbsp;<%= car.FuelType %></p>
                    <br />
                    <b>Seat:</b><p style="display:inline-block;">&nbsp;<%= car.No_Seat %></p>&nbsp;&nbsp;&nbsp;
                    <b>Rate:</b><p style="display:inline-block;">&nbsp;&#8377;<%= car.Rate %>&nbsp;/km</p>
                    <br />
                    <a class="btn" style="background-color:black; color:white;" href=<%= "Edit-Car.aspx?id="+car.Id %>>EDIT</a>
                    &nbsp;&nbsp;&nbsp;
                    <a class="btn" style="background-color:black; color:white;" href=<%= "Delete-Car.aspx?id="+car.Id %>>DELETE</a>
                    <br />
                </div>
            </div>
        </div>
        <%} %>

    </div>
    <%} %>

        </div>
</asp:Content>
