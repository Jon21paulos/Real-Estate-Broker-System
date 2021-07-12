<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RealEstateBroker.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>


<div class="container">
     <h2>Sign Up</h2>
    <h3 style="color:green">
        <asp:Label ID="Success" runat="server" Text=""></asp:Label>
    </h3>
     <form id="form1" runat="server">
        <div class="form-group">
            <label for="Name">First Name</label>
                <asp:TextBox class="form-control" Width="60%" placeholder="Enter your First Name" ID="FirstNameID" runat="server"></asp:TextBox>  
        </div>
         <div class="form-group">
            <label for="Name">Last Name</label>
                <asp:TextBox class="form-control" Width="60%" placeholder="Enter your Last Name" ID="LastNameID" runat="server"></asp:TextBox>  
        </div>
         <div class="form-group">
            <label for="Email">Email</label>
                <asp:TextBox class="form-control" Width="60%" placeholder="Enter your Email" ID="EmailID" runat="server"></asp:TextBox>  
        </div>

        <div class="form-group">
            <label for="Password">Password:</label>
             <asp:TextBox type="password" class="form-control" Width="60%" id="PasswordID" placeholder="Enter password" name="Password" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="Address">Address</label>
                <asp:TextBox class="form-control" Width="60%" placeholder="Enter your Address" ID="AddressID" runat="server"></asp:TextBox>  
        </div>
               

         <div class="form-group">
            <label for="Password">Phone Number:</label>
             <asp:TextBox type="number" class="form-control" Width="60%" id="ContactID" placeholder="Enter phone number" name="PhoneNumber" runat="server"></asp:TextBox>
        </div>
         <br />
        
        <asp:Button ID="ButtonId"  type="submit" class="btn btn-primary" runat="server" Text="Register" OnClick="RegisterID_Click" /></td>  

    </form>
</div>





</body>
</html>
