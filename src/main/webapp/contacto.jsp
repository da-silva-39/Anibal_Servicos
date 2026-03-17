<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp">
    <jsp:param name="cssExtra" value='<link rel="stylesheet" href="css/contacto.css">' />
</jsp:include>

    <main class="contacto-container">
        <!-- HEADER DA PÁGINA -->
        <div class="contacto-header">
            <div class="header-content">
                <h1><i class="ph ph-chat-teardrop"></i> Fale Connosco</h1>
                <p class="header-subtitle">Estamos aqui para responder às suas perguntas e ajudar no que precisar</p>
            </div>
            <div class="header-stats">
                <div class="stat-chip">
                    <i class="ph ph-clock"></i>
                    <span>Resposta em até 2h</span>
                </div>
                <div class="stat-chip">
                    <i class="ph ph-headset"></i>
                    <span>Suporte 24/7</span>
                </div>
            </div>
        </div>

        <div class="contacto-grid">
            <!-- COLUNA ESQUERDA - INFORMAÇÕES -->
            <div class="contacto-info">
                <div class="info-card">
                    <h2><i class="ph ph-address-book"></i> Informações de Contacto</h2>
                    
                    <div class="info-items">
                        <div class="info-item">
                            <div class="info-icon">
                                <i class="ph ph-whatsapp-logo"></i>
                            </div>
                            <div class="info-detail">
                                <h3>WhatsApp</h3>
                                <p>+258 87 371 0658</p>
                                <a href="https://wa.me/258873710658" target="_blank" class="info-action">
                                    Conversar agora <i class="ph ph-arrow-right"></i>
                                </a>
                            </div>
                        </div>

                        <div class="info-item">
                            <div class="info-icon">
                                <i class="ph ph-phone"></i>
                            </div>
                            <div class="info-detail">
                                <h3>Telefone</h3>
                                <p>+258 87 371 0658</p>
                                <p class="info-secondary">+258 85 571 2857</p>
                            </div>
                        </div>

                        <div class="info-item">
                            <div class="info-icon">
                                <i class="ph ph-envelope"></i>
                            </div>
                            <div class="info-detail">
                                <h3>Email</h3>
                                <p>silvaanibaldasilva@gmail.com</p>
                                <p class="info-secondary">josedasilvaaj39@gmail.com</p>
                            </div>
                        </div>

                        <div class="info-item">
                            <div class="info-icon">
                                <i class="ph ph-map-pin"></i>
                            </div>
                            <div class="info-detail">
                                <h3>Endereço</h3>
                                <p>Estaleiro Piloto</p>
                                <p>Cidade de Chimoio, Moçambique</p>
                            </div>
                        </div>

                        <div class="info-item">
                            <div class="info-icon">
                                <i class="ph ph-clock"></i>
                            </div>
                            <div class="info-detail">
                                <h3>Horário de Funcionamento</h3>
                                <p>Segunda - Sabado: 06:00 - 18:30</p>
                                <p>Doming: 07:00 - 17:00</p>
                                <p class="info-highlight">Domingo: atendimento limitado</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- REDES SOCIAIS -->
                <div class="social-card">
                    <h3>Siga-nos</h3>
                    <div class="social-links">
                        <a href="https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://www.facebook.com/p/An%25C3%25ADbal-Servi%25C3%25A7os-100076584495680/&ved=2ahUKEwjH2aqT26aTAxXuWUEAHZFfFJ0QFnoECBkQAQ&usg=AOvVaw3wGAUdY-KfY1ZZK-S-9cim" target="blank" class="social-link facebook"><i class="ph ph-facebook-logo"></i></a>
                        <a href="https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://www.instagram.com/aniba1_servicos/&ved=2ahUKEwjH2aqT26aTAxXuWUEAHZFfFJ0QFnoECBUQAQ&usg=AOvVaw27N5hcwQ6nVEJ0ijpowXZe" target="blank" class="social-link instagram"><i class="ph ph-instagram-logo"></i></a>
                        
                    </div>
                </div>

                <!-- WHATSAPP RÁPIDO -->
                <div class="whatsapp-float-card">
                    <div class="whatsapp-content">
                        <i class="ph ph-whatsapp-logo"></i>
                        <div>
                            <h4>Atendimento via WhatsApp</h4>
                            <p>Clique para falar connosco agora mesmo</p>
                        </div>
                    </div>
                    <a href="https://wa.me/258873710658" target="_blank" class="whatsapp-button">
                        Iniciar Conversa
                        <i class="ph ph-arrow-right"></i>
                    </a>
                </div>
            </div>

            <!-- COLUNA DIREITA - FORMULÁRIO E MAPA -->
            <div class="contacto-form-section">
                <!-- FORMULÁRIO DE CONTACTO -->
                <div class="form-card">
                    <h2><i class="ph ph-paper-plane"></i> Envie-nos uma mensagem</h2>
                    
                    <form id="contactForm" class="contact-form">
                        <div class="form-group">
                            <label for="name">
                                <i class="ph ph-user"></i>
                                Nome Completo
                            </label>
                            <input type="text" id="name" name="name" 
                                   placeholder="Digite seu nome completo" 
                                   required
                                   minlength="3"
                                   maxlength="100">
                            <div class="error-message" id="nameError"></div>
                        </div>

                        <div class="form-group">
                            <label for="email">
                                <i class="ph ph-envelope"></i>
                                Email
                            </label>
                            <input type="email" id="email" name="email" 
                                   placeholder="Digite seu email" 
                                   required>
                            <div class="error-message" id="emailError"></div>
                        </div>

                        <div class="form-group">
                            <label for="phone">
                                <i class="ph ph-phone"></i>
                                Telefone (opcional)
                            </label>
                            <input type="tel" id="phone" name="phone" 
                                   placeholder="+258 87 371 0658">
                        </div>

                        <div class="form-group">
                            <label for="subject">
                                <i class="ph ph-tag"></i>
                                Assunto
                            </label>
                            <select id="subject" name="subject" required>
                                <option value="">Selecione um assunto</option>
                                <option value="orcamento">Pedido de Orçamento</option>
                                <option value="duvida">Dúvida sobre Materiais</option>
                                <option value="transporte">Informação de Transporte</option>
                                <option value="reclamacao">Reclamação</option>
                                <option value="outro">Outro</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="message">
                                <i class="ph ph-chat-text"></i>
                                Mensagem
                            </label>
                            <textarea id="message" name="message" 
                                      rows="5" 
                                      placeholder="Digite sua mensagem..." 
                                      required
                                      minlength="10"
                                      maxlength="1000"></textarea>
                            <div class="character-count">
                                <span id="charCount">0</span>/1000
                            </div>
                            <div class="error-message" id="messageError"></div>
                        </div>

                        <div class="form-group checkbox-group">
                            <input type="checkbox" id="privacy" name="privacy" required>
                            <label for="privacy">
                                Aceito a <a href="#" class="privacy-link">política de privacidade</a> e concordo em ser contactado
                            </label>
                        </div>

                        <button type="submit" class="submit-btn" id="submitBtn">
                            <span class="btn-text">Enviar Mensagem</span>
                            <span class="btn-icon"><i class="ph ph-paper-plane-right"></i></span>
                            <span class="btn-loading" style="display: none;">
                                <i class="ph ph-circle-notch"></i>
                                Enviando...
                            </span>
                        </button>
                    </form>

                    <!-- MENSAGEM DE SUCESSO -->
                    <div class="success-message" id="successMessage" style="display: none;">
                        <i class="ph ph-check-circle"></i>
                        <h3>Mensagem Enviada!</h3>
                        <p>Obrigado pelo contacto. Responderemos em breve.</p>
                        <button class="new-message-btn" onclick="resetForm()">Nova Mensagem</button>
                    </div>
                </div>

                <!-- MAPA (Google Maps) -->
                <div class="map-card">
                    <h2><i class="ph ph-map-trifold"></i> Nossa Localização</h2>
                    <div class="map-container">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d551.6940686103882!2d33.458506552670876!3d-19.089184109830978!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x192b3506d645bd41%3A0x476fa2df3e4ea39b!2sAnibal%20Servicos!5e1!3m2!1spt-PT!2smz!4v1773658086035!5m2!1spt-PT!2smz" 
                        width="600" 
                        height="450" 
                        style="border:0;" 
                        allowfullscreen="" 
                        loading="lazy" 
                        referrerpolicy="no-referrer-when-downgrade">
                        </iframe>                

                    </div>
                    
                </div>
            </div>
        </div>

        <!-- FAQ RÁPIDO -->
        <div class="faq-section">
            <h2><i class="ph ph-question"></i> Perguntas Frequentes</h2>
            <div class="faq-grid">
                <div class="faq-item">
                    <div class="faq-question">
                        <span>Qual o prazo de resposta?</span>
                        <i class="ph ph-caret-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>Respondemos a todas as mensagens em até 2 horas úteis. Para urgências, use o WhatsApp.</p>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="faq-question">
                        <span>Fazem entregas em toda a cidade?</span>
                        <i class="ph ph-caret-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>Sim, entregamos em toda Chimoio e arredores. Consulte condições especiais para distâncias maiores.</p>
                    </div>
                </div>
                <div class="faq-item">
                    <div class="faq-question">
                        <span>Aceitam encomendas por telefone?</span>
                        <i class="ph ph-caret-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>Sim, pode ligar ou enviar mensagem pelo WhatsApp para fazer seus pedidos. O mais usado &eacute; ligar para o numero indicado </p>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <jsp:include page="footer.jsp" />

