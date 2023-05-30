<%@ Import Namespace="System" %>
<%@ Page Title="Delete Request" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Delete-Request.aspx.cs" Inherits="eCar_Rental_System.User.Delete_Request" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Delete Request</h2>

    <hr />

    <img src=<%= req.car.ImageUrl %> style="width:300px; height:300px;" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="vl" style="height:365px; display:inline-block; vertical-align:top; border-left-style: solid; border-left-color: inherit; border-left-width: 1px;"></div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <div style="display:inline-block; vertical-align:top; width: 306px; height: 330px; margin-top: 0px;">
        
        <table class="nav-justified" style="margin-top: 56px">
            <tr>
                <td style="width: 142px; height: 20px;"><label>Name :</label>&nbsp;</td>
                <td style="height: 20px">
                    <asp:Label ID="Name_Label" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 142px"><label>Fuel Type :</label>&nbsp;</td>
                <td>
                    <asp:Label ID="FuelType_Label" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 142px"><label>Rate :</label>&nbsp;</td>
                <td>
                    <asp:Label ID="Rate_Label" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 142px"><label>Seats :</label>&nbsp;</td>
                <td>
                    <asp:Label ID="Seat_Label" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 142px"><label>Starting Date :</label>&nbsp;</td>
                <td>
                    <asp:Label ID="StartDate_Label" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 142px; height: 20px;"><label>Ending Date :</label>&nbsp;</td>
                <td style="height: 20px">
                    <asp:Label ID="EndDate_Label" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        
        <br />
        <br />

        <h4>Are you sure to delete a Request ?</h4>

        <center>
            <asp:Button ID="Delete_Btn" runat="server" Text="DELETE" Font-Bold="False" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Medium" ForeColor="White" Height="40px" Width="100px" OnClick="Delete_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Back_Btn" runat="server" Text="BACK" Font-Bold="False" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Medium" ForeColor="White" Height="40px" Width="100px" CausesValidation="False" OnClick="Back_Click"/>
        </center>

        <br />
    </div>

</asp:Content>
