# Guia de Migração - Portal Casa & Terra

## 📋 Visão Geral

Este documento detalha o processo de migração do Portal Casa & Terra de ASP.NET Web Forms (VB.NET) para ASP.NET Core 8.0 com Blazor Server (C#).

## 🔄 Mapeamento de Tecnologias

| Tecnologia Original | Tecnologia Nova | Motivo da Mudança |
|-------------------|-----------------|-------------------|
| ASP.NET Web Forms | Blazor Server | Interface moderna, componentes reutilizáveis |
| VB.NET | C# | Melhor suporte da comunidade, performance |
| Bootstrap 3.x | Bootstrap 5 | Design moderno, melhor responsividade |
| SQL direto | Entity Framework Core | ORM moderno, migrations, LINQ |
| ViewState | State Management | Performance, escalabilidade |

## 📁 Mapeamento de Arquivos

### Páginas Principais

| Arquivo Original | Arquivo Novo | Status |
|-----------------|--------------|--------|
| `default.aspx` | `Pages/Login.razor` | ✅ Migrado |
| `dashboard.aspx` | `Pages/Index.razor` | ✅ Migrado |
| `master.Master` | `Shared/MainLayout.razor` | ✅ Migrado |
| `ti.aspx` | `Pages/TI.razor` | 🔄 Em desenvolvimento |
| `planoacao.aspx` | `Pages/PlanosAcao.razor` | 🔄 Em desenvolvimento |
| `solcompras.aspx` | `Pages/Compras.razor` | 🔄 Em desenvolvimento |

### Código VB.NET → C#

| Funcionalidade | Arquivo Original | Arquivo Novo |
|---------------|-----------------|--------------|
| Autenticação | `default.aspx.vb` | `Services/AuthService.cs` |
| Usuários | `master.Master.vb` | `Repositories/UserRepository.cs` |
| Informações | `dashboard.aspx.vb` | `Repositories/InformationRepository.cs` |

## 🔧 Processo de Migração

### 1. Estrutura Base ✅
- [x] Criação da solução ASP.NET Core
- [x] Configuração do Entity Framework Core
- [x] Setup de autenticação e autorização
- [x] Layout base com Bootstrap 5

### 2. Modelos de Dados ✅
- [x] Entidades principais (User, Department, etc.)
- [x] DbContext configurado
- [x] Migrations iniciais

### 3. Serviços de Autenticação ✅
- [x] Interface com webservice legado
- [x] Sistema de permissões
- [x] Cookie authentication

### 4. Interface Base ✅
- [x] Layout responsivo
- [x] Navegação principal
- [x] Página de login
- [x] Dashboard inicial

### 5. Próximas Etapas 🔄

#### Fase 1: Módulos Core (2-3 semanas)
- [ ] Página de TI com demandas
- [ ] Planos de ação
- [ ] Sistema de documentos
- [ ] Galeria de imagens

#### Fase 2: Funcionalidades Avançadas (3-4 semanas)
- [ ] Relatórios interativos
- [ ] Upload de arquivos
- [ ] Sistema de aprovações
- [ ] Notificações

#### Fase 3: Integração Completa (2-3 semanas)
- [ ] Todos os webservices
- [ ] Migração de dados
- [ ] Testes de integração
- [ ] Performance tuning

## 🔀 Exemplos de Migração

### Autenticação VB.NET → C#

**Original (VB.NET):**
```vb
Protected Sub btnEntrar_Click(ByVal sender As Object, ByVal e As EventArgs)
    Dim wident As String = txtusuario.Text.Trim
    Dim wpass As String = txtSenha.Text.Trim
    Dim servicoV As WebserviceVB.loginSoapClient = New WebserviceVB.loginSoapClient
    
    Try
        Dim autoriza As String = servicoV.loginad(wident, wpass)
        If autoriza = "OK" Then
            Session("logado") = True
            Session("usuario") = txtusuario.Text
            Response.Redirect("dashboard.aspx")
        End If
    Catch ex As Exception
        ' Error handling
    End Try
End Sub
```

**Novo (C#):**
```csharp
private async Task HandleLogin()
{
    var result = await AuthService.AuthenticateAsync(loginRequest.Username, loginRequest.Password);
    
    if (result.IsSuccess && result.User != null)
    {
        var claims = new List<Claim>
        {
            new Claim(ClaimTypes.Name, result.User.Username),
            new Claim(ClaimTypes.Email, result.User.Email)
        };
        
        var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);
        await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, new ClaimsPrincipal(claimsIdentity));
        
        Navigation.NavigateTo("/");
    }
}
```

### GridView → Blazor Table

**Original (ASPX):**
```aspx
<asp:GridView ID="grdcompras" CssClass="table table-striped" runat="server" 
              AutoGenerateSelectButton="True" OnSelectedIndexChanged="grdcompras_SelectedIndexChanged">
</asp:GridView>
```

**Novo (Blazor):**
```razor
<table class="table table-striped">
    <thead>
        <tr>
            <th>Solicitação</th>
            <th>Data</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        @foreach (var item in compras)
        {
            <tr @onclick="() => SelectItem(item)" class="@(selectedItem?.Id == item.Id ? "table-active" : "")">
                <td>@item.Solicitacao</td>
                <td>@item.Data.ToString("dd/MM/yyyy")</td>
                <td>
                    <span class="badge bg-@GetStatusColor(item.Status)">
                        @item.Status
                    </span>
                </td>
            </tr>
        }
    </tbody>
</table>
```

## 🗃️ Migração de Dados

### Scripts de Migração

1. **Backup do banco original**
```sql
BACKUP DATABASE [P12Oficial] TO DISK = 'C:\Backup\P12Oficial_Backup.bak'
```

2. **Criação do novo banco**
```bash
dotnet ef database update
```

3. **Migração de dados essenciais**
```sql
-- Migrar usuários
INSERT INTO Users (Username, Email, FullName, IsActive, CreatedAt)
SELECT DISTINCT 
    ZK_USER,
    ZK_USER + '@casaeterra.com',
    ZK_USER,
    1,
    GETDATE()
FROM SZK010 
WHERE D_E_L_E_T_ = ' '

-- Migrar informações
INSERT INTO Informations (Content, Priority, Status, Sector, CreatedAt)
SELECT 
    Informacao,
    prioridade,
    STATUS,
    SETOR,
    GETDATE()
FROM INFORME 
WHERE STATUS = 'Ativo'
```

## 🧪 Testes de Migração

### Checklist de Validação

- [ ] **Autenticação**
  - [ ] Login com credenciais válidas
  - [ ] Rejeição de credenciais inválidas
  - [ ] Timeout de sessão
  - [ ] Permissões por departamento

- [ ] **Interface**
  - [ ] Responsividade em mobile
  - [ ] Navegação entre páginas
  - [ ] Carregamento de dados
  - [ ] Formulários funcionais

- [ ] **Integração**
  - [ ] Webservices legados
  - [ ] Banco de dados
  - [ ] Upload de arquivos
  - [ ] Relatórios

## 🚨 Riscos e Mitigações

### Riscos Identificados

1. **Perda de Funcionalidades**
   - **Risco**: Algumas funcionalidades podem não ser migradas corretamente
   - **Mitigação**: Testes extensivos, migração gradual por módulos

2. **Performance**
   - **Risco**: Nova arquitetura pode ter performance diferente
   - **Mitigação**: Benchmarks, otimização de queries, caching

3. **Integração com Sistemas Legados**
   - **Risco**: Problemas na comunicação com webservices antigos
   - **Mitigação**: Manter interfaces compatíveis, fallbacks

4. **Resistência dos Usuários**
   - **Risco**: Usuários podem resistir à nova interface
   - **Mitigação**: Treinamento, período de transição, feedback

### Plano de Contingência

1. **Rollback**: Manter sistema antigo funcionando em paralelo
2. **Suporte**: Equipe dedicada para resolução de problemas
3. **Monitoramento**: Logs detalhados e alertas automáticos

## 📈 Métricas de Sucesso

### KPIs da Migração

- **Performance**: Tempo de carregamento < 2s
- **Disponibilidade**: 99.9% uptime
- **Usabilidade**: Redução de 50% no tempo de execução de tarefas
- **Manutenibilidade**: Redução de 70% no tempo de desenvolvimento de novas features

### Ferramentas de Monitoramento

- Application Insights para performance
- Logs estruturados com Serilog
- Health checks automáticos
- Alertas proativos

## 📞 Suporte

Para dúvidas sobre a migração:
- **Equipe de TI**: sistemas.ti@casaeterra.com
- **Documentação**: Este repositório
- **Issues**: GitHub Issues para bugs e melhorias

---

**Última atualização**: Janeiro 2025