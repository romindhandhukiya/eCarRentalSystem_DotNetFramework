<%@ import Namespace="System" %>
<%@ Page Title="Action Request" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Action-Request.aspx.cs" Inherits="eCar_Rental_System.Admin.Action_Request" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Action on Request</h2>

    <hr />

    <img src=<%= req.car.ImageUrl %> style="width:300px; height:300px;" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="vl" style="height:323px; display:inline-block; vertical-align:top; border-left-style: solid; border-left-color: inherit; border-left-width: 1px;"></div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <div style="display:inline-block; vertical-align:top; width: 350px; height: 289px;">
        
        <table class="nav-justified" style="margin-top: 48px">
            <tr>
                <td style="width: 161px"><label>User Name :</label>&nbsp;</td>
                <td>
                    <asp:Label ID="User_Label" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 161px"><label>Car Name :</label>&nbsp;</td>
                <td>
                    <asp:Label ID="Car_Label" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 161px"><label>Fuel Type :</label>&nbsp;</td>
                <td>
                    <asp:Label ID="FuelType_Label" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 161px"><label>Rate :</label>&nbsp;</td>
                <td>
                    <asp:Label ID="Rate_Label" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 161px"><label>Seats :</label>&nbsp;</td>
                <td>
                    <asp:Label ID="Seat_Label" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 161px"><label>Start Date :</label>&nbsp;</td>
                <td>
                    <asp:Label ID="StartDate_Label" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 161px"><label>End Date :</label>&nbsp;</td>
                <td>
                    <asp:Label ID="EndDate_Label" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        
        <br />
        <br />

        <asp:Button ID="Accept_Btn" runat="server" Text="ACCEPT" Font-Bold="False" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Medium" ForeColor="White" Height="40px" Width="100px" OnClick="Accept_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Decline_Btn" runat="server" Text="DECLINE" Font-Bold="False" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Medium" ForeColor="White" Height="40px" Width="100px" OnClick="Decline_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Back_Btn" runat="server" Text="BACK" Font-Bold="False" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Medium" ForeColor="White" Height="40px" Width="100px" CausesValidation="False" OnClick="Back_Click"/>
        <br />
    </div>

</asp:Content>
