<%@ Import Namespace="System" %>
<%@ Page Title="My Request" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="My-Request.aspx.cs" Inherits="eCar_Rental_System.User.My_Request" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <h2>My Requests</h2>

    <hr />
    <% if(requests.Count == 0){ %>
        <center><h3>No Request Found !</h3></center
    <%} %>

    <hr />
    <center>
        <asp:Label ID="msg_label" runat="server" Text="" ForeColor="Red" Font-Size="Medium" ></asp:Label>
    </center>
    <hr />
    <div class="row">
    <table class="table table-striped">
        <thead>
        <tr>
            <th class="col-lg-2 col-md-6 col-sm-10">Name</th>
            <th class="col-lg-1 col-md-6 col-sm-10" style="width: 110px">No.of Seat</th>
            <th class="col-lg-2 col-md-6 col-sm-10">Start Date</th>
            <th class="col-lg-2 col-md-6 col-sm-10">End Date</th>
            <th class="col-lg-1 col-md-6 col-sm-10">Status</th>
            <th class="col-lg-2 col-md-6 col-sm-10">Action</th>
        </tr>
        </thead>

    <tbody>
        <% foreach(var req in requests)
            { %>
                <tr style="font-size:medium">
                    <td class="col-lg-2 col-md-6 col-sm-10" style="left: 0px; top: 37px; width: 137px" ><%= req.car.Name %></td>
                    <td class="col-lg-1 col-md-6 col-sm-10" style="width: 110px"><%= req.car.No_Seat %></td>
                    <td class="col-lg-2 col-md-6 col-sm-10"><%= req.StartDate %></td>
                    <td class="col-lg-2 col-md-6 col-sm-10"><%= req.EndDate %></td>
                    <td class="col-lg-1 col-md-6 col-sm-10" ><%= req.Status %></td>
                    <td class="col-lg-2 col-md-6 col-sm-10">
                        <% if (req.Status == "Pending")
                            { %>
                            <a class="btn" style="background-color:black; color:white;" href=<%= "Edit-Request.aspx?id=" + req.Id %>>EDIT</a>
                            &nbsp;&nbsp;&nbsp;
                            <a class="btn" style="background-color:black; color:white;" href=<%= "Delete-Request.aspx?id=" + req.Id %>>DELETE</a>
                        <%} %>
                    </td>
                </tr>
        <%} %>
    </tbody>
    </table>
    </div>

</asp:Content>
