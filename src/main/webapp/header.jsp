<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Anibal Serviços</title>
    <link rel="stylesheet" href="css/header.css">
    
    <link rel="stylesheet" href="css/comum.css">
    ${param.cssExtra}  <!-- recebe parâmetro da página chamadora -->
    
    <!-- Ícones (Font Awesome e Phosphor) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>

    <div class="overlay"></div> <!-- camada com vinheta azul -->
    
    <div class="site-wrapper"> <!-- toda página -->

        <header class="main-header"> <!--Menu do cabeçalho-->
            <div class="logo-area">
                <img src="img/img39.png" alt="Logo Anibal Serviços">
                <div class="logo-text">
                    <h1>ANIBAL <span>SERVIÇOS</span></h1>
                    <small>Lda · Transporte & Estaleiro</small>
                </div>
            </div>
            
            <!-- Botão hambúrguer (visível apenas em mobile) -->
    <button class="menu-toggle" aria-label="Abrir menu">
        <span class="hamburger"></span>
        
    </button>

            <nav class="top-nav" id="topNav">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Início</a></li>
                    <li><a href="#"><i class="fas fa-cog"></i> Serviços</a></li>
                    <li><a href="#"><i class="fas fa-table"></i> Tabela</a></li>
                    <li><a href="#"><i class="fas fa-images"></i> Galeria</a></li>
                    <li><a href="#"><i class="fas fa-comment-dots"></i> Depoimentos</a></li>
                    <li><a href="#"><i class="fas fa-info-circle"></i> Sobre</a></li>
                    <li><a href="#"><i class="fas fa-envelope"></i> Contacto</a></li>
                    <li><a href="#"><i class="fas fa-sign-in-alt"></i> Entrar</a></li>
                </ul>
            </nav>
        </header>

        <main>