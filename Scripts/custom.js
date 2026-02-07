// Custom JavaScript for EduVantage
document.addEventListener('DOMContentLoaded', function () {
    // Mobile CTA Animation
    const mobileCTA = document.querySelector('.fixed-bottom a');
    if (mobileCTA) {
        setInterval(() => {
            mobileCTA.classList.toggle('animate__bounce');
        }, 3000);
    }

    // Form Validation for Demo Form
    const demoForm = document.getElementById('demoForm');
    if (demoForm) {
        demoForm.addEventListener('submit', function (e) {
            const phone = document.getElementById('phone');
            if (phone && !/^\d{10}$/.test(phone.value)) {
                e.preventDefault();
                alert('Please enter a valid 10-digit phone number');
                phone.focus();
            }
        });
    }

    // Smooth Scrolling for Anchor Links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            const href = this.getAttribute('href');
            if (href !== '#') {
                e.preventDefault();
                const target = document.querySelector(href);
                if (target) {
                    target.scrollIntoView({ behavior: 'smooth' });
                }
            }
        });
    });
});