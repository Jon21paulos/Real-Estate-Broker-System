<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RealEstateAdminPage.aspx.cs" Inherits="RealEstateBroker.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
   

<div class="container mt-3">
  <h4><asp:Label style="color:red" ID="Name" runat="server" Text=""></asp:Label> RealEstate</h4>
  <br>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#home">post</a>
    </li>
    
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="container tab-pane active"><br>
      <h3>Post your Home</h3>
        <form id="form1" runat="server">  
            <div class="form-group">
                <label for="Name">Discription</label>
                <asp:TextBox class="form-control"  placeholder="more about your home" ID="DiscriptionID" runat="server"></asp:TextBox>  
            </div>
            <div class="form-group">
                <label for="Name">City</label>
                <asp:TextBox class="form-control"  placeholder="City" ID="CityID" runat="server"></asp:TextBox>  
            </div>
            <div class="form-group">
                <label for="Name">Address</label>
                <asp:TextBox class="form-control"  placeholder="Home address" ID="AddressID" runat="server"></asp:TextBox>  
            </div>
            <div class="form-group">
                <label for="Name">Price</label>
                <asp:TextBox class="form-control"  placeholder="Price" type="number" ID="PriceID" runat="server"></asp:TextBox>  
            </div>
             <div>  
                <p>Browse to Upload Image 1</p>  
                <asp:FileUpload ID="FileUpload1" runat="server"/>  
             </div>  
             <div>  
                <p>Browse to Upload Image 2</p>  
                <asp:FileUpload ID="FileUpload2" runat="server"/>  
             </div>  
            <div>  
                <p>Browse to Upload Image 3</p>  
                <asp:FileUpload ID="FileUpload3" runat="server"/>  
             </div>  
            <div>  
                <p>Browse to Upload Video 4</p>  
                <asp:FileUpload ID="FileUpload4" runat="server"/>  
             </div>  

            <div>     
                 <asp:Button ID="UploadID" runat="server" type="submit" class="btn btn-primary" Text="Post" OnClick="UploadID_Click"   />  
            </div>
               
        </form>  
                <p>  
                     <asp:Label runat="server" ID="FileUploadID"></asp:Label>  
                </p>  
    </div>

    </div>




  </div>


</body>
</html>
