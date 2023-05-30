<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="eCar_Rental_System.Account.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2>&nbsp;Login Here !!</h2>
    <hr />
    <br />
    <p>&nbsp;<asp:Label ID="Email_Label" runat="server" Font-Size="Medium" Text="Email : "></asp:Label>
        <asp:RequiredFieldValidator ID="Email_Validator" runat="server" ControlToValidate="Email_Textbox" Display="Dynamic" ErrorMessage="*Email is Required !" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="Email_Regular" runat="server" ControlToValidate="Email_Textbox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ErrorMessage="*Please Enter a Valid Email !" Font-Size="Medium" ForeColor="Red"></asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:TextBox ID="Email_Textbox" runat="server" Height="40px" Width="100%" Font-Size="Medium"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Password_label" runat="server" Font-Size="Medium" Text="Password : "></asp:Label>
        <asp:RequiredFieldValidator ID="Password_Validation" runat="server" ControlToValidate="Password_Textbox" Display="Dynamic" ErrorMessage="*Password Is Required !" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:TextBox ID="Password_Textbox" runat="server" TextMode="Password" Height="40px" Width="100%" Font-Size="Medium"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Server_Label" runat="server" Font-Size="Medium" Text="Server Message : "></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="Server_Message" runat="server" Height="40px" Width="100%" Font-Size="Medium" ForeColor="Red" ReadOnly="True"></asp:TextBox>
    </p>
    <p>&nbsp;</p>
    <p>
        <asp:Button ID="Submit_Btn" runat="server" Height="40px" OnClick="Login_Click" Text="LOGIN" Width="100%" BackColor="Black" BorderColor="White" CssClass="btn" Font-Bold="True" Font-Size="Large" ForeColor="White" />
    </p>
    <p>
        Don't Have an Account ? <asp:HyperLink ID="Register_Link" runat="server" CssClass="alert-link" Font-Size="Medium" ForeColor="#000099" NavigateUrl="~/Account/Register.aspx">Register</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>


</asp:Content>
