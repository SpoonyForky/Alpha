<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserAccount.aspx.cs" Inherits="UserAccount" %>

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
                <a class="navbar-brand" href="/index.html">Money Money</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="/index.html">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="/UserAccount.aspx">Sign up / Log in</a></li>
                <li><a href="/Contact.html">Contact</a></li>
            </ul>
        </div>
    </nav>
    <!------------ End Nav      -------------------->
   <div class="container-fluid">
    <form id="form1" runat="server">
    <div class="container">
    
        Account<br />
        <br />
        <div class="row">

      <div class="col-md-6">
        Sign Up<br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
        <asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Repeat Password"></asp:Label>
        <asp:TextBox ID="TextPwRepeat" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>

        <br />

        <br />
        <asp:Button ID="ButtonCreate" runat="server" Text="Create" OnClick="ButtonCreate_Click" />
        <br />
        <br />
          </div>
      
        <div class="col-md-6">
        Sign Up<br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Username or Email"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="ButtonLogIn" runat="server" Text="Log In" OnClick="ButtonLogIn_Click" />
        <br />
        <br />
          </div>
      </div>

        </div>
  
    </form>
  </div>
</body>
</html>
