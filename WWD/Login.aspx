<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WWD.Login" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <title>WWD Project</title>
    <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"/>
    <link href="assets/css/login.css" rel="stylesheet" />
</head>
<body>

    
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:wwdtestConnectionString %>" DeleteCommand="DELETE FROM [Account] WHERE [Acc_id] = @Acc_id" InsertCommand="INSERT INTO [Account] ([Username], [Password], [Firstname], [LastNAme], [Phone], [Mobile], [Mail],  [Account_type_id], [Status_id]) VALUES (@Username, @Password, @Firstname, @LastNAme, @Phone, @Mobile, @Mail, @Account_type_id, @Status_id)" SelectCommand="SELECT * FROM [Account] where Username=@username and Password=@password" UpdateCommand="UPDATE [Account] SET [Username] = @Username, [Password] = @Password, [Firstname] = @Firstname, [LastNAme] = @LastNAme, [Phone] = @Phone, [Mobile] = @Mobile, [Mail] = @Mail, [InsertDate] = @InsertDate, [Account_type_id] = @Account_type_id, [Status_id] = @Status_id WHERE [Acc_id] = @Acc_id">
          <DeleteParameters>
              <asp:Parameter Name="Acc_id" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:ControlParameter ControlID="Username" Name="Username" PropertyName="Text" />
              <asp:ControlParameter ControlID="Password" Name="Password" PropertyName="Text" />
              <asp:ControlParameter ControlID="Firstname" Name="Firstname" PropertyName="Text" />
              <asp:ControlParameter ControlID="Lastname" Name="LastNAme" PropertyName="Text" />
              <asp:ControlParameter ControlID="Phone" Name="Phone" PropertyName="Text" />
              <asp:ControlParameter ControlID="Mobile" Name="Mobile" PropertyName="Text" />
              <asp:ControlParameter ControlID="Mail" Name="Mail" PropertyName="Text" />
              <asp:Parameter Name="Account_type_id" DefaultValue="1" />
              <asp:Parameter Name="Status_id" DefaultValue="1" />
          </InsertParameters>
          <SelectParameters>
              <asp:ControlParameter ControlID="username_login" Name="username" PropertyName="Text" />
              <asp:ControlParameter ControlID="Password_login" Name="password" PropertyName="Text" />
          </SelectParameters>
          <UpdateParameters>
              <asp:Parameter Name="Username" Type="String" />
              <asp:Parameter Name="Password" Type="String" />
              <asp:Parameter Name="Firstname" Type="String" />
              <asp:Parameter Name="LastNAme" Type="String" />
              <asp:Parameter Name="Phone" Type="String" />
              <asp:Parameter Name="Mobile" Type="String" />
              <asp:Parameter Name="Mail" Type="String" />
              <asp:Parameter DbType="Date" Name="InsertDate" />
              <asp:Parameter Name="Account_type_id" Type="Int32" />
              <asp:Parameter Name="Status_id" Type="Int32" />
              <asp:Parameter Name="Acc_id" Type="Int32" />
          </UpdateParameters>
      </asp:SqlDataSource>
    <form id="form1" runat="server">

  <div class="form">
      
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Sign In</a></li>
      </ul>
      <div class="tab-content">
        <div id="signup">   
          <h1>Sign Up</h1>
            
            <div class="top-row">
            <div class="field-wrap">
                <label>
                Username<span class="req">*</span>
                </label>
                  <asp:TextBox ID="Username" runat="server"></asp:TextBox>
            </div>
        
            <div class="field-wrap">
                <label>
                Password<span class="req">*</span>
                </label>
                <asp:TextBox ID="Password" runat="server"></asp:TextBox>
            </div>
            </div>
            <div class="top-row">
            <div class="field-wrap">
                <label>
                Firstname<span class="req">*</span>
                </label>
                <asp:TextBox ID="Firstname" runat="server"></asp:TextBox>
            </div>
        
            <div class="field-wrap">
                <label>
                Lastname<span class="req">*</span>
                </label>
                <asp:TextBox ID="Lastname" runat="server"></asp:TextBox>
            </div>
            </div>
            <div class="top-row">
            <div class="field-wrap">
                <label>
                Phone<span class="req">*</span>
                </label>
                <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
            </div>
        
            <div class="field-wrap">
                <label>
                Mobile<span class="req">*</span>
                </label>
                <asp:TextBox ID="Mobile" runat="server"></asp:TextBox>
            </div>
            </div>
            <div class="field-wrap">
            <label>
                Email Address<span class="req">*</span>
            </label>
            <asp:TextBox ID="Mail" runat="server"></asp:TextBox>
            </div>
        <asp:Button runat="server" CssClass="button button-block" Text="SignUp" OnClick="Signup"/>

        </div>

        
        <div id="login">   
          <h1>Welcome To My website</h1>
          
              
        <div class="field-wrap">
            <label>
            Username<span class="req">*</span>
        </label>
              <asp:TextBox ID="username_login" runat="server"></asp:TextBox>
        </div>
        <div class="field-wrap">
            <label>
                Password<span class="req">*</span>
            </label>
           <asp:TextBox ID="Password_login" runat="server"></asp:TextBox>
        </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
              
        <asp:Button runat="server" CssClass="button button-block" Text="Login" OnClick="login"/>
      
        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
        </form>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="assets/js/login.js"></script>
</body>
</html>
