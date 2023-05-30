<%@ Import Namespace="System" %>
<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="eCar_Rental_System.Account.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>&nbsp;Register Here !!</h2>
    <hr />
    <p>&nbsp;<asp:Label ID="Name_Label" runat="server" Font-Size="Medium" Text="Name : "></asp:Label>
        <asp:RequiredFieldValidator ID="Name_Validator" runat="server" ControlToValidate="Name_Textbox" Display="Dynamic" ErrorMessage="*Name is Required !" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:TextBox ID="Name_Textbox" runat="server" Height="40px" Width="100%" Font-Size="Medium"></asp:TextBox>
    </p>

    <p><asp:Label ID="Email_Label" runat="server" Font-Size="Medium" Text="Email : "></asp:Label>
        <asp:RequiredFieldValidator ID="Email_Validator" runat="server" ControlToValidate="Email_Textbox" Display="Dynamic" ErrorMessage="*Email is Required !" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="Email_Regular" runat="server" ControlToValidate="Email_Textbox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ErrorMessage="*Please Enter a Valid Email !" Font-Size="Medium" ForeColor="Red"></asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:TextBox ID="Email_Textbox" runat="server" Height="40px" Width="100%" Font-Size="Medium"></asp:TextBox>
    </p>

     <p><asp:Label ID="Mo_Label" runat="server" Font-Size="Medium" Text="Mobile No. : "></asp:Label>
        <asp:RequiredFieldValidator ID="Mo_Validator" runat="server" ControlToValidate="Mo_Textbox" Display="Dynamic" ErrorMessage="*Mobile Number is Required !" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="Mo_Regular" runat="server" ControlToValidate="Mo_Textbox" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$" Display="Dynamic" ErrorMessage="*Please Enter a Valid Mobile Number !" Font-Size="Medium" ForeColor="Red"></asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:TextBox ID="Mo_Textbox" runat="server" Height="40px" Width="100%" Font-Size="Medium" TextMode="Number"></asp:TextBox>
    </p>

    <p><asp:Label ID="Address_Label" runat="server" Font-Size="Medium" Text="Address : "></asp:Label>
        <asp:RequiredFieldValidator ID="Address_Validator" runat="server" ControlToValidate="Address_Textbox" Display="Dynamic" ErrorMessage="*Address is Required !" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:TextBox ID="Address_Textbox" runat="server" Height="40px" Width="100%" TextMode="MultiLine" Font-Size="Medium"></asp:TextBox>
    </p>

    <p>
        <asp:Label ID="Password_label" runat="server" Font-Size="Medium" Text="Password : "></asp:Label>
        <asp:RequiredFieldValidator ID="Password_Validation" runat="server" ControlToValidate="Password_Textbox" Display="Dynamic" ErrorMessage="*Password Is Required !" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:TextBox ID="Password_Textbox" runat="server" TextMode="Password" Height="40px" Width="100%" Font-Size="Medium"></asp:TextBox>
    </p>

    <p>
        <asp:Label ID="CPassword_Label" runat="server" Font-Size="Medium" Text="Confirm Password : "></asp:Label>
        <asp:RequiredFieldValidator ID="CPassword_Validator" runat="server" ControlToValidate="CPassword_Textbox" Display="Dynamic" ErrorMessage="*Confirm Password Is Required !" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CPassword_Compare" ControlToCompare="Password_Textbox" ControlToValidate="CPassword_Textbox" Display="Dynamic" runat="server" ErrorMessage="*Password and Confirm Password must be match !" Font-Size="Medium" ForeColor="Red"></asp:CompareValidator>
    </p>
    <p>
        <asp:TextBox ID="CPassword_Textbox" runat="server" TextMode="Password" Height="40px" Width="100%" Font-Size="Medium"></asp:TextBox>
    </p>

    <p>&nbsp;</p>
    <p>
        <asp:Button ID="Submit_Btn" runat="server" Height="40px" Text="REGISTER" OnClick="Register_Click" Width="100%" BackColor="Black" BorderColor="White" CssClass="btn" Font-Bold="True" Font-Size="Large" ForeColor="White" />
    </p>
    <p>
        Already Have an Account ? <asp:HyperLink ID="Login_Link" runat="server" CssClass="alert-link" Font-Size="Medium" ForeColor="#000099" NavigateUrl="~/Account/Login.aspx">Login</asp:HyperLink>
    </p>
    
</asp:Content>
