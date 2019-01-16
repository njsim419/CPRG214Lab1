<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Temperature Calculator</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="Styles/Main.css" />
    </head>
    <body>
        <div Class="jumbotron text-center">
            <h2 style="color:#fff;">Temperature Calculator</h2>
        </div>
        <div class="container" style="margin-left:10%; margin-right:10%">
                <form id="form1" runat="server">
                    <div class="form-group">
                       <label for="FromList" class="mr-sm-2">From:</label>
                       <asp:DropDownList ID="FromList" class="form-control mb-2 mr-sm-2" runat="server">
                              <asp:ListItem Selected="True">Celsius</asp:ListItem>  <%-- Sets Celscius as the default type --%>
                              <asp:ListItem>Fahrenheit</asp:ListItem>
                              <asp:ListItem>Kelvin</asp:ListItem>
                       </asp:DropDownList>
                       <label for="ToList" class="mr-sm-2">Converting To:</label>
                           <asp:DropDownList ID="ToList" class="form-control mb-2 mr-sm-2" runat="server"> 
                               <asp:ListItem>Celsius</asp:ListItem>
                               <asp:ListItem Selected="True">Fahrenheit</asp:ListItem> <%-- Sets Fahrenheit as the default type --%>
                               <asp:ListItem>Kelvin</asp:ListItem>
                            </asp:DropDownList>
            </div>
            <div class="form-group"> 
                 <label for="InputTemp">Input Temperature:</label>
                     <asp:TextBox ID="InputTemp" class="form-control" runat="server"></asp:TextBox>
                     &nbsp;<asp:RangeValidator runat="server" id="rngDate" controltovalidate="InputTemp" type="Double" minimumvalue="-1000" maximumvalue="1000"
                     errormessage="Error: Your number must be between -1000 and 1000" CssClass="auto-style8" style="color: #CC0000" /> <%-- Verifies that the number inputed is between -1000 and 1000 --%>
            </div>
                     <label for="InputTemp">Output Temperature:</label>
                       <asp:TextBox ID="OutputField" runat="server" class="form-control"></asp:TextBox>
                       </br>
                       <asp:Button ID="ButtonClear" runat="server" Text="Clear" Class="btn btn-warning btn-block" OnClick="ButtonClear_Click" /> <%-- Clears the values. --%>
                       </br>
                       <asp:Button ID="ButtonCalculate" runat="server" OnClick="ButtonCalculate_Click" Class="btn btn-success btn-block" Text="Calculate"/>     
            </form>
            </div>
    </body>
</html>
