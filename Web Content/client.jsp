<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400;700&display=swap" rel="stylesheet"> 
    <link rel="stylesheet" href="style.css" />
  <style> html {
  font-family: "Roboto", sans-serif;
}
body {
background-image:url("image/35.jpeg");
  background-attachment: fixed;
  background-size: cover;
  display: grid;
  align-items: center;
  justify-content: center;
  height: 100vh;
  backdrop-filter: blur(3px);
  margin: 0 0;
}

.container {
  max-width: 25rem;
  max-height: 20rem;
  box-shadow: 0 0 1rem 0 rgba(0, 0, 0, 0.2);
  border-radius: 5px;
  position: relative;
  background: inherit;
  overflow: hidden;
  z-index: 100;
}

.overlay {
  width: 25rem;
  height: 30rem;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(0, 0, 0, 0.3); 
  z-index: 1000;
}

.container:before {
  content: "";
  position: absolute;
  background: inherit;
  z-index: -1;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  margin: -20px;
}

.login {
  padding: orem;
  display: flex;
  flex-direction: column;
}

.login-form {
  display: flex;
  flex-direction: column;
}
.login > h1 {
  color: white;
  text-transform: uppercase;
  text-align: center;
  letter-spacing: 0.2em;
  font-size: 2.8rem;
}
.login-form > label {
  margin-top: 1.5rem;
  font-size: 1.5rem;
  color: white;
  font-weight: 600;
}

.login-form > input {
  margin-top: 0.5rem;
  padding-left: 0.5rem;
  background-color: rgba(56, 56, 56, 0.9);
  border: none;
  border-radius: 2px;
  min-height: 2.5rem;
  color: white;
  font-size: 1.2em;

  margin-bottom: 1.5rem;
}
.login-form > input::placeholder {
  color: rgba(255, 255, 255, 0.4);
}

.login-form > input:focus {
  background-color: rgba(112, 112, 112, 0.9);
  outline: white;
}

.login-form > input:last-of-type {
  margin-bottom: 3rem;
}

a,
a:active,
a:visited {
  margin-top: 2rem;
  text-align: center;
  text-decoration: none;
  color: rgb(245, 245, 245);
  font-size: 1.2rem;
  background-color: rgba(0, 0, 0, 0.5);
}

.button {
  background-color: rgba(0, 112, 50, 0.95);
  padding: 0 0;
  border: none;
  border-radius: 4px;
  font-size: 1.5rem;
  font-weight: 400;
  padding: 0.5rem;
  color: white;
  text-transform: uppercase;
  cursor: pointer;
}
    </style>
  </head>
  <body>
  <center>
    <div class="container">
      <div class="overlay">
        <div class="login">
          <h1>Welcome</h1>
          <form action="clientlog" method="post">
            <input type="email" id="email" name="email" placeholder="Email" style="padding: 9px 19px;
    border-bottom-left-radius: 17px;"><br></br>

          <input type="password" id="password" name="pass" placeholder="Password" style="padding: 9px 19px;
    border-bottom-left-radius: 17px;"><br></br>
<input type="submit" value="submit" style="padding: 9px 19px;
    border-bottom-left-radius: 17px;"><br><br>
    <a href="clientregister.jsp">New user Signup here!!</a>
            
          </form>

      
        </div>
      </div>
    </div>
       </center>
  </body>
</html>
