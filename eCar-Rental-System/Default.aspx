<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="eCar_Rental_System._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <h2>Welcome to Car-Rental-System !!</h2>
    
    <h3>
        <asp:Label ID="Login_labelId" runat="server" ForeColor="#00CC00"></asp:Label>
    </h3>
    <hr />
    
    <div style="display: flex; justify-content: center; align-items: center;">
       <img src="images/rentcar5.jpg"  style="width:30%; height:500px;"/>
       <img src="images/rentcar7.png"  style="width:40%; height:500px;"/>
       <img src="images/rentcar6.jpg"  style="width:30%; height:500px;"/>
    </div>

</asp:Content>
