<%@ Page Title="Tu Ticket Ahora" Language="C#" AutoEventWireup="true" CodeFile="~/Controlador/Index.aspx.cs" Inherits="Vista_Index" %>


<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/x-icon" href="../img/b-ticket.png" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tu Ticket</title>
    <link rel="stylesheet" href="../css/estilos.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800&display=swap" rel="stylesheet">
</head>
<body>
    <header>
        <nav>
            <ul>
                <li><a href="http://localhost:51924/Vista/Login.aspx">Iniciar Sesion</a></li>
                 <li><a href="http://localhost:51924/Vista/RegistroUsuario.aspx">Registro</a></li>
            </ul>
        </nav>
        <section class="textos-header">
            <h1>TU TICKET</h1>
            <img width="100" height="100" float="center" src="../img/b-ticket.png">
            <section class="textos-header">
                <h2>Reserva ahora el ticket</h2>
                <h3>Para tu proximo destino</h3>
            </section>
            </section>
            <div class="wave" style="height: 150px; overflow: hidden;">
                <svg viewBox="0 0 500 150" preserveAspectRatio="none"
                     style="height: 100%; width: 100%;">
                    <path d="M0.00,49.98 C150.00,150.00 349.20,-50.00 500.00,49.98 L500.00,150.00 L0.00,150.00 Z"
                     style="stroke: none; fill: darkblue;"></path>
                </svg>
            </div>
    </header>
    <main>
        <section class="portafolio">
            <div class="contenedor">
                <h2 class="titulo">Rutas</h2>
                <div class="galeria-port">
                    <div class="imagen-port">
                        <img src="../img/pointer.png" alt="">
                        <div class="hover-galeria">
                            <a href="http://localhost:51924/Vista/VerRutas_Visitante.aspx">Ver Rutas</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="contenedor sobre-nosotros">
            <h2 class="titulo">Nuestra plataforma</h2>
            <div class="contenedor-sobre-nosotros">
                <img src="../img/bill.png" alt="" class="imagen-about-us">
                <div class="contenido-textos">
                    <h3><span>1</span>Registrate</h3>
                    <p>
                        Registrarse........
                    </p>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <div class="contenedor-footer">
            <div class="content-foo">
                <h4>Telefono</h4>
                <p>8296312</p>
            </div>
            <div class="content-foo">
                <h4>Correo</h4>
                <p>tuticket@gmail.com</p>
            </div>
            <div class="content-foo">
                <h4>Ubicacion</h4>
                <p>N/A</p>
            </div>
        </div>
    </footer>
    </body>
</html>
