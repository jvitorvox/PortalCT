# Estrutura do Projeto - Portal Casa & Terra

## 📁 Organização dos Arquivos

### **Visão Geral da Estrutura**
```
PortalCT/
├── 📁 src/                          # Código fonte
│   └── 📁 PortalCT.Web/            # Aplicação principal
├── 📁 docs/                         # Documentação
├── 📄 README.md                     # Documentação principal
├── 📄 DEPLOYMENT_GUIDE.md           # Guia de deploy
├── 📄 PROJECT_STRUCTURE.md          # Este arquivo
└── 📄 Dockerfile                    # Container (opcional)
```

## 🎨 Frontend (Interface do Usuário)

### **Localização**: `src/PortalCT.Web/`

#### **Páginas Principais** (`Pages/`)
```
Pages/
├── 📄 Index.razor                   # Dashboard principal
├── 📄 Login.razor                   # Página de login
├── 📄 TI.razor                      # Painel de Tecnologia da Informação
├── 📄 RH.razor                      # Painel de Recursos Humanos
├── 📄 PlanosAcao.razor             # Gestão de planos de ação
├── 📄 _Host.cshtml                  # Host page do Blazor
├── 📄 LoginHandler.cshtml           # Handler de login
├── 📄 LoginHandler.cshtml.cs        # Code-behind do login
├── 📄 Logout.cshtml                 # Página de logout
├── 📄 Logout.cshtml.cs             # Code-behind do logout
└── 📁 Shared/                       # Páginas compartilhadas
    └── 📄 _Layout.cshtml            # Layout base
```

#### **Componentes Reutilizáveis** (`Components/`)
```
Components/
└── 📁 Layout/
    ├── 📄 MainLayout.razor          # Layout principal da aplicação
    ├── 📄 NavMenu.razor             # Menu de navegação lateral
    └── 📄 RedirectToLogin.razor     # Componente de redirecionamento
```

#### **Arquivos Estáticos** (`wwwroot/`)
```
wwwroot/
├── 📁 css/
│   └── 📄 site.css                  # Estilos customizados da aplicação
├── 📁 js/                           # JavaScript (se necessário)
├── 📁 images/                       # Imagens e ícones
└── 📁 lib/                          # Bibliotecas externas (se houver)
```

#### **Configurações Globais**
```
📄 _Imports.razor                    # Imports globais para componentes Blazor
```

## ⚙️ Backend (Lógica de Negócio)

### **Localização**: `src/PortalCT.Web/`

#### **Serviços de Negócio** (`Services/`)
```
Services/
├── 📄 IAuthService.cs               # Interface de autenticação
├── 📄 AuthService.cs                # Implementação de autenticação
├── 📄 IUserService.cs               # Interface de usuários
├── 📄 UserService.cs                # Gestão de usuários
├── 📄 IInformationService.cs        # Interface de informações
├── 📄 InformationService.cs         # Gestão de informações
├── 📄 IDepartmentService.cs         # Interface de departamentos
└── 📄 DepartmentService.cs          # Gestão de departamentos
```

#### **Modelos de Dados** (`Models/`)
```
Models/
├── 📄 User.cs                       # Modelo de usuário
├── 📄 Information.cs                # Modelo de informações
├── 📄 Department.cs                 # Modelo de departamentos
└── 📄 UserPermission.cs             # Modelo de permissões
```

#### **Acesso a Dados** (`Data/`)
```
Data/
└── 📄 ApplicationDbContext.cs       # Contexto do Entity Framework
```

#### **Configuração Principal**
```
📄 Program.cs                        # Configuração e inicialização da aplicação
```

## 🔧 Configuração e Deploy

#### **Arquivos de Configuração**
```
├── 📄 appsettings.json              # Configurações de desenvolvimento
├── 📄 appsettings.Production.json   # Configurações de produção
├── 📄 PortalCT.Web.csproj          # Arquivo do projeto .NET
└── 📄 web.config                    # Configuração IIS (gerado no build)
```

#### **Documentação**
```
├── 📄 README.md                     # Documentação principal
├── 📄 DEPLOYMENT_GUIDE.md           # Guia completo de deploy
├── 📄 PROJECT_STRUCTURE.md          # Estrutura do projeto (este arquivo)
└── 📁 docs/                         # Documentação adicional
    ├── 📄 API.md                    # Documentação da API
    └── 📄 MIGRATION_GUIDE.md        # Guia de migração
```

## 🗂️ Detalhamento por Funcionalidade

### **🔐 Sistema de Autenticação**
- **Frontend**: `Pages/Login.razor`, `Pages/LoginHandler.cshtml`
- **Backend**: `Services/AuthService.cs`, `Models/User.cs`
- **Configuração**: `Program.cs` (Cookie Authentication)

### **📊 Dashboard**
- **Frontend**: `Pages/Index.razor`
- **Backend**: `Services/InformationService.cs`
- **Dados**: `Models/Information.cs`

### **💻 Painel de TI**
- **Frontend**: `Pages/TI.razor`
- **Funcionalidades**: Chamados, projetos, status de sistemas
- **Componentes**: Modais, tabelas, cards estatísticos

### **👥 Painel de RH**
- **Frontend**: `Pages/RH.razor`
- **Funcionalidades**: Funcionários, férias, aniversariantes
- **Componentes**: Listas, badges, ações rápidas

### **📋 Planos de Ação**
- **Frontend**: `Pages/PlanosAcao.razor`
- **Funcionalidades**: CRUD completo, filtros, progresso
- **Componentes**: Cards, modais, formulários

### **🎨 Layout e Navegação**
- **Layout**: `Components/Layout/MainLayout.razor`
- **Menu**: `Components/Layout/NavMenu.razor`
- **Estilos**: `wwwroot/css/site.css`

## 📦 Arquivos Gerados no Build

### **Pasta `publish/` (após dotnet publish)**
```
publish/
├── 📄 PortalCT.Web.dll              # Aplicação compilada
├── 📄 PortalCT.Web.exe              # Executável (Windows)
├── 📄 web.config                    # Configuração IIS
├── 📄 appsettings.json              # Configurações
├── 📄 appsettings.Production.json   # Configurações de produção
├── 📁 wwwroot/                      # Arquivos estáticos
├── 📁 refs/                         # Referências
└── ... (outras DLLs e dependências)
```

## 🔄 Fluxo de Dados

### **Autenticação**
```
Login.razor → AuthService → WebService Legado → Cookie → MainLayout
```

### **Dashboard**
```
Index.razor → InformationService → ApplicationDbContext → SQL Server
```

### **Navegação**
```
NavMenu.razor → Permissões do Usuário → Páginas Específicas
```

## 🛠️ Tecnologias Utilizadas

### **Frontend**
- **Blazor Server** - Framework de UI
- **Bootstrap 5** - Framework CSS
- **Font Awesome 6** - Ícones
- **JavaScript** - Interações específicas

### **Backend**
- **.NET 8.0** - Framework principal
- **ASP.NET Core** - Web framework
- **Entity Framework Core** - ORM
- **SQL Server** - Banco de dados

### **Autenticação**
- **Cookie Authentication** - Sessão do usuário
- **Claims-based** - Sistema de permissões
- **WebService SOAP** - Integração legada

## 📋 Checklist de Arquivos Importantes

### **Para Deploy em Produção:**
- [ ] `appsettings.Production.json` configurado
- [ ] Connection string do banco atualizada
- [ ] URL do webservice legado configurada
- [ ] Pasta `publish/` gerada com sucesso
- [ ] Arquivos estáticos em `wwwroot/` incluídos

### **Para Desenvolvimento:**
- [ ] `appsettings.json` com LocalDB
- [ ] Todas as dependências NuGet instaladas
- [ ] Entity Framework configurado
- [ ] Migrations aplicadas (se necessário)

## 🔍 Localização de Logs e Debugging

### **Logs da Aplicação**
- **Desenvolvimento**: Console do Visual Studio
- **Produção**: Event Viewer do Windows
- **Configuração**: `appsettings.json` → Logging

### **Debugging Frontend**
- **Blazor**: F12 → Console do navegador
- **CSS**: F12 → Elements/Styles
- **JavaScript**: F12 → Sources

### **Debugging Backend**
- **Visual Studio**: Breakpoints em Services/
- **Logs**: ILogger injetado nos serviços
- **Database**: SQL Server Management Studio

---

**Esta estrutura garante separação clara entre frontend e backend, facilitando manutenção e evolução do sistema.**