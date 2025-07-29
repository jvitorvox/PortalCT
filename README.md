# Portal Casa & Terra - Versão Modernizada

## 🚀 Sobre o Projeto

Esta é a versão modernizada do Portal Casa & Terra, migrada de ASP.NET Web Forms (VB.NET) para ASP.NET Core 8.0 com Blazor Server (C#).

## 🏗️ Arquitetura

O projeto segue uma arquitetura em camadas:

- **PortalCT.Web**: Interface do usuário (Blazor Server)
- **PortalCT.Core**: Lógica de negócio e entidades
- **PortalCT.Infrastructure**: Acesso a dados e serviços externos

## 🛠️ Tecnologias Utilizadas

- **ASP.NET Core 8.0**
- **Blazor Server**
- **Entity Framework Core**
- **SQL Server**
- **Bootstrap 5**
- **Font Awesome 6**

## 📋 Funcionalidades

### ✅ Implementadas
- [x] Sistema de autenticação modernizado
- [x] Dashboard responsivo
- [x] Navegação por departamentos
- [x] Interface moderna com Bootstrap 5
- [x] Integração com serviços legados

### 🔄 Em Desenvolvimento
- [ ] Módulos específicos por departamento
- [ ] Sistema de upload de documentos
- [ ] Relatórios interativos
- [ ] Galeria de imagens
- [ ] Planos de ação

## 🚀 Como Executar

### Pré-requisitos
- .NET 8.0 SDK
- SQL Server (LocalDB ou instância completa)
- Visual Studio 2022 ou VS Code

### Passos

1. **Clone o repositório**
```bash
git clone [url-do-repositorio]
cd PortalCT
```

2. **Configure a string de conexão**
Edite `src/PortalCT.Web/appsettings.Development.json`:
```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=(localdb)\\mssqllocaldb;Database=PortalCT_Modern;Trusted_Connection=true"
  }
}
```

3. **Execute as migrações**
```bash
cd src/PortalCT.Web
dotnet ef database update
```

4. **Execute a aplicação**
```bash
dotnet run
```

5. **Acesse no navegador**
```
https://localhost:5001
```

## 🔐 Autenticação

O sistema mantém compatibilidade com o webservice de autenticação existente:
- **URL**: `http://webservicect.casaeterra.com/login.asmx`
- **Método**: `loginad(username, password)`

Para desenvolvimento, qualquer usuário/senha será aceito.

## 📁 Estrutura de Pastas

```
src/
├── PortalCT.Core/              # Entidades e DTOs
│   ├── Entities/               # Modelos de dados
│   ├── DTOs/                   # Data Transfer Objects
│   └── Interfaces/             # Contratos de serviços
├── PortalCT.Infrastructure/    # Implementações
│   ├── Data/                   # DbContext
│   ├── Repositories/           # Acesso a dados
│   └── Services/               # Serviços de negócio
└── PortalCT.Web/              # Interface do usuário
    ├── Pages/                  # Páginas Blazor
    ├── Shared/                 # Componentes compartilhados
    └── wwwroot/               # Arquivos estáticos
```

## 🎨 Design System

### Cores Principais
- **Primary**: #337ab7 (Azul Casa & Terra)
- **Secondary**: #2ea7eb (Azul claro)
- **Success**: #1cc09f (Verde)
- **Warning**: #ffb53e (Laranja)
- **Danger**: #f9243f (Vermelho)

### Componentes
- **Cards**: Bordas arredondadas, sombras suaves
- **Botões**: Efeitos hover, ícones Font Awesome
- **Navegação**: Sidebar responsiva com animações

## 🔄 Migração do Projeto Original

### O que foi Migrado
- ✅ Estrutura de autenticação
- ✅ Modelo de dados principal
- ✅ Lógica de permissões
- ✅ Interface base

### O que Precisa ser Migrado
- [ ] Todas as páginas específicas (.aspx → .razor)
- [ ] Lógica de negócio VB.NET → C#
- [ ] Relatórios e gráficos
- [ ] Upload de arquivos
- [ ] Integração completa com webservices

## 🧪 Testes

```bash
# Executar testes unitários
dotnet test

# Executar com cobertura
dotnet test --collect:"XPlat Code Coverage"
```

## 📦 Deploy

### Desenvolvimento
```bash
dotnet publish -c Release -o ./publish
```

### Produção
- Configure as strings de conexão em `appsettings.Production.json`
- Use Docker ou IIS para hospedagem
- Configure HTTPS obrigatório

## 🤝 Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/nova-funcionalidade`)
3. Commit suas mudanças (`git commit -am 'Adiciona nova funcionalidade'`)
4. Push para a branch (`git push origin feature/nova-funcionalidade`)
5. Abra um Pull Request

## 📝 Licença

Este projeto é propriedade da Casa & Terra Empreendimentos.

## 📞 Suporte

Para dúvidas e suporte:
- **Email**: sistemas.ti@casaeterra.com
- **Equipe**: Departamento de TI - Casa & Terra

---

**Desenvolvido com ❤️ pela equipe de TI da Casa & Terra**