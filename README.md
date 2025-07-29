# Portal Casa & Terra - .NET Core 8.0

## 🚀 Sobre o Projeto

Portal Casa & Terra modernizado com .NET Core 8.0, Blazor Server e SQL Server. Sistema de gestão empresarial com autenticação integrada e interface responsiva.

## 🛠️ Tecnologias Utilizadas

- **.NET Core 8.0** com Blazor Server
- **Entity Framework Core** para acesso a dados
- **SQL Server** LocalDB/Express/Full
- **Cookie Authentication** para sessões
- **Bootstrap 5** para interface
- **Font Awesome 6** para ícones

## 📋 Funcionalidades

### ✅ Implementadas
- [x] Sistema de autenticação com webservice legado
- [x] Dashboard responsivo com estatísticas
- [x] Painel de TI com gestão de chamados
- [x] Painel de RH completo
- [x] Sistema de planos de ação
- [x] Navegação por departamentos
- [x] Interface moderna com Bootstrap 5
- [x] Componentes Blazor reutilizáveis
- [x] Sistema de permissões por departamento

### 🔄 Em Desenvolvimento
- [ ] Módulos de Financeiro, Obras, Comercial
- [ ] Sistema de upload de documentos
- [ ] Relatórios interativos
- [ ] Galeria de imagens
- [ ] Notificações em tempo real

## 🚀 Como Executar

### Pré-requisitos
- **SQL Server** (LocalDB, Express ou Full)
- .NET 8.0 SDK
- **Visual Studio 2022** ou **VS Code** (opcional)

### Passos

1. **Clone o repositório**
```bash
git clone <url-do-repositorio>
cd PortalCT
```

2. **Configure o banco de dados**
Edite `src/PortalCT.Web/appsettings.json`:
```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=(localdb)\\mssqllocaldb;Database=PortalCT_Modern;Trusted_Connection=true"
  }
}
```

3. **Execute a aplicação**
```bash
dotnet run --project src/PortalCT.Web
```

4. **Acesse no navegador**
```
http://localhost:5000
```

## 🔐 Autenticação

O sistema mantém compatibilidade com o webservice de autenticação existente:
- **URL**: `http://webservicect.casaeterra.com/login.asmx`
- **Método**: `loginad(username, password)`

Para desenvolvimento, qualquer usuário/senha será aceito.

## 📁 Estrutura do Projeto

### **Frontend (Blazor)**
```
src/PortalCT.Web/
├── Pages/                     # Páginas Blazor (.razor)
│   ├── Index.razor           # Dashboard
│   ├── Login.razor           # Login
│   ├── TI.razor              # Painel TI
│   └── RH.razor              # Painel RH
├── Components/Layout/         # Componentes de layout
├── wwwroot/css/              # Estilos CSS
└── Services/                 # Serviços de negócio
```

### **Backend (.NET Core)**
```
src/PortalCT.Web/
├── Services/                  # Lógica de negócio
│   ├── AuthService.cs        # Autenticação
│   ├── UserService.cs        # Usuários
│   └── InformationService.cs # Informações
├── Models/                   # Modelos de dados
├── Data/                     # Entity Framework
└── Program.cs               # Configuração
```

## 🧪 Comandos Disponíveis

```bash
# Desenvolvimento com hot reload
dotnet watch run --project src/PortalCT.Web

# Executar aplicação
dotnet run --project src/PortalCT.Web

# Build da aplicação
dotnet build src/PortalCT.Web

# Publicar para produção
dotnet publish src/PortalCT.Web -c Release -o publish

# Executar testes (quando disponíveis)
dotnet test
```

## 📦 Deploy no IIS

### **Guia Completo**
Consulte `DEPLOYMENT_GUIDE.md` para instruções detalhadas.

### **Deploy Rápido**
Consulte `QUICK_DEPLOY.md` para deploy em 15 minutos.

### **Pré-requisitos do Servidor**
1. **Windows Server** com IIS
2. **.NET 8.0 Hosting Bundle**
3. **SQL Server** (LocalDB/Express/Full)

### **Comandos de Deploy**
```cmd
# Build para produção
dotnet publish src/PortalCT.Web/PortalCT.Web.csproj -c Release -o publish

# Copiar para IIS
xcopy /E /I publish\* C:\inetpub\wwwroot\PortalCT\

# Configurar permissões
icacls "C:\inetpub\wwwroot\PortalCT" /grant "IIS_IUSRS:(OI)(CI)F" /T
```

## 🎨 Design System

### **Cores Principais**
- **Primary**: #337ab7 (Azul Casa & Terra)
- **Secondary**: #2ea7eb (Azul claro)  
- **Success**: #1cc09f (Verde)
- **Warning**: #ffb53e (Laranja)
- **Danger**: #f9243f (Vermelho)

### **Componentes**
- **Bootstrap 5** para layout responsivo
- **Font Awesome 6** para ícones
- **Blazor Components** para interatividade

## 🔒 Segurança

- **Cookie Authentication** com timeout
- **Claims-based Authorization** por departamento
- **HTTPS** obrigatório em produção
- **Headers de segurança** configurados
- **Validação de entrada** em todos os formulários
- **Sanitização** automática do Blazor

## 🤝 Contribuição

1. Faça um fork do projeto
2. Crie uma branch (`git checkout -b feature/nova-funcionalidade`)
3. Commit (`git commit -am 'Adiciona nova funcionalidade'`)
4. Push (`git push origin feature/nova-funcionalidade`)
5. Abra um Pull Request

## 📚 Documentação Adicional

- **`PROJECT_STRUCTURE.md`** - Estrutura detalhada dos arquivos
- **`DEPLOYMENT_GUIDE.md`** - Guia completo de deploy
- **`QUICK_DEPLOY.md`** - Deploy rápido em 15 minutos
- **`docs/API.md`** - Documentação da API (legado)
- **`docs/MIGRATION_GUIDE.md`** - Guia de migração

## 📝 Licença

Este projeto é propriedade da Casa & Terra Empreendimentos.

## 📞 Suporte

Para dúvidas e suporte:
- **Email**: ti@casaeterra.com
- **Equipe**: Departamento de TI - Casa & Terra

---

**Desenvolvido com ❤️ pela equipe de TI da Casa & Terra**