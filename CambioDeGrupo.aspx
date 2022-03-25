<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CambioDeGrupo.aspx.cs" Inherits="SchoolProyect.CambioDeGrupo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">    
    <link href="CSS/SideBarAll.css" rel="stylesheet" />   
    <link href="CSS/ModificaAlum.css" rel="stylesheet" />
    <link href="CSS/ModificaAlumBoton.css" rel="stylesheet" />    
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
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="col">
                        <div class="form-outline mb-4">
                            <h2 class="fw-bold py-5">Elige la matrícula que desees visualizar del alumno</h2>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-outline mb-4">
                            <label for="text" class="form-label">Matrícula del alumno</label>
                            <br />
                            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                            <br />
                            <asp:Button ID="btnBuscar" runat="server" Text="Buscar Alumno" CssClass="Cali" OnClick="btnBuscarMatri" />
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="d-flex justify-content-center">
                            <asp:GridView ID="GridView1" runat="server"
                                AutoGenerateColumns="false"
                                CssClass="table-responsive table-warning table-hover alert-primary" Width="1080px">
                                <RowStyle HorizontalAlign="Center" />
                                <Columns>
                                    <asp:BoundField DataField="Matricula" HeaderText="  MATRICULA  " ItemStyle-BackColor="White" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="Id_grupo" HeaderText="  GRUPO  " ItemStyle-BackColor="White" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center" />
                                    <asp:BoundField DataField="Nombre" HeaderText="  NOMBRE  " ItemStyle-BackColor="White" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center" />  
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
            <section>
                <div class="row">
                    <div class="col-sm-6">
                         <div class="col">
                            <div class="form-outline mb-4">
                                <h2 class="fw-bold py-5">Elige el grupo que desees cambiar del alumno</h2>
                            </div>
                        </div>
                         <div class="col">
                            <div class="form-outline mb-4">
                                <label for="text" class="form-label">Grupo del Alumno</label>
                                <br />
                                <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                                <br />
                                <asp:Button ID="Button2" runat="server" Text="Cambio de Grupo" CssClass="Cali" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>
     <script src="JavaScript/SideButton.js"></script>    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
</body>
</html>
