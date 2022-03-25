<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InscribirAlumnos.aspx.cs" Inherits="SchoolProyect.InscribirAlumnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Escuela FULANITA DE TAL :V</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">    
    <link href="CSS/Estilos.css" rel="stylesheet" />
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
            <h1>INSCRIBIR ALUMNOS</h1>
            <br />
            <hr />
            <div class="card-body">
                <h1 class="card-title text-center">REGISTRO</h1>
                <div class="card-text">
                    <form>                      
                      <div class="row mb-4">
                        <div class="col">
                          <div class="form-outline">
                              <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                              </asp:DropDownList>
                            <label class="form-label" for="form3Example1">Grupo del Alumno</label>
                          </div>
                        </div>
                        <div class="col">
                          <div class="form-outline">
                            <%--<input type="text" id="form3Example2" class="form-control" />--%>                            
                              <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                            <label class="form-label" for="form3Example2">Nombre del Alumno</label>
                          </div>
                        </div>
                        <div class="col">                            
                              <div class="form-outline mb-4">
                                <%--<input type="text" id="form3Example3" class="form-control" />--%>
                                  <asp:TextBox ID="txtApellidoP" runat="server" CssClass="form-control"></asp:TextBox>
                                <label class="form-label" for="form3Example3">Apellido Paterno del Alumno</label>
                              </div>                      
                        </div>
                        <div class="col">                            
                              <div class="form-outline mb-4">
                                <%--<input type="text" id="form3Example4" class="form-control" />--%>
                                  <asp:TextBox ID="txtApellidoM" runat="server" CssClass="form-control"></asp:TextBox>
                                <label class="form-label" for="form3Example4">Apellido Materno del Alumno</label>
                              </div>
                        </div>
                      </div>                      

                      <!-- Submit button -->
                      <%--<button type="submit" class="btn btn-primary btn-block mb-4">Inscribir</button>--%>
                      <div class="d-flex justify-content-center">
                          <asp:Button ID="btnRegistrar" runat="server" Text="Inscribir" CssClass=" btn btn-primary mb-5" OnClick="btnRegistrar_Click" OnClientClick="mayus()"/>
                      </div>
                      
                      <!-- Register buttons -->
                      <div class="container mt-5 mb-5 d-flex justify-content-center">
                        <ul class="social-list">
                            <li>
                                <div class="maincard p-3">
                                    <div class="thecard">
                                        <div class="thefront text-center py-4 facebook">
                                            <div class="social-icon"> <i class="fa fa-facebook fa-2x"></i> </div>
                                        </div>
                                        <div class="theback py-3 px-3 text-center facebook">
                                            <div class="social-text mt-1"> <small class="font-weight-bold">Facebook</small> </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="maincard p-3">
                                    <div class="thecard">
                                        <div class="thefront text-center py-4 instagram">
                                            <div class="social-icon"> <i class="fa fa-instagram fa-2x"></i> </div>
                                        </div>
                                        <div class="theback py-3 px-3 text-center instagram">
                                            <div class="social-text mt-1"> <small class="font-weight-bold">Instagram</small> </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="maincard p-3">
                                    <div class="thecard">
                                        <div class="thefront text-center py-4 youtube">
                                            <div class="social-icon"> <i class="fa fa-youtube fa-2x"></i> </div>
                                        </div>
                                        <div class="theback py-3 px-3 text-center youtube">
                                            <div class="social-text mt-1"> <small class="font-weight-bold">Youtube</small> </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="maincard p-3">
                                    <div class="thecard">
                                        <div class="thefront text-center py-4 whatsapp">
                                            <div class="social-icon"> <i class="fa fa-whatsapp fa-2x"></i> </div>
                                        </div>
                                        <div class="theback py-3 px-3 text-center whatsapp">
                                            <div class="social-text mt-1"> <small class="font-weight-bold">Whatsapp</small> </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="maincard p-3">
                                    <div class="thecard">
                                        <div class="thefront text-center py-4 pinterest">
                                            <div class="social-icon"> <i class="fa fa-pinterest fa-2x"></i> </div>
                                        </div>
                                        <div class="theback py-3 px-3 text-center pinterest">
                                            <div class="social-text mt-1"> <small class="font-weight-bold">Pinterest</small> </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </form>
    <script src="JavaScript/SideButton.js"></script> 
    <script src="JavaScript/Cambios.js"></script>
    <script src="JavaScript/Operaciones.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
</body>
</html>
