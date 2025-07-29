# Portal Casa & Terra - Node.js

## 🚀 Sobre o Projeto

Portal Casa & Terra modernizado com Node.js, Express e SQL Server. Sistema de gestão empresarial com autenticação integrada e interface responsiva.

## 🛠️ Tecnologias Utilizadas

- **Node.js** com Express.js
- **SQL Server** com driver nativo
- **JWT** para autenticação
- **Bootstrap 5** para interface
- **Font Awesome 6** para ícones

## 📋 Funcionalidades

### ✅ Implementadas
- [x] Sistema de autenticação com webservice legado
- [x] Dashboard responsivo com estatísticas
- [x] Navegação por departamentos
- [x] Interface moderna com Bootstrap 5
- [x] APIs RESTful completas
- [x] Middleware de segurança e autorização

### 🔄 Em Desenvolvimento
- [ ] Módulos específicos por departamento
- [ ] Sistema de upload de documentos
- [ ] Relatórios interativos
- [ ] Galeria de imagens
- [ ] Planos de ação

## 🚀 Como Executar

### Pré-requisitos
- SQL Server (LocalDB ou instância completa)
- .NET 8.0 SDK

### Passos

1. **Clone o repositório**
```bash
git clone [url-do-repositorio]
cd PortalCT
```

2. **Configure as variáveis de ambiente**
Copie `.env.example` para `.env` e configure:
```env
DB_HOST=(localdb)\\mssqllocaldb
DB_NAME=PortalCT_Modern
JWT_SECRET=casa-terra-jwt-secret-key-2025
```

3. **Execute a aplicação**
```bash
dotnet run --project src/PortalCT.Web
```

4. **Acesse no navegador**
```
http://localhost:3000
```

## 🔐 Autenticação

O sistema mantém compatibilidade com o webservice de autenticação existente:
- **URL**: `http://webservicect.casaeterra.com/login.asmx`
- **Método**: `loginad(username, password)`

Para desenvolvimento, qualquer usuário/senha será aceito.

## 📁 Estrutura do Projeto

```
├── server.js                  # Servidor principal Express
├── src/
│   ├── config/                # Configuração do banco de dados
│   ├── models/                # Modelos de dados (User, Information)
│   ├── services/              # Serviços de negócio e autenticação
│   ├── routes/                # Rotas da API REST
│   └── middleware/            # Middlewares de auth e segurança
├── public/                    # Frontend (HTML, CSS, JS)
│   ├── index.html            # Página principal
│   ├── css/style.css         # Estilos customizados
│   ├── js/app.js             # JavaScript da aplicação
│   └── images/               # Imagens e assets
└── package.json              # Dependências e scripts
```

## 🎨 Design System

### Cores Principais
- **Primary**: #337ab7 (Azul Casa & Terra)
- **Secondary**: #2ea7eb (Azul claro)
- **Success**: #1cc09f (Verde)
- **Warning**: #ffb53e (Laranja)
- **Danger**: #f9243f (Vermelho)

## 🔄 APIs Disponíveis

### Autenticação
- `POST /api/auth/login` - Login do usuário
- `POST /api/auth/logout` - Logout
- `GET /api/auth/me` - Dados do usuário logado
- `POST /api/auth/refresh` - Renovar token

### Dashboard
- `GET /api/dashboard` - Dados do dashboard
- `GET /api/dashboard/stats` - Estatísticas detalhadas

### Informações
- `GET /api/informations` - Listar informações
- `POST /api/informations` - Criar informação
- `PUT /api/informations/:id` - Atualizar informação
- `DELETE /api/informations/:id` - Deletar informação

### Departamentos
- `GET /api/departments` - Listar departamentos
- `GET /api/departments/:id` - Buscar departamento

### Usuários
- `GET /api/users` - Listar usuários (admin)
- `GET /api/users/:id` - Buscar usuário
- `GET /api/users/:id/permissions` - Permissões do usuário

## 🧪 Scripts Disponíveis

```bash
# Iniciar servidor de desenvolvimento  
dotnet watch run --project src/PortalCT.Web

# Iniciar servidor de produção
dotnet run --project src/PortalCT.Web

# Executar testes
dotnet test

# Build da aplicação
dotnet build
```

## 📦 Deploy

### Desenvolvimento
```bash
dotnet watch run --project src/PortalCT.Web
```

### Produção
1. Configure as variáveis de ambiente em `.env`
2. Execute `dotnet run --project src/PortalCT.Web`
3. Configure proxy reverso (Nginx) se necessário
4. Configure HTTPS obrigatório

## 🔒 Segurança

- Rate limiting configurado
- Helmet.js para headers de segurança
- CORS configurado
- JWT com expiração
- Validação de entrada com express-validator
- Sanitização de dados

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