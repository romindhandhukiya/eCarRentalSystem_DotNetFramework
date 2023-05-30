<%@ Import Namespace="System" %>
<%@ Page Title="Manage Request" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage-Request.aspx.cs" Inherits="eCar_Rental_System.Admin.Manage_Request" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Manage Requests</h2>

    <hr />
    <% if(AllRequests.Count != 0){ %>
        <center><h3>All pending Requests</h3></center>
    <%} else { %>
        <center><h3>No Request Found !</h3></center>
    <%} %>
    <center>
        <hr />
        <asp:Label ID="msg_label" runat="server" Text="" ForeColor="Red" Font-Size="Medium"></asp:Label></center>
    <hr />
    <div class="row">
    <table class="table table-striped">
        <thead>
        <tr>
            <th class="col-lg-2 col-md-6 col-sm-10">User Name</th>
            <th class="col-lg-2 col-md-6 col-sm-10">Car Name</th>
            <th class="col-lg-1 col-md-6 col-sm-10">No.of Seat</th>
            <th class="col-lg-2 col-md-6 col-sm-10">Start Date</th>
            <th class="col-lg-2 col-md-6 col-sm-10">End Date</th>
            <th class="col-lg-1 col-md-6 col-sm-10">Rate(/km)</th>
            <th class="col-lg-2 col-md-6 col-sm-10">Action</th>
        </tr>
        </thead>

    <tbody>
        <% foreach(var req in AllRequests)
            { %>
                <tr>
                    <td class="col-lg-2 col-md-6 col-sm-10" ><%= req.user.Name %></td>
                    <td class="col-lg-2 col-md-6 col-sm-10" ><%= req.car.Name %></td>
                    <td class="col-lg-1 col-md-6 col-sm-10"><%= req.car.No_Seat %></td>
                    <td class="col-lg-2 col-md-6 col-sm-10"><%= req.StartDate %></td>
                    <td class="col-lg-2 col-md-6 col-sm-10"><%= req.EndDate %></td>
                    <td class="col-lg-1 col-md-6 col-sm-10" ><%= req.car.Rate %></td>
                    <td class="col-lg-2 col-md-6 col-sm-10">
                    <a class="btn" style="background-color:black; color:white;" href=<%= "Action-Request.aspx?id=" + req.Id %>>Action</a>
                        
                    </td>
                </tr>
        <%} %>
    </tbody>
    </table>
    </div>

</asp:Content>
