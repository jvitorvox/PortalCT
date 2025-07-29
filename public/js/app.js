class PortalApp {
    constructor() {
        this.token = localStorage.getItem('token');
        this.user = null;
        this.init();
    }

    async init() {
        // Verificar se está autenticado
        if (this.token) {
            const isValid = await this.verifyToken();
            if (isValid) {
                this.showDashboard();
                await this.loadDashboardData();
            } else {
                this.showLogin();
            }
        } else {
            this.showLogin();
        }

        this.setupEventListeners();
    }

    setupEventListeners() {
        // Login form
        const loginForm = document.getElementById('loginForm');
        if (loginForm) {
            loginForm.addEventListener('submit', (e) => this.handleLogin(e));
        }
    }

    async verifyToken() {
        try {
            const response = await fetch('/api/auth/me', {
                headers: {
                    'Authorization': `Bearer ${this.token}`
                }
            });

            if (response.ok) {
                const data = await response.json();
                this.user = data.user;
                return true;
            }
            return false;
        } catch (error) {
            console.error('Erro ao verificar token:', error);
            return false;
        }
    }

    showLogin() {
        document.getElementById('app').innerHTML = '';
        const loginModal = new bootstrap.Modal(document.getElementById('loginModal'));
        loginModal.show();
    }

    showDashboard() {
        document.getElementById('loginModal').style.display = 'none';
        document.getElementById('dashboardContent').classList.remove('d-none');
        document.getElementById('app').innerHTML = '';
        
        if (this.user) {
            document.getElementById('userDisplayName').textContent = this.user.fullName || this.user.username;
        }
    }

    async handleLogin(e) {
        e.preventDefault();
        
        const loginBtn = document.getElementById('loginBtn');
        const loginError = document.getElementById('loginError');
        const formData = new FormData(e.target);
        
        // Mostrar loading
        loginBtn.innerHTML = '<span class="spinner-border spinner-border-sm me-2"></span>Entrando...';
        loginBtn.disabled = true;
        loginError.classList.add('d-none');

        try {
            const response = await fetch('/api/auth/login', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    username: formData.get('username'),
                    password: formData.get('password')
                })
            });

            const data = await response.json();

            if (data.success) {
                this.token = data.token;
                this.user = data.user;
                localStorage.setItem('token', this.token);
                
                this.showDashboard();
                await this.loadDashboardData();
            } else {
                this.showError(data.message || 'Erro ao fazer login');
            }
        } catch (error) {
            console.error('Erro no login:', error);
            this.showError('Erro de conexão. Tente novamente.');
        } finally {
            // Restaurar botão
            loginBtn.innerHTML = '<i class="fas fa-sign-in-alt me-2"></i>ENTRAR';
            loginBtn.disabled = false;
        }
    }

    showError(message) {
        const loginError = document.getElementById('loginError');
        const loginErrorMessage = document.getElementById('loginErrorMessage');
        
        loginErrorMessage.textContent = message;
        loginError.classList.remove('d-none');
    }

    async loadDashboardData() {
        try {
            // Carregar dados do dashboard
            const dashboardResponse = await fetch('/api/dashboard', {
                headers: {
                    'Authorization': `Bearer ${this.token}`
                }
            });

            if (dashboardResponse.ok) {
                const dashboardData = await dashboardResponse.json();
                this.updateDashboardStats(dashboardData.data.stats);
                this.updateInformationsList(dashboardData.data.informations);
            }

            // Carregar departamentos
            const departmentsResponse = await fetch('/api/departments', {
                headers: {
                    'Authorization': `Bearer ${this.token}`
                }
            });

            if (departmentsResponse.ok) {
                const departmentsData = await departmentsResponse.json();
                this.updateDepartmentsList(departmentsData.data);
            }
        } catch (error) {
            console.error('Erro ao carregar dados do dashboard:', error);
        }
    }

    updateDashboardStats(stats) {
        document.getElementById('totalInformations').textContent = stats.totalInformations || 0;
        document.getElementById('criticalInformations').textContent = stats.criticalInformations || 0;
        document.getElementById('highPriorityInformations').textContent = stats.highPriorityInformations || 0;
    }

    updateInformationsList(informations) {
        const container = document.getElementById('informationsList');
        
        if (!informations || informations.length === 0) {
            container.innerHTML = '<p class="text-muted">Nenhuma informação disponível.</p>';
            return;
        }

        const html = informations.map(info => `
            <div class="information-item priority-${info.priority.toLowerCase()} fade-in">
                <div class="d-flex justify-content-between align-items-start mb-2">
                    <span class="badge priority-badge text-white">${info.priority}</span>
                    <small class="text-muted">${this.formatDate(info.createdAt)}</small>
                </div>
                <div class="information-content">
                    ${info.content}
                </div>
                ${info.sector !== 'T' ? `<small class="text-muted mt-2 d-block">Setor: ${info.sector}</small>` : ''}
            </div>
        `).join('');

        container.innerHTML = html;
    }

    updateDepartmentsList(departments) {
        const container = document.getElementById('departmentsList');
        
        const html = departments.map(dept => `
            <a href="#" class="list-group-item list-group-item-action" data-department="${dept.code}">
                <i class="fas fa-building me-2"></i>
                ${dept.name}
            </a>
        `).join('');

        container.innerHTML = html;

        // Adicionar event listeners
        container.querySelectorAll('.list-group-item').forEach(item => {
            item.addEventListener('click', (e) => {
                e.preventDefault();
                this.selectDepartment(e.target.dataset.department);
            });
        });
    }

    selectDepartment(departmentCode) {
        // Remover seleção anterior
        document.querySelectorAll('#departmentsList .list-group-item').forEach(item => {
            item.classList.remove('active');
        });

        // Adicionar seleção atual
        document.querySelector(`[data-department="${departmentCode}"]`).classList.add('active');

        // TODO: Carregar dados específicos do departamento
        console.log('Departamento selecionado:', departmentCode);
    }

    formatDate(dateString) {
        const date = new Date(dateString);
        return date.toLocaleDateString('pt-BR', {
            day: '2-digit',
            month: '2-digit',
            year: 'numeric',
            hour: '2-digit',
            minute: '2-digit'
        });
    }

    async logout() {
        try {
            await fetch('/api/auth/logout', {
                method: 'POST',
                headers: {
                    'Authorization': `Bearer ${this.token}`
                }
            });
        } catch (error) {
            console.error('Erro no logout:', error);
        } finally {
            this.token = null;
            this.user = null;
            localStorage.removeItem('token');
            location.reload();
        }
    }
}

// Função global para logout
function logout() {
    if (window.app) {
        window.app.logout();
    }
}

// Inicializar aplicação
document.addEventListener('DOMContentLoaded', () => {
    window.app = new PortalApp();
});