<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarAlumnos.aspx.cs" Inherits="SchoolProyect.ConsultarAlumnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Escuela FULANITA DE TAL :V</title>
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
                   <a href="ConsultarAlumnos.aspx" class="nav-link text-light p-4">
                       Consultar Alumnos
                   </a>
               </li>
               <li class="nav-item w-100">
                   <a href="InscribirAlumnos.aspx" class="nav-link text-light p-4">
                       Inscribir Alumnos
                   </a>
               </li>
               <li class="nav-item dropdown w-100 ">
                   <a class=" nav-link dropdown-toggle text-light p-4" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">Modificar Alumno
                   </a>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <li><a class="dropdown-item text-light p-2 p-lg-2" href="ModificaCalif.aspx">Calificación</a></li>
                    <li><a class="dropdown-item text-light p-2 p-lg-2" href="CambioDeGrupo.aspx">Grupo</a></li>                    
                  </ul>
               </li>
               <li class="nav-item w-100">
                   <a href="ListarGruposAlums.aspx" class="nav-link text-light p-4">
                       Lista de Alumnos
                   </a>
               </li>
               <li class="nav-item w-100">
                   <a href="#" class="nav-link text-light p-4">
                       About
                   </a>
               </li>
           </ul>
       </nav>    
        <br />
        <header class="">

        </header>
        <br />
        <hr />
        <div class="container">
            <h1>CONSULTAR ALUMNOS</h1>
            <br />
            <hr />
            <div class="d-flex justify-content-center">
                <asp:GridView ID="GridView1" runat="server" 
                    AutoGenerateColumns="false" 
                    CssClass="table-responsive table-warning table-hover alert-primary">          
                    <RowStyle HorizontalAlign="Center" />
                    <Columns>
                        <asp:BoundField DataField="Grado" HeaderText="GRADO" ItemStyle-BackColor="White" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center"/>
                        <asp:BoundField DataField="NOMBRE DEL GRUPO" HeaderText="GRUPO" ItemStyle-BackColor="White" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center"/>
                        <asp:BoundField DataField="Nombre" HeaderText="NOMBRE" ItemStyle-BackColor="White" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center"/>
                        <asp:BoundField DataField="Apellido Paterno" HeaderText="APELLIDO PATERNO" ItemStyle-BackColor="White" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center"/>
                        <asp:BoundField DataField="Apellido Materno" HeaderText="APELLIDO MATERNO" ItemStyle-BackColor="White" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center"/>
                        <asp:BoundField DataField="Promedio" DataFormatString="{0:0.0}" HeaderText="CALIFICACIÓN" ItemStyle-BackColor="White" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center"/>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
    <script src="JavaScript/SideButton.js"></script> 
    <script src="JavaScript/Operaciones.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
</body>
</html>
