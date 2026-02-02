// Theme Toggle
const themeToggle = document.getElementById('themeToggle');
const themeToggleText = document.querySelector('.theme-toggle-text');
const root = document.documentElement;

// Check for saved theme preference or default to 'dark'
const currentTheme = localStorage.getItem('theme') || 'dark';
if (currentTheme === 'blue') {
    root.setAttribute('data-theme', 'blue');
    themeToggleText.textContent = 'Dark Theme';
}

themeToggle.addEventListener('click', () => {
    const currentTheme = root.getAttribute('data-theme');
    
    if (currentTheme === 'blue') {
        root.removeAttribute('data-theme');
        localStorage.setItem('theme', 'dark');
        themeToggleText.textContent = 'Change Theme';
    } else {
        root.setAttribute('data-theme', 'blue');
        localStorage.setItem('theme', 'blue');
        themeToggleText.textContent = 'Dark Theme';
    }
});

// Mobile Menu Toggle
const menuToggle = document.getElementById('menuToggle');
const navMenu = document.getElementById('navMenu');

menuToggle.addEventListener('click', () => {
    navMenu.classList.toggle('active');
});

// Close menu when clicking outside
document.addEventListener('click', (e) => {
    if (!menuToggle.contains(e.target) && !navMenu.contains(e.target)) {
        navMenu.classList.remove('active');
    }
});

// Filter functionality
const filterButtons = document.querySelectorAll('.filter-btn');
const blogCards = document.querySelectorAll('.blog-card');

filterButtons.forEach(button => {
    button.addEventListener('click', () => {
        // Remove active class from all buttons
        filterButtons.forEach(btn => btn.classList.remove('active'));
        
        // Add active class to clicked button
        button.classList.add('active');
        
        // Get filter value
        const filterValue = button.getAttribute('data-filter');
        
        // Filter blog cards
        blogCards.forEach(card => {
            if (filterValue === 'all') {
                card.classList.remove('hidden');
            } else {
                const category = card.getAttribute('data-category');
                if (category === filterValue) {
                    card.classList.remove('hidden');
                } else {
                    card.classList.add('hidden');
                }
            }
        });
    });
});

// Smooth scrolling for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            target.scrollIntoView({
                behavior: 'smooth',
                block: 'start'
            });
            // Close mobile menu if open
            navMenu.classList.remove('active');
        }
    });
});

// Add animation on scroll
const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
};

const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.style.opacity = '1';
            entry.target.style.transform = 'translateY(0)';
        }
    });
}, observerOptions);

// Observe all blog cards and about cards
document.querySelectorAll('.blog-card, .about-card').forEach(card => {
    card.style.opacity = '0';
    card.style.transform = 'translateY(20px)';
    card.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
    observer.observe(card);
});

// Clap button (one per user, stored locally)
const clapButtons = document.querySelectorAll('.clap-button');
clapButtons.forEach(button => {
    const key = button.getAttribute('data-clap-key');
    if (!key) return;

    const countEl = document.querySelector(`.clap-count[data-clap-key="${key}"]`);
    const countKey = `clapCount:${key}`;
    const clickedKey = `clapClicked:${key}`;

    let count = parseInt(localStorage.getItem(countKey) || '0', 10);
    if (countEl) countEl.textContent = count.toString();

    const clicked = localStorage.getItem(clickedKey) === 'true';
    if (clicked) {
        button.disabled = true;
        button.style.opacity = '0.6';
        button.style.cursor = 'not-allowed';
    }

    button.addEventListener('click', () => {
        if (localStorage.getItem(clickedKey) === 'true') return;

        count += 1;
        localStorage.setItem(countKey, count.toString());
        localStorage.setItem(clickedKey, 'true');
        if (countEl) countEl.textContent = count.toString();

        button.disabled = true;
        button.style.opacity = '0.6';
        button.style.cursor = 'not-allowed';
        button.style.transform = 'scale(1.02)';
        setTimeout(() => {
            button.style.transform = '';
        }, 150);
    });
});

