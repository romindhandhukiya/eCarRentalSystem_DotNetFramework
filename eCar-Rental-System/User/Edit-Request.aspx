<%@ Import Namespace="System" %>
<%@ Page Title="Edit Request" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit-Request.aspx.cs" Inherits="eCar_Rental_System.User.Edit_Request" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <h2>Edit Request</h2>

    <hr />

    <img src=<%= req.car.ImageUrl %> style="width:300px; height:300px;" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="vl" style="height:394px; display:inline-block; vertical-align:top; border-left-style: solid; border-left-color: inherit; border-left-width: 1px;"></div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <div style="display:inline-block; vertical-align:top; width: 303px; height: 375px; margin-top: 0px;">
        
        <table class="nav-justified" style="margin-top: 37px">
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
        </table>
        <br />
        <br />

        <label>Starting Date :</label>&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="StartDate_Validator" runat="server" ControlToValidate="StartDate_Textbox" Display="Dynamic" ErrorMessage="*Starting Date is required !" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="StartDate_Textbox" runat="server" Width="100%" Height="40px" Font-Size="Medium" TextMode="DateTimeLocal"></asp:TextBox>
        <br />
        <br />

        <label>Ending Date :</label>&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="EndDate_Validator" runat="server" ControlToValidate="EndDate_Textbox" Display="Dynamic" ErrorMessage="*Ending Date is required !" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="EndDate_Textbox" runat="server" Width="100%" Height="40px" Font-Size="Medium" TextMode="DateTimeLocal"></asp:TextBox>
        <br />
        <br />

        <center>
            <asp:Button ID="Edit_Btn" runat="server" Text="EDIT" Font-Bold="False" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Medium" ForeColor="White" Height="40px" Width="100px" OnClick="Edit_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Back_Btn" runat="server" Text="BACK" Font-Bold="False" BorderStyle="Solid" BackColor="Black" CssClass="btn" Font-Size="Medium" ForeColor="White" Height="40px" Width="100px" CausesValidation="False" OnClick="Back_Click" />
        </center>
        <br />
    </div>

</asp:Content>
