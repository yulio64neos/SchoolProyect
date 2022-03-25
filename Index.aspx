<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SchoolProyect.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Escuela FULANITA DE TAL :V</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">                
    <link href="CSS/navbar.css" rel="stylesheet" />
    <link href="CSS/Carril.css" rel="stylesheet" />
    <link href="CSS/Texto.css" rel="stylesheet" />
    <link href="CSS/Cards.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
            <%-- Navbar / Menú de herramientas --%>
        <nav class="navbar navbar-expand-lg bg-white shadow fixed-top">            
            <div class="container px-3">
                <a class="navbar-brand" href="#">
                    <img src="../ImagenesPues/UTP-LOGO COPIA.png" alt="UTP LOGO" width="30" height="30" class="d-inline-block align-top"/>
                    Sistema de UTPuebla
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapsed navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav m-auto mb-2 mb-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link font-monospace" href="#">Home</a>                       
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink"
                                role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Opciones
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <li><a class="dropdown-item" href="ConsultarAlumnos.aspx">Consultar Alumnos</a></li>
                                <li><a class="dropdown-item" href="InscribirAlumnos.aspx">Inscribir Alumno</a></li>
                                <li><a class="dropdown-item" href="ModificaCalif.aspx">Modificar Alumno</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="navbar-nav">
                        <asp:Button ID="btnIniciarSesion" runat="server" CssClass="Sesion" Text="Iniciar Sesión" OnClick="btnIniciarSesion_Clic"/>
                    </ul>
                </div>
            </div>
        </nav>

        <br />
        <div class="container">
            <header>                
                <section class="home">
                    <div id="carousel" class="carousel slide" data-bs-ride="carousel">
                     <div class="carousel-controls">
                          <ol class="carousel-indicators">
                            <li data-bs-target="#carousel" data-bs-slide-to="0" class="active" aria-label="Slide 1" style="background-image:url('../Carousel/Castillo.jpg')"></li>
                            <li data-bs-target="#carousel" data-bs-slide-to="1" aria-label="Slide 2" style="background-image:url('../Carousel/compu.jpg')"></li>
                            <li data-bs-target="#carousel" data-bs-slide-to="2" aria-label="Slide 3" style="background-image:url('../Carousel/Fisica.jpg')"></li>
                            <li data-bs-target="#carousel" data-bs-slide-to="3" aria-label="Slide 3" style="background-image:url('../Carousel/Galaxia.jpg')"></li>
                            <li data-bs-target="#carousel" data-bs-slide-to="4" aria-label="Slide 3" style="background-image:url('../Carousel/Quimica.jpg')"></li>
                          </ol>
                          <a class="carousel-control-prev" role="button" data-bs-target="#carousel" data-bs-slide="prev">
                              <img src="Icons/round_first_page_black_24dp.png" alt="Prev" />
                          </a>
                          <a class="carousel-control-next" role="button" data-bs-target="#carousel" data-bs-slide="next">
                              <img src="Icons/round_last_page_black_24dp.png"  alt="Next"/>
                          </a>
                     </div>                      
                      <div class="carousel-inner">
                        <div class="carousel-item active" style="background-image:url('../Carousel/Castillo.jpg');">                            
                          <div class="container">
                              <h2>Historia</h2>
                              <p>Historia Universal</p>
                          </div>
                        </div>
                        <div class="carousel-item" style="background-image:url('../Carousel/compu.jpg');">
                          <div class="container">
                              <h2>Computación</h2>
                              <p>Informática</p>
                          </div>
                        </div>
                        <div class="carousel-item" style="background-image:url('../Carousel/Fisica.jpg');">
                          <div class="container">
                              <h2>Física</h2>
                              <p>Teoría cuantica</p>
                          </div>
                        </div>
                          <div class="carousel-item" style="background-image:url('../Carousel/Galaxia.jpg');">
                          <div class="container">
                              <h2>Galaxia</h2>
                              <p>El Cosmos</p>
                          </div>
                        </div>
                          <div class="carousel-item" style="background-image:url('../Carousel/Quimica.jpg');">
                          <div class="container">
                              <h2>Quimica</h2>
                              <p>Teoría Molecular</p>
                          </div>
                        </div>
                      </div>                      
                    </div>
                </section>
            </header>
            <br />            
            <div>
                <div class="blog-post">
                    <div class="blog-post_img">
                        <img src="ImagenesPues/iconsPsp.jpg" alt=""/>
                    </div>
                    <div class="blog-post_info"> 
                        <div class="blog_post_date">
                            <span>Viernes</span>
                            <span>Abril 2 2021</span>
                        </div>
                        <h1 class="blog-post_title">Disfruta del contenido</h1>
                        <p class="blog-post_text">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean interdum enim mauris, ac posuere nunc iaculis eu. Maecenas bibendum semper ipsum, et tristique justo finibus ut. Pellentesque tincidunt elit vitae lorem efficitur sagittis id vitae eros. Nunc placerat nisl nulla, nec rutrum ante ullamcorper a. Duis eleifend ut lorem in congue. Aenean placerat felis vel lectus tempus tempus. Fusce tincidunt eros id est gravida laoreet vel non purus. Nam tincidunt laoreet aliquam. Nam eu lorem ultrices lectus sodales fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; 
                        </p>
                        <a href="#" class="blog-post_cta">Read More</a>
                    </div>
                </div>                              
            </div>
            <br />            
            <div class="container mb-5 mt-5">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="card text-center">
                            <div class="card-header bg-primary">
                                Featured
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Prueba si la conexión SQL funciona</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <asp:Button ID="btnPrueba" runat="server" Text="Prueba de Conexión" OnClick="btnPrueba_Click" CssClass="BtnUno"/>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-4">
                        <div class="card text-center">
                            <div class="card-header bg-primary">
                                Featured
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Detalles</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <asp:Button ID="Button2" runat="server" Text="Leer Más" CssClass="BtnUno" />
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-sm-4">
                        <div class="card text-center">
                            <div class="card-header bg-primary">
                                Featured
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">Conoce Más</h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <asp:Button ID="Button3" runat="server" Text="Leer Más" CssClass="BtnUno" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>            
            <br />
            <footer class="main-footer">
                <hr />
                <div class="row">
                    <div class="col-sm">
                        <p class="text-center">&copy; 2021 SM Infohub | All right reserved | Terms of service | Privacy</p>
                    </div>
                </div>
            </footer>
        </div>
       </div>
    </form>    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
</body>
</html>
