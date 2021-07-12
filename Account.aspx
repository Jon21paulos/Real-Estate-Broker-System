<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="RealEstateBroker.Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css"></style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    
    
<div class="container bg-dark">
  <h2 class="text-light">Sign In</h2>        
    <form id="form1" runat="server">
        <div class="form-group">
            <label for="Name" class="text-light">User Name</label>
                <asp:TextBox type="text" class="form-control "  placeholder="Enter Email or Contact" ID="UserNameID" runat="server"></asp:TextBox>  
        </div>
        <div class="form-group">
            <label for="Password" class="text-light">Password:</label>
             <asp:TextBox type="password" class="form-control" id="PasswordID" placeholder="Enter password" name="Password" runat="server"></asp:TextBox>
        </div>
       <asp:Button ID="ButtonId"  type="submit" class="btn btn-primary" runat="server" Text="Login" OnClick="ButtonId_Click"  />  
        <asp:Label style="color:red" ID="Label" runat="server" Text=""></asp:Label>
    </form>
</div>



</body>
</html>
