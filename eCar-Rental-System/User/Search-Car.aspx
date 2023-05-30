<%@ import Namespace="System" %>
<%@ Page Title="Search Car" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search-Car.aspx.cs" Inherits="eCar_Rental_System.User.Search_Car" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <center>
        <h2>Search Car</h2>
        <asp:TextBox ID="Search_Textbox" runat="server" Font-Size="Medium" Height="48px" Width="400px" placeholder="Enter the number of seats" TextMode="Number" ></asp:TextBox>&nbsp;
        <asp:Button ID="Search_Btn" runat="server" BackColor="Black" CssClass="btn" Font-Size="Medium" ForeColor="White" Height="40px" Text="Search" OnClick="Search_Click" Width="109px" />
        <br />
    </center>
    <hr />

    <%if (allCars.Count == 0)
        {%>
            <center><h2>No Car Found !!</h2></center>
    <%} %>
    <% else
        { %>
    <div class="row">

        <%foreach (var car in allCars)
            { %>
                <div class="col-lg-3 col-md-6 col-sm-10 offset-md-0 offset-sm-1" style="margin-bottom: 10px;">
                    <div class="panel panel-default ">
                        <img  src=<%= car.ImageUrl %> style="width:100%; height:200px;" />
                        <div class="panel-body">
                            <b>Name:</b><p style="display:inline-block;">&nbsp;<%= car.Name %></p>&nbsp;&nbsp;&nbsp;
                            <b>Fuel Type:</b><p style="display:inline-block;">&nbsp;<%= car.FuelType %></p>
                            <br />
                            <b>Seat:</b><p style="display:inline-block;">&nbsp;<%= car.No_Seat %></p>&nbsp;&nbsp;&nbsp;
                            <b>Rate:</b><p style="display:inline-block;">&nbsp;&#8377;<%= car.Rate %>&nbsp;/km</p>
                            <br />
                            <a class="btn" style="background-color:black; color:white;" href=<%= "Add-Request.aspx?id="+car.Id %>>Add Request</a>
                        </div>
                    </div>
                </div>
        <%} %>

    </div>
    <%} %>


</asp:Content>
