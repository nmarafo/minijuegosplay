document.addEventListener('DOMContentLoaded', () => {
    const categoriesContainer = document.getElementById('categoriesContainer');
    const gamesGrid = document.getElementById('gamesGrid');
    const gameModal = document.getElementById('gameModal');
    const gameIframe = document.getElementById('gameIframe');
    const closeModal = document.getElementById('closeModal');
    const mainLogo = document.getElementById('mainLogo');

    let allGames = [];
    let currentCategory = 'all';

    // Fetch games data
    fetch('data/games.json')
        .then(response => response.json())
        .then(data => {
            allGames = data.games;
            renderCategories(data.categories);
            renderGames(allGames);
        })
        .catch(err => console.error('Error loading games:', err));

    function renderCategories(categories) {
        categoriesContainer.innerHTML = categories.map(cat => `
            <div class="category-chip ${cat.id === 'all' ? 'active' : ''}" 
                 data-id="${cat.id}">
                ${cat.name}
            </div>
        `).join('');

        // Add event listeners
        document.querySelectorAll('.category-chip').forEach(chip => {
            chip.addEventListener('click', () => {
                const catId = chip.getAttribute('data-id');
                setActiveCategory(catId);
            });
        });
    }

    function setActiveCategory(catId) {
        currentCategory = catId;
        
        // Update UI
        document.querySelectorAll('.category-chip').forEach(chip => {
            chip.classList.toggle('active', chip.getAttribute('data-id') === catId);
        });

        // Filter and Render
        const filtered = catId === 'all' 
            ? allGames 
            : allGames.filter(game => game.category === catId);
        
        renderGames(filtered);
    }

    function renderGames(games) {
        gamesGrid.innerHTML = games.map(game => `
            <div class="game-card" data-path="${game.path}">
                <img src="${game.thumbnail}" alt="${game.title}" class="game-thumbnail">
                <div class="game-badge">${game.category}</div>
                <div class="game-info">
                    <h3 class="game-title">${game.title}</h3>
                    <p class="game-desc">${game.description}</p>
                </div>
            </div>
        `).join('');

        // Add click listeners to cards
        document.querySelectorAll('.game-card').forEach(card => {
            card.addEventListener('click', () => {
                const path = card.getAttribute('data-path');
                openGame(path);
            });
        });
    }

    function openGame(path) {
        gameIframe.src = path;
        gameModal.classList.add('active');
        document.body.style.overflow = 'hidden'; // Prevent scroll
    }

    closeModal.addEventListener('click', () => {
        gameModal.classList.remove('active');
        gameIframe.src = '';
        document.body.style.overflow = 'auto';
    });

    // Close on outside click
    gameModal.addEventListener('click', (e) => {
        if (e.target === gameModal) {
            closeModal.click();
        }
    });

    mainLogo.addEventListener('click', () => {
        setActiveCategory('all');
    });
});
