// Contacto JavaScript - Aníbal Serviços
document.addEventListener('DOMContentLoaded', function() {
    // ===== FAQ ACCORDION =====
    const faqItems = document.querySelectorAll('.faq-item');
    
    faqItems.forEach(item => {
        const question = item.querySelector('.faq-question');
        
        question.addEventListener('click', () => {
            // Fecha todos os outros itens (opcional - comportamento accordion)
            faqItems.forEach(otherItem => {
                if (otherItem !== item && otherItem.classList.contains('active')) {
                    otherItem.classList.remove('active');
                }
            });
            
            // Toggle do item clicado
            item.classList.toggle('active');
            
            // Animação suave do ícone
            const icon = question.querySelector('i');
            if (item.classList.contains('active')) {
                icon.style.transform = 'rotate(180deg)';
            } else {
                icon.style.transform = 'rotate(0deg)';
            }
        });
    });

    // Elementos do formulário
    const form = document.getElementById('contactForm');
    const nameInput = document.getElementById('name');
    const emailInput = document.getElementById('email');
    const phoneInput = document.getElementById('phone');
    const subjectInput = document.getElementById('subject');
    const messageInput = document.getElementById('message');
    const privacyCheck = document.getElementById('privacy');
    const submitBtn = document.getElementById('submitBtn');
    const successMessage = document.getElementById('successMessage');
    const charCount = document.getElementById('charCount');

    // ===== VALIDAÇÃO EM TEMPO REAL =====
    
    // Contador de caracteres
    if (messageInput) {
        messageInput.addEventListener('input', function() {
            const count = this.value.length;
            charCount.textContent = count;
            
            // Alerta visual próximo do limite
            if (count > 900) {
                charCount.style.color = '#ffc107';
            } else if (count > 980) {
                charCount.style.color = '#dc3545';
            } else {
                charCount.style.color = '';
            }
        });
    }

    // Validação de nome
    if (nameInput) {
        nameInput.addEventListener('blur', function() {
            validateName();
        });
    }

    // Validação de email
    if (emailInput) {
        emailInput.addEventListener('blur', function() {
            validateEmail();
        });
    }

    // Validação de mensagem
    if (messageInput) {
        messageInput.addEventListener('blur', function() {
            validateMessage();
        });
    }

    // Funções de validação
    function validateName() {
        const name = nameInput.value.trim();
        const errorElement = document.getElementById('nameError');
        
        if (name.length < 3) {
            showError(nameInput, errorElement, 'Nome deve ter pelo menos 3 caracteres');
            return false;
        } else if (name.length > 100) {
            showError(nameInput, errorElement, 'Nome muito longo');
            return false;
        } else {
            clearError(nameInput, errorElement);
            return true;
        }
    }

    function validateEmail() {
        const email = emailInput.value.trim();
        const errorElement = document.getElementById('emailError');
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        
        if (!emailRegex.test(email)) {
            showError(emailInput, errorElement, 'Digite um email válido');
            return false;
        } else {
            clearError(emailInput, errorElement);
            return true;
        }
    }

    function validateMessage() {
        const message = messageInput.value.trim();
        const errorElement = document.getElementById('messageError');
        
        if (message.length < 10) {
            showError(messageInput, errorElement, 'Mensagem deve ter pelo menos 10 caracteres');
            return false;
        } else if (message.length > 1000) {
            showError(messageInput, errorElement, 'Mensagem muito longa (máx. 1000 caracteres)');
            return false;
        } else {
            clearError(messageInput, errorElement);
            return true;
        }
    }

    function showError(input, errorElement, message) {
        input.classList.add('error');
        if (errorElement) {
            errorElement.textContent = message;
        }
    }

    function clearError(input, errorElement) {
        input.classList.remove('error');
        if (errorElement) {
            errorElement.textContent = '';
        }
    }

    // ===== SUBMISSÃO DO FORMULÁRIO =====
    if (form) {
        form.addEventListener('submit', function(e) {
            e.preventDefault();

            // Valida todos os campos
            const isNameValid = validateName();
            const isEmailValid = validateEmail();
            const isMessageValid = validateMessage();
            const isSubjectValid = subjectInput ? subjectInput.value !== '' : false;
            const isPrivacyAccepted = privacyCheck ? privacyCheck.checked : false;

            // Valida assunto
            if (subjectInput && !isSubjectValid) {
                subjectInput.classList.add('error');
                alert('Por favor, selecione um assunto');
                return;
            } else if (subjectInput) {
                subjectInput.classList.remove('error');
            }

            // Valida privacidade
            if (!isPrivacyAccepted) {
                alert('Por favor, aceite a política de privacidade');
                return;
            }

            // Se tudo válido, "envia"
            if (isNameValid && isEmailValid && isMessageValid && isSubjectValid && isPrivacyAccepted) {
                submitForm();
            }
        });
    }

    function submitForm() {
        // Desabilita botão e mostra loading
        submitBtn.disabled = true;
        const btnText = document.querySelector('.btn-text');
        const btnIcon = document.querySelector('.btn-icon');
        const btnLoading = document.querySelector('.btn-loading');
        
        if (btnText) btnText.style.display = 'none';
        if (btnIcon) btnIcon.style.display = 'none';
        if (btnLoading) btnLoading.style.display = 'flex';

        // Simula envio (aqui você conectará com o backend Java depois)
        setTimeout(() => {
            // Esconde formulário, mostra sucesso
            if (form) form.style.display = 'none';
            if (successMessage) {
                successMessage.style.display = 'block';
                
                // Scroll suave até a mensagem de sucesso
                successMessage.scrollIntoView({ behavior: 'smooth', block: 'center' });
            }
            
            // Log dos dados (para debug)
            console.log('Dados do formulário:');
            console.log('Nome:', nameInput ? nameInput.value : '');
            console.log('Email:', emailInput ? emailInput.value : '');
            console.log('Telefone:', phoneInput ? phoneInput.value : '');
            console.log('Assunto:', subjectInput ? subjectInput.value : '');
            console.log('Mensagem:', messageInput ? messageInput.value : '');
        }, 1500);
    }

    // ===== RESET DO FORMULÁRIO =====
    window.resetForm = function() {
        if (form) {
            form.style.display = 'flex';
            form.reset();
        }
        if (successMessage) {
            successMessage.style.display = 'none';
        }
        
        // Reseta contador
        if (charCount) {
            charCount.textContent = '0';
        }
        
        // Reabilita botão
        submitBtn.disabled = false;
        const btnText = document.querySelector('.btn-text');
        const btnIcon = document.querySelector('.btn-icon');
        const btnLoading = document.querySelector('.btn-loading');
        
        if (btnText) btnText.style.display = 'block';
        if (btnIcon) btnIcon.style.display = 'block';
        if (btnLoading) btnLoading.style.display = 'none';
        
        // Remove erros
        document.querySelectorAll('.error').forEach(el => {
            el.classList.remove('error');
        });
        
        document.querySelectorAll('.error-message').forEach(el => {
            el.textContent = '';
        });
    };

    // ===== MÁSCARA DE TELEFONE (opcional) =====
    if (phoneInput) {
        phoneInput.addEventListener('input', function(e) {
            let value = e.target.value.replace(/\D/g, '');
            
            if (value.length > 0) {
                // Formato: +258 87 371 0658
                if (value.length <= 3) {
                    value = '+' + value;
                } else if (value.length <= 5) {
                    value = '+' + value.substring(0, 3) + ' ' + value.substring(3);
                } else if (value.length <= 8) {
                    value = '+' + value.substring(0, 3) + ' ' + value.substring(3, 5) + ' ' + value.substring(5);
                } else {
                    value = '+' + value.substring(0, 3) + ' ' + value.substring(3, 5) + ' ' + 
                            value.substring(5, 8) + ' ' + value.substring(8, 12);
                }
                
                e.target.value = value;
            }
        });
    }
});