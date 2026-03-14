        // Slideshow
        let currentSlide = 0;
        const slides = document.querySelectorAll('.minha-div .slide');
        const totalSlides = slides.length;

        if (totalSlides > 0) {
            slides[currentSlide].style.opacity = 1;
        }

        function nextSlide() {
            slides[currentSlide].style.opacity = 0;
            currentSlide = (currentSlide + 1) % totalSlides;
            slides[currentSlide].style.opacity = 1;
        }

        setInterval(nextSlide, 4000);
