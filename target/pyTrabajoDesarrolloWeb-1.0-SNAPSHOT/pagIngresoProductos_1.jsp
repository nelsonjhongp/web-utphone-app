<%-- 
    Document   : pagIngresoProductos
    Created on : 7 oct. 2023, 11:36:43
    Author     : César
--%>

<%@page import="DAO.DAOproducto, modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">

<head>
  <title>UTPhone | Producto</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta charset="utf-8" />
  <meta property="twitter:card" content="summary_large_image" />
  <link href="CSS/dahboard3.css" rel="stylesheet" />
  <link href="CSS/frame40251.css" rel="stylesheet" />
  <link href="CSS/dahboard1.css" rel="stylesheet" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
    data-tag="font" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap"
    data-tag="font" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&amp;display=swap"
    data-tag="font" />
  <link rel="stylesheet" href="CSS/style_1.css" />
  <link rel="icon" href="imgPag/ico1.png" />
</head>

<body>
  <div class="container">
    <div class="row">
      <div class="menu">
        <div class="cont-logo">
          <a class="logo" href="index_1.jsp">
            <span class="iLogo" style="font-size: 20px;">UTPhone</span>
          </a>
        </div>
        <div class="dahboard-menuitem">
          <div class="dahboard-menutop">
            <a class="dahboard-menu2" href="pagDash.jsp">
              <img alt="MenuDashboardI188" src="imgPag/menudashboardi188-rb7.svg" />
              <span class="dahboard-text145 ParagraphBody">Dashboard</span>
            </a>
            <a class="dahboard-menu2" href="dahboard7.jsp">
                    <img alt="VectorI188" src="Imagenes/emp.png"/>
                  <span class="dahboard-text147 ParagraphBody">Empleados</span>
                </a>
            <a class="dahboard-menu1" href="pagIngresoProductos.jsp">
              <img alt="MenuCarI188" src="Imagenes/icons8-product-24.png" class="dahboard-menu-dashboard" />
              <span class="dahboard-text143 ParagraphBody">Producto</span>
              <img alt="Rectangle5I188" src="imgPag/rectangle5i188-omya-200w.png"
                class="dahboard-rectangle" />
            </a>
              <a class="dahboard-menu2" href="dahboard7.jsp">
                    <img alt="VectorI188" src="Imagenes/icons8-cart-24.png"/>
                  <span class="dahboard-text147 ParagraphBody">Ventas</span>
                </a>
          </div>
          <div class="splitline1"></div>
          <div class="dahboard-frame40245">
            <div class="dahboard-header8">
              <span class="dahboard-text149">Reporte</span>
            </div>
            <div class="dahboard-frame40245">
              <a class="dahboard-menu2" href="Pedidos_Administrador.php">
                <img alt="MenuPaymentI188" src="Imagenes/Report1.png" />
                <span class="dahboard-text151 ParagraphBody">Reportes</span>
              </a>
              <a class="dahboard-menu2" href="Configuracion_Administrador.php">
                <img alt="VectorI188" src="Imagenes/icons8-config.svg" />
                <span class="dahboard-text153 ParagraphBody">Configuracion</span>
              </a>
              <a class="dahboard-menu2" href="index.jsp">
                <i style="color: #fff" class="material-symbols-outlined">shopping_bag</i>
                <span class="dahboard-text153 ParagraphBody">Ir a comprar</span>
              </a>
            </div>
          </div>
        </div>
        <div class="dahboard-logout"
          style="display: flex; flex-direction: column; justify-content: center; align-items: center;">
          <a href="includes\Admin_LogOut.php">
            <img alt="Logout1156" src="imgPag/logout1156-tflgm.svg" />
          </a>
        </div>
      </div>

      <div class="frame40251-live-car-status">
        <div class="frame40251-live-car-status1">
          <div class="frame40251-header1">
            <div class="frame40251-frame40248">
              <div class="table_header">
                <span class="frame40251-text014 HeaderH1">
                  <span>Crear Producto</span>
                </span>
              </div>
            </div>

            <div class="frame40251-frame40248">
              <form action="control" enctype="multipart/form-data">
                <div class="signinformwhite-input">
                  <div style="display:flex; flex-direction: column; margin-top: 10px;">
                    <span>
                      <span>Nombre</span>
                    </span>
                    <input style="border: 1px solid rgba(0,0,0,0.2); border-radius: 10px; padding: 10px; margin: 10px 0;font-size:14px;"
                      type="text" name="nombre"/>
                  </div>
                  <div style="display:flex; flex-direction: column; margin-top: 10px;">
                    <span>
                      <span>Descripción</span>
                    </span>
                    <textarea name="desc"
                      style="border: 1px solid rgba(0,0,0,0.2); border-radius: 10px; padding: 10px; margin: 10px 0; font-size:14px; outline: none;"></textarea>
                  </div>
                  <div style="display:flex; justify-content: center; align-items: center;">
                    <div style="display:flex; flex-direction: column; width: 50%; margin-top: 10px;">
                      <span>
                        <span>Precio</span>
                      </span>
                      <div>
                        <span >S/</span>
                        <input type="text"
                        style="border: 1px solid rgba(0,0,0,0.2); border-radius: 10px; padding: 10px; margin: 10px 0; width: 75%; font-size:14px;"
                        name="prec"/>
                      </div>
                    </div>
                    <div style="display:flex; flex-direction: column; width: 50%; margin-top: 10px;">
                      <span>
                        <span>Categoria</span>
                      </span>
                      <select 
                      style="border: 1px solid rgba(0,0,0,0.2); border-radius: 10px; padding: 8.5px; margin: 10px 0; font-size:14px; width: 75%"
                      name="cate" id="">
                          <%
                              DAOproducto obj = new DAOproducto();
                              for (categoria c : obj.lisCate()) {                
                                out.println("<option value='"+c.getId()+"'>"+c.getNombre());
                                                         }
                          %>
                      </select>
                    </div>
                    <div style="display:flex; flex-direction: column; width: 50%; margin-top: 10px;">
                      <span>
                        <span> Stock</span>
                      </span>
                      <input 
                        style="border: 1px solid rgba(0,0,0,0.2); border-radius: 10px; padding: 10px; margin: 10px 0;font-size:14px; width: 75%;"
                        type="text"  name="stock"/>
                    </div>
                  </div>
                  <div style="display:flex; justify-content: flex-start; align-items: center">
                    
                    <div style="display:flex; flex-direction: column; width: 50%; margin-top: 10px;">
                      <span >
                        <span> Foto General del Producto</span>
                      </span>
                      <input 
                      style="padding: 10px 0; margin: 10px 0; font-size:14px; width: 94%;"
                      type="file" name="foto_general">
                    </div>
                  </div>                  
                  <button class="button signinformwhite-buttons">
                    <span class="signinformwhite-text14">
                        <input type="hidden" name="opc" value="1">
                      <input type="submit" class="signinformwhite-text14" value="Ingresar producto" name="b1"
                        style="background: none;">
                    </span>
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</body>

</html>
