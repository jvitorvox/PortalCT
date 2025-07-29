# Guia de Publicação - Portal Casa & Terra no IIS

## 📋 Visão Geral

Este guia detalha como publicar a aplicação Portal Casa & Terra no IIS (Internet Information Services).

## 🏗️ Estrutura do Projeto

### **Frontend (Interface do Usuário)**
```
src/PortalCT.Web/
├── Pages/                     # Páginas Blazor (.razor)
│   ├── Index.razor           # Dashboard principal
│   ├── Login.razor           # Página de login
│   ├── TI.razor              # Painel de TI
│   ├── RH.razor              # Painel de RH
│   ├── PlanosAcao.razor      # Planos de ação
│   └── _Host.cshtml          # Host page
├── Components/               # Componentes reutilizáveis
│   └── Layout/
│       ├── MainLayout.razor  # Layout principal
│       ├── NavMenu.razor     # Menu de navegação
│       └── RedirectToLogin.razor
├── wwwroot/                  # Arquivos estáticos
│   ├── css/
│   │   └── site.css         # Estilos customizados
│   ├── js/                  # JavaScript (se houver)
│   └── images/              # Imagens e assets
└── _Imports.razor           # Imports globais
```

### **Backend (Lógica de Negócio)**
```
src/PortalCT.Web/
├── Services/                 # Serviços de negócio
│   ├── AuthService.cs       # Autenticação
│   ├── UserService.cs       # Gestão de usuários
│   ├── InformationService.cs # Informações
│   └── DepartmentService.cs # Departamentos
├── Models/                   # Modelos de dados
│   ├── User.cs              # Modelo de usuário
│   ├── Information.cs       # Modelo de informação
│   ├── Department.cs        # Modelo de departamento
│   └── UserPermission.cs    # Permissões
├── Data/                     # Acesso a dados
│   └── ApplicationDbContext.cs # Entity Framework Context
├── Pages/                    # Code-behind das páginas
│   ├── LoginHandler.cshtml.cs
│   └── Logout.cshtml.cs
└── Program.cs               # Configuração da aplicação
```

### **Configuração**
```
src/PortalCT.Web/
├── appsettings.json         # Configurações de desenvolvimento
├── appsettings.Production.json # Configurações de produção
├── web.config               # Configuração do IIS (gerado automaticamente)
└── PortalCT.Web.csproj     # Arquivo do projeto
```

## 🔧 Pré-requisitos

### **No Servidor IIS:**
1. **Windows Server** 2016 ou superior (ou Windows 10/11 Pro)
2. **IIS** instalado e configurado
3. **.NET 8.0 Hosting Bundle** instalado
4. **SQL Server** (LocalDB, Express ou Full)

### **Na Máquina de Desenvolvimento:**
1. **.NET 8.0 SDK** instalado
2. **Visual Studio 2022** ou **VS Code**
3. **Git** (para controle de versão)

## 📦 Passo a Passo para Publicação

### **Passo 1: Preparar o Ambiente**

1. **Instalar .NET 8.0 Hosting Bundle no servidor IIS:**
   ```
   https://dotnet.microsoft.com/download/dotnet/8.0
   ```
   - Baixe o "ASP.NET Core Runtime 8.0.x - Windows Hosting Bundle"
   - Execute como administrador
   - Reinicie o IIS: `iisreset`

2. **Verificar instalação:**
   ```cmd
   dotnet --info
   ```

### **Passo 2: Configurar Banco de Dados**

1. **SQL Server LocalDB (Desenvolvimento):**
   ```json
   "ConnectionStrings": {
     "DefaultConnection": "Data Source=(localdb)\\mssqllocaldb;Database=PortalCT_Modern;Trusted_Connection=true"
   }
   ```

2. **SQL Server Full (Produção):**
   ```json
   "ConnectionStrings": {
     "DefaultConnection": "Server=SERVIDOR;Database=PortalCT_Modern;User Id=usuario;Password=senha;TrustServerCertificate=true"
   }
   ```

### **Passo 3: Configurar Aplicação**

1. **Editar `appsettings.Production.json`:**
   ```json
   {
     "ConnectionStrings": {
       "DefaultConnection": "SUA_CONNECTION_STRING_AQUI"
     },
     "Logging": {
       "LogLevel": {
         "Default": "Warning",
         "Microsoft.AspNetCore": "Warning"
       }
     },
     "AllowedHosts": "*",
     "Authentication": {
       "LegacyWebServiceUrl": "http://webservicect.casaeterra.com/login.asmx"
     }
   }
   ```

### **Passo 4: Build da Aplicação**

1. **Abrir terminal na pasta do projeto:**
   ```cmd
   cd caminho\para\PortalCT
   ```

2. **Fazer build de produção:**
   ```cmd
   dotnet publish src/PortalCT.Web/PortalCT.Web.csproj -c Release -o publish
   ```

3. **Verificar pasta `publish`:**
   ```
   publish/
   ├── wwwroot/              # Arquivos estáticos
   ├── PortalCT.Web.dll     # Aplicação compilada
   ├── web.config           # Configuração IIS
   ├── appsettings.json     # Configurações
   └── ... (outros arquivos)
   ```

### **Passo 5: Configurar IIS**

1. **Abrir IIS Manager** (inetmgr)

2. **Criar Application Pool:**
   - Clique direito em "Application Pools" → "Add Application Pool"
   - Nome: `PortalCT`
   - .NET CLR Version: `No Managed Code`
   - Managed Pipeline Mode: `Integrated`
   - Clique "OK"

3. **Configurar Application Pool:**
   - Selecione o pool criado → "Advanced Settings"
   - Process Model → Identity: `ApplicationPoolIdentity`
   - Process Model → Load User Profile: `True`

4. **Criar Site:**
   - Clique direito em "Sites" → "Add Website"
   - Site name: `Portal Casa Terra`
   - Application pool: `PortalCT`
   - Physical path: `C:\inetpub\wwwroot\PortalCT` (ou sua pasta)
   - Port: `80` (ou outro disponível)

### **Passo 6: Deploy dos Arquivos**

1. **Copiar arquivos:**
   ```cmd
   xcopy /E /I publish\* C:\inetpub\wwwroot\PortalCT\
   ```

2. **Definir permissões:**
   - Clique direito na pasta → Properties → Security
   - Adicionar permissão para `IIS_IUSRS`: Full Control
   - Adicionar permissão para `IUSR`: Read & Execute

### **Passo 7: Configurar Banco de Dados**

1. **Criar banco (se não existir):**
   ```sql
   CREATE DATABASE PortalCT_Modern;
   ```

2. **Executar migrations (se necessário):**
   ```cmd
   cd C:\inetpub\wwwroot\PortalCT
   dotnet ef database update
   ```

### **Passo 8: Testar Aplicação**

1. **Acessar no navegador:**
   ```
   http://localhost/
   ```
   ou
   ```
   http://seu-servidor/
   ```

2. **Verificar logs (se houver erro):**
   - Event Viewer → Windows Logs → Application
   - Pasta da aplicação → logs/

## 🔍 Troubleshooting

### **Erro 500.30 - ANCM In-Process Start Failure**
```cmd
# Verificar se .NET 8.0 está instalado
dotnet --list-runtimes

# Reinstalar Hosting Bundle se necessário
```

### **Erro de Conexão com Banco**
1. Verificar connection string
2. Testar conectividade com SQL Server
3. Verificar permissões do usuário do banco

### **Erro 404 - Página não encontrada**
1. Verificar se arquivos foram copiados corretamente
2. Verificar configuração do site no IIS
3. Verificar se Application Pool está rodando

### **Problemas de Permissão**
```cmd
# Dar permissões para IIS_IUSRS
icacls "C:\inetpub\wwwroot\PortalCT" /grant "IIS_IUSRS:(OI)(CI)F" /T
```

## 📝 Checklist de Deploy

- [ ] .NET 8.0 Hosting Bundle instalado
- [ ] Application Pool criado e configurado
- [ ] Site criado no IIS
- [ ] Arquivos copiados para pasta do site
- [ ] Permissões configuradas
- [ ] Connection string configurada
- [ ] Banco de dados criado
- [ ] Aplicação testada e funcionando

## 🔄 Atualizações Futuras

### **Para atualizar a aplicação:**

1. **Parar Application Pool:**
   ```cmd
   %windir%\system32\inetsrv\appcmd stop apppool /apppool.name:"PortalCT"
   ```

2. **Fazer novo build:**
   ```cmd
   dotnet publish src/PortalCT.Web/PortalCT.Web.csproj -c Release -o publish
   ```

3. **Copiar arquivos:**
   ```cmd
   xcopy /E /Y publish\* C:\inetpub\wwwroot\PortalCT\
   ```

4. **Iniciar Application Pool:**
   ```cmd
   %windir%\system32\inetsrv\appcmd start apppool /apppool.name:"PortalCT"
   ```

## 📞 Suporte

Para dúvidas sobre o deploy:
- **Email**: sistemas.ti@casaeterra.com
- **Documentação**: Este arquivo
- **Logs**: Event Viewer do Windows

---

**Desenvolvido pela equipe de TI - Casa & Terra**