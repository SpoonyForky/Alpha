<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transaction.aspx.cs" Inherits="Transaction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<!-- Styles Tricky part, get these done in order right -->
    <link rel="stylesheet" href="Styles/bootstrap-theme.css" />
    <link rel="stylesheet" href="Styles/bootstrap.css"/>
    <!-- Without Style you got no game                      -->

    <!-- Scripts Jquery first then d3 then bootstrap.. dont need d3 here-->
    <script src="Scripts/jquery-3.1.0.js"></script>

    <script src="Scripts/d3.js"></script>
 <!--   <script src="Scripts/bootstrap.js"></script>
     -->
    <script src="Scripts/bootstrap.min.js"></script>
    <!-- Scripts end                    -------------------------------->

</head>
<body>
    <!------------ Begin Nav  ----------------------->

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Money Money</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Sign up / Log in</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </div>
    </nav>
    <!------------ End Nav      -------------------->   
    <div class="container-fluid">
     <form id="form1" runat="server">
    <div>
    <div class="info">
        Please enter the description of the transaction and also the amount.
        If you are adding it to your account, please select <span class="text-success"> Income</span> if it is taking money out of your account
        please select <span class="text-danger">Expense</span>
    </div>
        <asp:Label ID="Label1" runat="server" Text="Description"></asp:Label>     
        &nbsp;&nbsp;&nbsp;&nbsp;     
        <asp:TextBox ID="TextBoxDesc" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Amount"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextAmount" runat="server"></asp:TextBox>
        <br />
     <asp:RadioButtonList ID="rblTransactionType" runat="server">
    <asp:ListItem  Text="Income" Value="debit" />
    <asp:ListItem  Text="Expense" Value="credit" />
    </asp:RadioButtonList>


        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" />


    </div>
    </form>
     </div>


</body>
</html>
