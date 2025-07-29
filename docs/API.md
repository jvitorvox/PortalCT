# API Documentation - Portal Casa & Terra

## 📋 Visão Geral

API RESTful do Portal Casa & Terra desenvolvida em Node.js com Express.js.

**Base URL**: `http://localhost:3000/api`

## 🔐 Autenticação

A API utiliza JWT (JSON Web Tokens) para autenticação. Inclua o token no header:

```
Authorization: Bearer <token>
```

## 📚 Endpoints

### 🔑 Autenticação

#### POST /auth/login
Realiza login do usuário.

**Request:**
```json
{
  "username": "usuario",
  "password": "senha"
}
```

**Response (200):**
```json
{
  "success": true,
  "message": "Login realizado com sucesso",
  "user": {
    "id": 1,
    "username": "usuario",
    "email": "usuario@casaeterra.com",
    "fullName": "Nome Completo",
    "permissions": ["PAINEL TI", "PAINEL RH"]
  },
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "permissions": ["PAINEL TI", "PAINEL RH"]
}
```

#### POST /auth/logout
Realiza logout do usuário.

**Response (200):**
```json
{
  "success": true,
  "message": "Logout realizado com sucesso"
}
```

#### GET /auth/me
Retorna dados do usuário autenticado.

**Headers:** `Authorization: Bearer <token>`

**Response (200):**
```json
{
  "success": true,
  "user": {
    "id": 1,
    "username": "usuario",
    "email": "usuario@casaeterra.com",
    "fullName": "Nome Completo",
    "permissions": ["PAINEL TI"]
  }
}
```

### 📊 Dashboard

#### GET /dashboard
Retorna dados do dashboard principal.

**Headers:** `Authorization: Bearer <token>`

**Response (200):**
```json
{
  "success": true,
  "data": {
    "user": {
      "username": "usuario",
      "permissions": ["PAINEL TI"]
    },
    "informations": [...],
    "stats": {
      "totalInformations": 10,
      "criticalInformations": 2,
      "highPriorityInformations": 3,
      "lastLogin": "2025-01-27T10:30:00Z"
    }
  }
}
```

#### GET /dashboard/stats
Retorna estatísticas detalhadas.

**Headers:** `Authorization: Bearer <token>`

**Response (200):**
```json
{
  "success": true,
  "data": {
    "informations": {
      "total": 10,
      "byPriority": {
        "critica": 2,
        "alta": 3,
        "media": 4,
        "baixa": 1
      },
      "bySector": {
        "todos": 5,
        "ti": 2,
        "rh": 2,
        "financeiro": 1
      }
    },
    "user": {
      "username": "usuario",
      "permissions": ["PAINEL TI"],
      "hasFullAccess": false
    }
  }
}
```

### 📢 Informações

#### GET /informations
Lista todas as informações ativas.

**Headers:** `Authorization: Bearer <token>`

**Response (200):**
```json
{
  "success": true,
  "data": [
    {
      "id": 1,
      "content": "Informação importante sobre o sistema",
      "priority": "Alta",
      "status": "Ativo",
      "sector": "T",
      "createdAt": "2025-01-27T10:00:00Z",
      "updatedAt": null
    }
  ]
}
```

#### GET /informations/:id
Busca informação por ID.

**Headers:** `Authorization: Bearer <token>`

**Response (200):**
```json
{
  "success": true,
  "data": {
    "id": 1,
    "content": "Informação importante",
    "priority": "Alta",
    "status": "Ativo",
    "sector": "T",
    "createdAt": "2025-01-27T10:00:00Z"
  }
}
```

#### POST /informations
Cria nova informação.

**Headers:** 
- `Authorization: Bearer <token>`
- `Content-Type: application/json`

**Permissão:** `PAINEL TI`

**Request:**
```json
{
  "content": "Nova informação importante",
  "priority": "Media",
  "sector": "T"
}
```

**Response (201):**
```json
{
  "success": true,
  "message": "Informação criada com sucesso",
  "data": {
    "id": 2,
    "content": "Nova informação importante",
    "priority": "Media",
    "status": "Ativo",
    "sector": "T",
    "createdAt": "2025-01-27T11:00:00Z"
  }
}
```

#### PUT /informations/:id
Atualiza informação existente.

**Headers:** 
- `Authorization: Bearer <token>`
- `Content-Type: application/json`

**Permissão:** `PAINEL TI`

**Request:**
```json
{
  "content": "Informação atualizada",
  "priority": "Alta"
}
```

**Response (200):**
```json
{
  "success": true,
  "message": "Informação atualizada com sucesso",
  "data": {
    "id": 1,
    "content": "Informação atualizada",
    "priority": "Alta",
    "status": "Ativo",
    "sector": "T",
    "updatedAt": "2025-01-27T11:30:00Z"
  }
}
```

#### DELETE /informations/:id
Deleta informação.

**Headers:** `Authorization: Bearer <token>`

**Permissão:** `@@@@` (Admin)

**Response (200):**
```json
{
  "success": true,
  "message": "Informação deletada com sucesso"
}
```

### 🏢 Departamentos

#### GET /departments
Lista todos os departamentos ativos.

**Headers:** `Authorization: Bearer <token>`

**Response (200):**
```json
{
  "success": true,
  "data": [
    {
      "Id": 1,
      "Name": "Tecnologia da Informação",
      "Description": "Departamento de TI",
      "Code": "TI",
      "IsActive": true,
      "CreatedAt": "2025-01-27T09:00:00Z"
    }
  ]
}
```

#### GET /departments/:id
Busca departamento por ID.

**Headers:** `Authorization: Bearer <token>`

**Response (200):**
```json
{
  "success": true,
  "data": {
    "Id": 1,
    "Name": "Tecnologia da Informação",
    "Description": "Departamento de TI",
    "Code": "TI",
    "IsActive": true,
    "CreatedAt": "2025-01-27T09:00:00Z"
  }
}
```

### 👥 Usuários

#### GET /users
Lista usuários (apenas admin).

**Headers:** `Authorization: Bearer <token>`

**Permissão:** `@@@@` (Admin)

**Response (200):**
```json
{
  "success": true,
  "message": "Funcionalidade em desenvolvimento",
  "data": []
}
```

#### GET /users/:id
Busca usuário por ID.

**Headers:** `Authorization: Bearer <token>`

**Permissão:** `@@@@` (Admin)

**Response (200):**
```json
{
  "success": true,
  "data": {
    "id": 1,
    "username": "usuario",
    "email": "usuario@casaeterra.com",
    "fullName": "Nome Completo",
    "isActive": true,
    "createdAt": "2025-01-27T08:00:00Z",
    "lastLoginAt": "2025-01-27T10:30:00Z"
  }
}
```

#### GET /users/:id/permissions
Lista permissões do usuário.

**Headers:** `Authorization: Bearer <token>`

**Nota:** Usuário pode ver apenas suas próprias permissões, exceto admin.

**Response (200):**
```json
{
  "success": true,
  "data": ["PAINEL TI", "PAINEL RH"]
}
```

## 🚨 Códigos de Erro

### 400 - Bad Request
```json
{
  "success": false,
  "message": "Dados inválidos",
  "errors": [
    {
      "field": "username",
      "message": "Usuário é obrigatório"
    }
  ]
}
```

### 401 - Unauthorized
```json
{
  "success": false,
  "message": "Token de acesso requerido"
}
```

### 403 - Forbidden
```json
{
  "success": false,
  "message": "Permissão insuficiente"
}
```

### 404 - Not Found
```json
{
  "success": false,
  "message": "Recurso não encontrado"
}
```

### 500 - Internal Server Error
```json
{
  "success": false,
  "message": "Erro interno do servidor"
}
```

## 🔒 Permissões

### Níveis de Acesso:
- `@@@@` - Acesso total (Admin)
- `PAINEL TI` - Acesso ao painel de TI
- `PAINEL RH` - Acesso ao painel de RH
- `PAINEL FINANCEIRO` - Acesso ao painel financeiro
- `PAINEL OBRAS` - Acesso ao painel de obras
- `PAINEL COMERCIAL` - Acesso ao painel comercial
- `PAINEL JURIDICO` - Acesso ao painel jurídico
- `PAINEL CONTABIL` - Acesso ao painel contábil

## 📝 Exemplos de Uso

### Login e uso da API:

```javascript
// 1. Login
const loginResponse = await fetch('/api/auth/login', {
  method: 'POST',
  headers: { 'Content-Type': 'application/json' },
  body: JSON.stringify({
    username: 'usuario',
    password: 'senha'
  })
});

const { token } = await loginResponse.json();

// 2. Usar token nas próximas requisições
const dashboardResponse = await fetch('/api/dashboard', {
  headers: { 'Authorization': `Bearer ${token}` }
});

const dashboardData = await dashboardResponse.json();
```

### Criar informação:

```javascript
const response = await fetch('/api/informations', {
  method: 'POST',
  headers: {
    'Authorization': `Bearer ${token}`,
    'Content-Type': 'application/json'
  },
  body: JSON.stringify({
    content: 'Nova informação importante',
    priority: 'Alta',
    sector: 'TI'
  })
});
```

---

**Documentação atualizada em**: Janeiro 2025