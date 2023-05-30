<%@ import Namespace="System" %>
<%@ Page Title="Add Car" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add-Car.aspx.cs" Inherits="eCar_Rental_System.Admin.Add_Car" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>&nbsp;Add Car !!</h2>
    <hr />
    <p>&nbsp;<asp:Label ID="Name_Label" runat="server" Font-Size="Medium" Text="Name : "></asp:Label>
        <asp:RequiredFieldValidator ID="Name_Validator" runat="server" ControlToValidate="Name_Textbox" Display="Dynamic" ErrorMessage="*Name is Required !" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:TextBox ID="Name_Textbox" runat="server" Height="40px" Width="100%" Font-Size="Medium"></asp:TextBox>
    </p>

     <p><asp:Label ID="Seat_Label" runat="server" Font-Size="Medium" Text="No.of Seats : "></asp:Label>
        <asp:RequiredFieldValidator ID="Seat_Validator" runat="server" ControlToValidate="Seat_Textbox" Display="Dynamic" ErrorMessage="*No.of Seats are Required !" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:TextBox ID="Seat_Textbox" runat="server" Height="40px" Width="100%" Font-Size="Medium" TextMode="Number"></asp:TextBox>
    </p>

    <p><asp:Label ID="Rate_Label" runat="server" Font-Size="Medium" Text="Rate : "></asp:Label>
        <asp:RequiredFieldValidator ID="Rate_Validator" runat="server" ControlToValidate="Rate_Textbox" Display="Dynamic" ErrorMessage="*Rate is Required !" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:TextBox ID="Rate_Textbox" runat="server" Height="40px" Width="100%" Font-Size="Medium" TextMode="Number"></asp:TextBox>
    </p>

    <p><asp:Label ID="FuelType_Label" runat="server" Font-Size="Medium" Text="Fuel Type : "></asp:Label>
        <asp:DropDownList ID="FuelType_Dropdown" runat="server" Font-Size="Medium" Height="40px" Width="195px">
            <asp:ListItem Selected="True">Diesel</asp:ListItem>
            <asp:ListItem>Petrol</asp:ListItem>
        </asp:DropDownList>
    </p>

    <p><asp:Label ID="Image_Label" runat="server" Font-Size="Medium" Text="Upload Image : "></asp:Label>
        <asp:RequiredFieldValidator ID="Image_Validator" runat="server" ControlToValidate="Image_Upload" Display="Dynamic" ErrorMessage="*Image is Required !" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:FileUpload ID="Image_Upload" runat="server" Height="100%" Width="100%" Font-Size="Large" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Submit_Btn" runat="server" Height="40px" Text="ADD CAR" Width="10%" BackColor="Black" BorderColor="White" CssClass="btn" Font-Bold="True" Font-Size="Large" ForeColor="White" OnClick="AddCar_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Back_Btn" runat="server" Height="40px" Text="BACK" Width="10%" BackColor="Black" BorderColor="White" CssClass="btn" Font-Bold="True" Font-Size="Large" ForeColor="White" CausesValidation="False" OnClick="Back_Click" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</asp:Content>
