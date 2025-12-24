window.appState = {
    isAuthenticated: false,
    currentView: 'login',
    preferences: { theme: 'light', currency: 'usd', graphStyle: 'line' },
    coinList: [],
    recentViews: [],
    portfolio: [],
    user: null
};

function router(viewName, data = {}) {
    window.appState.currentView = viewName;

    switch(viewName) {
        case 'login': renderLoginView(); break;
        case 'home': renderHomeView(); break;
        case 'dashboard': renderDashboardView(data); break;
        case 'coin': renderCoinView(data); break;
        case 'compare': renderCompareView(); break;
        case 'news': renderNewsView(); break;
        case 'settings': renderSettingsView(); break;
        case 'portfolio': renderPortfolioView(); break;
        case 'converter': renderConverterView(); break;
        default: renderHomeView();
    }
}

function init() {
    applyTheme();
    router(appState.isAuthenticated ? 'home' : 'login');
}

window.onload = init;

function renderLoginView() { document.getElementById('app').innerHTML = 'Login View'; }
function renderHomeView() { document.getElementById('app').innerHTML = 'Home View'; }
function renderDashboardView() {}
function renderCoinView() {}
function renderCompareView() {}
function renderNewsView() {}
function renderSettingsView() {}
function renderPortfolioView() {}
function renderConverterView() {}
function applyTheme() { document.body.className = appState.preferences.theme; }
