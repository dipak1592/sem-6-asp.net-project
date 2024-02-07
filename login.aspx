<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style>
section
{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
  display: grid;
  height: 100%;
  width: 100%;
  place-items: center;
  //background: #f2f2f2;    
  
}

::selection{

  background: #FF3333;
  color: #fff;
}
.wrapper{
  width: 480px;
  background: #fff;
  border-radius: 15px;
  box-shadow: 5px 20px 25px 5px rgba(0,0,0,0.1);
}
.wrapper .title{
  font-size: 35px;
  font-weight: 600;
  text-align: center;
  line-height: 100px;
  color: #fff;
  user-select: none;
  border-radius: 15px 15px 0 0;
  background: linear-gradient(-135deg, #c850c0, #FF3333);
}
.wrapper form{
  padding: 10px 30px 50px 30px;
}
.wrapper form .field{
  height: 50px;
  width: 100%;
  margin-top: 20px;
  position: relative;
}
.wrapper form .field input{
  height: 100%;
  width: 100%;
  outline: none;
  font-size: 17px;
  padding-left: 20px;
  border: 1px solid lightgrey;
  border-radius: 25px;
  transition: all 0.3s ease;
}
.wrapper form .field input:focus,
form .field input:valid{
  border-color: #FF3333;
}
.wrapper form .field label{
  position: absolute;
  top: 50%;
  left: 20px;
  color: #999999;
  font-weight: 400;
  font-size: 17px;
  pointer-events: none;
  transform: translateY(-50%);
  transition: all 0.3s ease;
}
form .field input:focus ~ label,
form .field input:valid ~ label{
  top: 0%;
  font-size: 16px;
  color: #FF3333;
  background: #fff;
  transform: translateY(-50%);
}
form .content{
  display: flex;
  width: 100%;
  height: 50px;
  color:black;
  font-size: 16px;
  align-items: center;
  justify-content: space-around;
}
form .content .checkbox{
  display: flex;
  align-items: center;
  justify-content: center;
}
form .content input{
  width: 15px;
  height: 15px;
  background: red;
}
form .content label{
  color: #262626;
  user-select: none;
  padding-left: 5px;
}
form .content .pass-link{
  color: "";
}
form .field input[type="submit"]{
  color: #fff;
  border: none;
  padding-left: 0;
  margin-top: -10px;
  font-size: 20px;
  font-weight: 500;
  cursor: pointer;
  background: linear-gradient(-135deg, #c850c0, #FF3333);
  transition: all 0.3s ease;
}
form .field input[type="submit"]:active{
  transform: scale(0.95);
}
form .signup-link{
  color: #262626;
  margin-top: 20px;
  text-align: center;
}
form .pass-link a,
form .signup-link a{
  color: #FF3333;
  text-decoration: none;
}
form .pass-link a:hover,
form .signup-link a:hover{
  text-decoration: underline;
}
     </style>
    <section>
    <div id="main-wrapper" class="wrapper">
         <div class="title">
           <h2> Login-Form</h2>
         </div>
         <form id="form1" runat="server">
            <div class="field">
               <input type="text" required id="txtemail" runat="server" />
               <label>Email Address</label>
            </div>
            <div class="field">
               <input type="password" required id="txtpass" runat="server" />
               <label>Password</label>
            </div>
            <div class="content">
               <div class="checkbox">
                  <input type="checkbox" id="disppass" onchange="disp()" />
                   
                  <label for="disppass">Show Password</label>
               </div>
               <div class="pass-link">
                  <a href="#">Forgot password?</a>
               </div>
            </div>
              <div class="field">
                <asp:Button ID="submit" runat="server" name="submit" Text="Login" OnClick="btnsub_Click" />
            </div>
            <div class="signup-link">
               Not a member? <a href="register.aspx">Register</a>
            </div>
         </form>
      </div>
       </section>
       <script>
           function disp() {
               pass = document.getElementById("txtpass");
               if (pass.type == "password")
                   pass.type = "text";
               else
                   pass.type = "password";
           }
       </script>

        
   </asp:Content>

                                