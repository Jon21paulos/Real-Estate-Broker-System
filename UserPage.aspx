<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="RealEstateBroker.UserPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Your Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   
</head>
<body>
 <div class="container bg-dark">
      <a href="Account.aspx" class="btn btn-light float-right">Login</a>
 </div>   
<nav class="navbar navbar-expand-sm bg-dark navbar">
  <form class="form-inline" >
    <input class="form-control mr-sm-2" type="text" placeholder="Search ur home" />
    <button class="btn btn-success" type="submit">Search</button>
  </form>
        <h3 style="color:darkgray"><b>RealEsateBroker</b></h3>
</nav>

<form id="form1" runat="server" >  
   <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Modal Heading</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
            <div class="form">
                <asp:TextBox class="form-control"  placeholder="Enter your FirstName" ID="FirstNameID" runat="server"></asp:TextBox>  
            </div>
            <div class="form">
                <asp:TextBox class="form-control"  placeholder="Enter your LastName" ID="LastNameID" runat="server"></asp:TextBox>  
            </div>
            <div class="form">
                <asp:TextBox class="form-control"  placeholder="Contact" type="number" ID="ContactID" runat="server"></asp:TextBox>  
            </div>
            <div class="form">
                <asp:TextBox class="form-control"  placeholder="Comment"  ID="CommentID" runat="server"></asp:TextBox>  
            </div>
            <div>
                <label for="Name">Price</label>
                <asp:TextBox class="form-control"  placeholder="Price" type="number" ID="PriceID" runat="server"></asp:TextBox>  
            </div>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
           <asp:Button ID="Button1" runat="server" class="btn btn-primary" OnClick="ButtonId_Click" Text="submit"/>
           <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
       
      </div>
    </div>
   </div>
        <asp:DataList ID="DataList1" runat="server" >
            <ItemTemplate>
              <div class="container border" style="margin-left:5%">
                    <br />
                     <h3><asp:Label  runat="server" Text='<%#Eval("Name") %>'></asp:Label> Real Estate</h3><br />                     
                    <div class="container">
                        <img   width="33%" src="Images/<%#Eval("Image1") %>" >
                        <img   width="33%" src="Images/<%#Eval("Image2") %>" >
                        <img   width="33%" src="Images/<%#Eval("Image3") %>" >
                        <br />
                        <video style="margin-left:100px;width:70%;height:50%" controls>
                             <source src="Images/<%#Eval("Video") %>" type="video/mp4">
                            </source>
                        </video>
                    </div>                 
                    <div class="container " style="margin-top:10px;">
                       <h3>Discription: <b> <asp:Label ID="Label1"   runat="server" Text='<%#Eval("Discription") %>'></asp:Label></b></h3>
                        <br />
                        <h3>Location: <b><asp:Label ID="Label2"  runat="server" Text='<%#Eval("City") %>'></asp:Label></b></h3>
                       <br />
                        <h3>Address:<b><asp:Label ID="Label3"  runat="server" Text='<%#Eval("Address") %>'></asp:Label></b></h3>
                       <br />
                        <h3>Price: <b><asp:Label ID="Label4"  runat="server" Text='<%#Eval("Price") %>'></asp:Label></b></h3>
                       <br />
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Apply</button>
                    </div>
              </div>               
   
            </ItemTemplate>
        </asp:DataList>

    </form>

</body>
</html>
