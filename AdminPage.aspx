<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="RealEstateBroker.AdminPage1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>

<body>

  <h4>Wellcome Admin</h4>
  <br />
  <ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#home">Register Realestates</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">who wanted home</a>
    </li>
  </ul>

  <div class="tab-content">
    <div id="home" class="container tab-pane active"><br />
      
      <form id="form1" runat="server">  
        <div class="form-group">
            <label for="Name">First Name</label>
                <asp:TextBox class="form-control" Width="60%" placeholder="Enter Manager First Name" ID="ManagerFirstNameID" runat="server"></asp:TextBox>  
        </div>
         <div class="form-group">
            <label for="Name">Last Name</label>
                <asp:TextBox class="form-control" Width="60%" placeholder="Enter Manager Last Name" ID="ManagerLastNameID" runat="server"></asp:TextBox>  
        </div>
         <div class="form-group">
            <label for="Email">Email</label>
                <asp:TextBox class="form-control" Width="60%" placeholder="Enter Manager Email" ID="ManagerEmailID" runat="server"></asp:TextBox>  
        </div>

        <div class="form-group">
            <label for="Password">Password:</label>
             <asp:TextBox type="password" class="form-control" Width="60%" id="RealEsatePasswordID" placeholder="Enter password" name="Password" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="Address">RealEsateName</label>
                <asp:TextBox class="form-control" Width="60%" placeholder="Enter RealEstateName" ID="RealEsateNameID" runat="server"></asp:TextBox>  
        </div>
               
         <h3><asp:Label style="color:green" runat="server" Text="" ID="Success"></asp:Label>
         </h3>
          <asp:Button ID="ButtonId"  type="submit" class="btn btn-primary" runat="server" Text="Register" OnClick="ButtonId_Click" />  
        
    </form>
    </div>

    
    <div id="menu1" class="container tab-pane fade">
          <asp:DataList ID="DataList1" runat="server" >
            <ItemTemplate>
               <table cellpadding="2" cellspacing="0" border="1" style="width: 300px; height: 100px;   
                border: dashed 2px #04AFEF; background-color: #FFFFFF">  
                    <tr>  
                        <td>  
                            <b> </b><span ><%# Eval("fname") %></span> <span ><%# Eval("lname") %></span><br />  
                            <b> </b><span ><%# Eval("contact") %></span><br />  
                            <b></b><span  ><%# Eval("comment") %></span><br />  
                            <b></b><span  ><%# Eval("price")%></span><br />  
                        </td>  
                    </tr>  
                </table>
            </ItemTemplate>
        </asp:DataList>
     </div> 



</body>
</html>
