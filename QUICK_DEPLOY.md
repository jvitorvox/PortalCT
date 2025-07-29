# 🚀 Deploy Rápido - Portal Casa & Terra

## ⚡ Resumo Executivo

**Tempo estimado**: 15-30 minutos  
**Pré-requisito**: Windows Server com IIS e .NET 8.0

## 📋 Checklist Rápido

### **1. Preparar Servidor (5 min)**
- [ ] Instalar .NET 8.0 Hosting Bundle
- [ ] Reiniciar IIS: `iisreset`
- [ ] Verificar: `dotnet --info`

### **2. Build da Aplicação (2 min)**
```cmd
cd PortalCT
dotnet publish src/PortalCT.Web/PortalCT.Web.csproj -c Release -o publish
```

### **3. Configurar IIS (5 min)**
- [ ] Criar Application Pool: `PortalCT` (No Managed Code)
- [ ] Criar Site: `Portal Casa Terra` (porta 80)
- [ ] Apontar para pasta: `C:\inetpub\wwwroot\PortalCT`

### **4. Deploy Arquivos (3 min)**
```cmd
xcopy /E /I publish\* C:\inetpub\wwwroot\PortalCT\
icacls "C:\inetpub\wwwroot\PortalCT" /grant "IIS_IUSRS:(OI)(CI)F" /T
```

### **5. Configurar Banco (5 min)**
- [ ] Editar `appsettings.Production.json`
- [ ] Configurar connection string
- [ ] Criar banco: `PortalCT_Modern`

### **6. Testar (2 min)**
- [ ] Acessar: `http://localhost`
- [ ] Login: qualquer usuário/senha
- [ ] Verificar dashboard

## 🔧 Comandos Essenciais

### **Build e Deploy**
```cmd
# Build
dotnet publish src/PortalCT.Web/PortalCT.Web.csproj -c Release -o publish

# Copy
xcopy /E /I publish\* C:\inetpub\wwwroot\PortalCT\

# Permissions
icacls "C:\inetpub\wwwroot\PortalCT" /grant "IIS_IUSRS:(OI)(CI)F" /T

# Restart IIS
iisreset
```

### **Troubleshooting**
```cmd
# Check .NET
dotnet --info

# Check IIS
%windir%\system32\inetsrv\appcmd list apppool
%windir%\system32\inetsrv\appcmd list site

# Restart App Pool
%windir%\system32\inetsrv\appcmd recycle apppool /apppool.name:"PortalCT"
```

## 📁 Estrutura Final

```
C:\inetpub\wwwroot\PortalCT\
├── PortalCT.Web.dll         # ✅ Aplicação
├── web.config               # ✅ Config IIS
├── appsettings.json         # ✅ Configurações
├── wwwroot/                 # ✅ Arquivos estáticos
└── logs/                    # 📝 Logs (criado automaticamente)
```

## 🎯 URLs de Acesso

- **Aplicação**: `http://seu-servidor/`
- **Login**: Qualquer usuário/senha (desenvolvimento)
- **Dashboard**: Após login automático

## 🆘 Problemas Comuns

| Erro | Solução |
|------|---------|
| 500.30 | Instalar .NET 8.0 Hosting Bundle |
| 404 | Verificar pasta e permissões |
| 500.0 | Verificar connection string |
| Acesso negado | Executar comando de permissões |

## 📞 Suporte Rápido

**Erro?** Verificar:
1. Event Viewer → Application
2. Pasta `logs/` da aplicação
3. IIS Manager → Application Pool status

---

**✅ Deploy concluído com sucesso!**