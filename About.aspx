<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SchoolProyect.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">    
    <link href="CSS/SideBarAll.css" rel="stylesheet" />    
</head>
<body>
    <form id="form1" runat="server">
       <nav class="side-navbar navbar navbar-expand d-flex flex-column align-items-start active-nav flex-wrap" id="sidebar">
           <a href="#" class="navbar-brand text-light mt-5">
               <div class="display-5 p-2">
                   Sistema 1.2
               </div>
           </a>
           <ul class="navbar-nav d-flex flex-column mt-5 w-100">
               <li class="nav-item w-100">
                   <a href="Index.aspx" class="nav-link text-light p-4">
                       Home
                   </a>
               </li>
               <li class="nav-item w-100">
                   <a href="Index.aspx" class="nav-link text-light p-4">
                       Consultar Alumnos
                   </a>
               </li>
               <li class="nav-item w-100">
                   <a href="Index.aspx" class="nav-link text-light p-4">
                       Inscribir Alumnos
                   </a>
               </li>
               <li class="nav-item dropdown w-100 ">
                   <a class=" nav-link dropdown-toggle text-light p-4" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">Modificar Alumno
                   </a>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <li><a class="dropdown-item text-light p-2 p-lg-2" href="#">Calificación</a></li>
                    <li><a class="dropdown-item text-light p-2 p-lg-2" href="#">Grupo</a></li>                    
                  </ul>
               </li>
               <li class="nav-item w-100">
                   <a href="#" class="nav-link text-light p-4">
                       About
                   </a>
               </li>
           </ul>
       </nav>      
        <section class="p-4 my-container">
            <div class="container">
                <button class="btn my-4" id="menu-btn">
                    Menú
                </button>
                <h1>About</h1>
                <p class="text-dark">
                    Lorem ipsum dolor sit amet consectetur adipiscing elit egestas, vel torquent convallis cras iaculis justo. Justo inceptos natoque duis diam praesent suspendisse mi pharetra turpis eu, malesuada senectus dictum cum ultricies habitasse faucibus nisi curae hac vehicula, tincidunt sollicitudin est arcu tellus sem neque quis potenti. Justo pharetra ridiculus tortor ornare inceptos cum curabitur diam tincidunt semper lectus tellus blandit erat sodales, imperdiet class faucibus sem aliquet natoque nostra risus mus aenean porttitor lacinia suscipit eget.
                    Morbi malesuada velit lectus suspendisse magna convallis fermentum venenatis, dapibus sapien aliquet euismod aenean suscipit himenaeos, egestas nisl porttitor senectus inceptos quam cubilia. Venenatis curabitur ultrices aliquam metus sollicitudin nulla morbi cubilia gravida eleifend penatibus nullam, torquent vel sapien fusce ridiculus diam commodo orci inceptos lacus. Tincidunt accumsan netus ultrices purus curae ut parturient himenaeos, dapibus rhoncus habitasse justo lobortis donec pretium, hac nisi duis placerat urna sodales nisl.
                    Dis molestie ut metus augue lectus tristique ultricies facilisi egestas nibh, neque quisque malesuada habitant cubilia tincidunt rutrum erat tempus id, nisi facilisis eu semper mattis volutpat iaculis lacinia auctor. Eros integer id ultrices condimentum interdum arcu tellus leo platea per, felis dignissim sociis metus himenaeos nisl vel senectus commodo, nulla augue sociosqu lectus neque nisi risus justo ac. Tempus magnis sociosqu blandit scelerisque mattis torquent tincidunt ridiculus et malesuada pharetra aptent, ad rhoncus sodales morbi lectus aenean feugiat faucibus hendrerit himenaeos.
                    Rutrum accumsan vulputate per proin mattis eros porta sodales torquent odio magnis, dis nullam ante fusce hac molestie lacus vehicula leo orci commodo, mi netus etiam fringilla sollicitudin ornare at aliquam vivamus placerat. Ad suspendisse luctus et fringilla penatibus lacinia, tristique mauris pretium potenti cursus rutrum at, odio felis ornare nostra conubia. Proin etiam mollis condimentum luctus urna, elementum purus fermentum donec integer, vulputate inceptos tincidunt ligula.
                    Ligula aliquam nisi tempor molestie turpis dictum sociosqu fames semper velit, venenatis vehicula lectus viverra ultricies laoreet condimentum potenti nostra sagittis, orci hendrerit lacinia quam pharetra integer penatibus ullamcorper mus. Imperdiet erat fames vel rhoncus egestas arcu sociis mattis neque, senectus magnis molestie orci integer enim nullam mollis, nisl parturient velit taciti quam commodo auctor sem. Etiam conubia sapien blandit lacus nam faucibus hac lectus, vulputate pulvinar placerat sed ligula fusce tempus, orci diam convallis nulla egestas augue tellus.
                </p>
                <p class="text-dark">
                    Lorem ipsum dolor sit amet consectetur adipiscing elit egestas, vel torquent convallis cras iaculis justo. Justo inceptos natoque duis diam praesent suspendisse mi pharetra turpis eu, malesuada senectus dictum cum ultricies habitasse faucibus nisi curae hac vehicula, tincidunt sollicitudin est arcu tellus sem neque quis potenti. Justo pharetra ridiculus tortor ornare inceptos cum curabitur diam tincidunt semper lectus tellus blandit erat sodales, imperdiet class faucibus sem aliquet natoque nostra risus mus aenean porttitor lacinia suscipit eget.
                    Morbi malesuada velit lectus suspendisse magna convallis fermentum venenatis, dapibus sapien aliquet euismod aenean suscipit himenaeos, egestas nisl porttitor senectus inceptos quam cubilia. Venenatis curabitur ultrices aliquam metus sollicitudin nulla morbi cubilia gravida eleifend penatibus nullam, torquent vel sapien fusce ridiculus diam commodo orci inceptos lacus. Tincidunt accumsan netus ultrices purus curae ut parturient himenaeos, dapibus rhoncus habitasse justo lobortis donec pretium, hac nisi duis placerat urna sodales nisl.
                    Dis molestie ut metus augue lectus tristique ultricies facilisi egestas nibh, neque quisque malesuada habitant cubilia tincidunt rutrum erat tempus id, nisi facilisis eu semper mattis volutpat iaculis lacinia auctor. Eros integer id ultrices condimentum interdum arcu tellus leo platea per, felis dignissim sociis metus himenaeos nisl vel senectus commodo, nulla augue sociosqu lectus neque nisi risus justo ac. Tempus magnis sociosqu blandit scelerisque mattis torquent tincidunt ridiculus et malesuada pharetra aptent, ad rhoncus sodales morbi lectus aenean feugiat faucibus hendrerit himenaeos.
                    Rutrum accumsan vulputate per proin mattis eros porta sodales torquent odio magnis, dis nullam ante fusce hac molestie lacus vehicula leo orci commodo, mi netus etiam fringilla sollicitudin ornare at aliquam vivamus placerat. Ad suspendisse luctus et fringilla penatibus lacinia, tristique mauris pretium potenti cursus rutrum at, odio felis ornare nostra conubia. Proin etiam mollis condimentum luctus urna, elementum purus fermentum donec integer, vulputate inceptos tincidunt ligula.
                    Ligula aliquam nisi tempor molestie turpis dictum sociosqu fames semper velit, venenatis vehicula lectus viverra ultricies laoreet condimentum potenti nostra sagittis, orci hendrerit lacinia quam pharetra integer penatibus ullamcorper mus. Imperdiet erat fames vel rhoncus egestas arcu sociis mattis neque, senectus magnis molestie orci integer enim nullam mollis, nisl parturient velit taciti quam commodo auctor sem. Etiam conubia sapien blandit lacus nam faucibus hac lectus, vulputate pulvinar placerat sed ligula fusce tempus, orci diam convallis nulla egestas augue tellus.
                </p>
            </div>               
        </section>        
    </form>
    <script src="JavaScript/SideButton.js"></script>    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
</body>
</html>
