---
title: 安裝Adobe CX Enterprise MCP
description: 瞭解如何將MCP相容的使用者端連線到Adobe CX Enterprise MCP。
source-git-commit: 6c73b4d2e452a82597565d71279df2dba605a977
workflow-type: tm+mt
source-wordcount: '995'
ht-degree: 0%

---

# 安裝Adobe CX Enterprise MCP {#mcp-install}

請閱讀本指南，瞭解如何將MCP相容的使用者端連線至Adobe CX Enterprise。 CX Enterprise對所有已記錄的產品工具使用一個端點：

```
https://cx-enterprise.adobe.io/mcp
```

安裝之前，請確認您的組織和使用者帳戶可存取您所需的產品工具。 請參閱[存取CX Enterprise MCP工具](access.md)。

## 安裝的運作方式 {#mcp-install-how}

CX Enterprise MCP使用遠端HTTP傳輸及瀏覽器式Adobe登入流程。 在每個支援的使用者端中，設定模式都相同：

1. 新增端點URL： `https://cx-enterprise.adobe.io/mcp`。
2. 儲存或啟用連線。
3. 使用者端第一次叫用工具時，請完成瀏覽器式Adobe登入。
4. 如果您的工具需要，請設定工作階段的產品內容 — 所有產品的組織、Experience Platform型工具的沙箱，以及Customer Journey Analytics的資料檢視。 檢視工具呼叫的[產品內容](#mcp-connect-params)。

>[!NOTE]
>
>MCP使用者端設定中不需要任何API金鑰、持有人權杖、使用者端密碼或其他標頭。 首次使用時，會透過Adobe登入流程處理驗證。

## 企業安裝（管理員管理） {#mcp-install-enterprise}

大多數的團隊和企業MCP使用者端計畫都需要管理員為組織新增自訂聯結器。 在這些環境中，安裝有兩個步驟：

1. 管理員會為組織新增一次CX Enterprise端點。
2. 每位使用者都會啟用聯結器，並使用自己的Adobe憑證登入。

### 步驟1：管理員新增端點 {#mcp-install-enterprise-admin}

管理員在使用者端的組織設定中新增`https://cx-enterprise.adobe.io/mcp`作為自訂聯結器或遠端MCP伺服器。 確切位置取決於使用者端。

#### Claude團隊與企業 {#mcp-install-enterprise-claude}

在[!DNL Claude]團隊和企業計畫中，組織層級聯結器是由工作區&#x200B;**所有者**&#x200B;或&#x200B;**主要所有者**&#x200B;所管理。

1. 以&#x200B;**所有者**&#x200B;或&#x200B;**主要所有者**&#x200B;的身分登入[!DNL Claude]。
2. 移至&#x200B;**設定** > **管理** > **聯結器**。 在某些計畫上，這會顯示為&#x200B;**組織設定** > **聯結器**。
3. 選取&#x200B;**新增自訂聯結器**。
4. 輸入`https://cx-enterprise.adobe.io/mcp`做為伺服器URL，並使用可辨識的名稱，例如「CX Enterprise適用的Adobe」。
5. 儲存聯結器。

#### ChatGPT團隊和企業 {#mcp-install-enterprise-chatgpt}

在[!DNL ChatGPT] Team與Enterprise工作區中，聯結器是由工作區管理員新增的。

1. 以工作區管理員身分登入[!DNL ChatGPT]。
2. 移至&#x200B;**設定** > **聯結器**。 在某些計畫中，這會顯示為&#x200B;**設定** > **應用程式和聯結器**。
3. 選取&#x200B;**新增聯結器**。
4. 輸入`https://cx-enterprise.adobe.io/mcp`做為伺服器URL。
5. 儲存聯結器。 根據您的工作區組態，此步驟可能需要啟用開發人員模式或授與工作區層級的核准。

#### 其他組織管理的使用者端 {#mcp-install-enterprise-other}

對於支援組織管理的遠端聯結器的其他使用者端，請使用`https://cx-enterprise.adobe.io/mcp`將CX Enterprise新增為遠端HTTP MCP伺服器。 除非您的使用者端需要預留位置值，否則將選填標頭、持有人權杖欄位、使用者端ID欄位及使用者端密碼欄位保留空白。

### 步驟2：使用者啟用聯結器 {#mcp-install-enterprise-user}

管理員新增CX Enterprise後，每位使用者都會為自己的帳戶啟用：

1. 在使用者端中開啟個人聯結器、應用程式或MCP設定。
2. 找到CX Enterprise聯結器並加以啟用。
3. 開始對話、叫用其中一個Adobe工具，然後在提示時完成瀏覽器式Adobe登入。
4. 如果您的工具需要，請設定工作階段的產品內容 — 所有產品的組織、Experience Platform型工具的沙箱，以及Customer Journey Analytics的資料檢視。 檢視工具呼叫的[產品內容](#mcp-connect-params)。

當管理員已新增組織的聯結器時，使用者不需要輸入URL本身。

## 個別安裝（自助服務） {#mcp-install-individual}

如果您使用個別計畫、本機設定的開發人員使用者端，或允許成員新增自己聯結器的組織，請直接在您自己的使用者端設定中新增端點。

### 克勞德個人 {#mcp-install-individual-claude}

針對個別計畫上的`claude.ai`和[!DNL Claude]案頭：

1. 開啟&#x200B;**設定** > **聯結器**。
2. 選取&#x200B;**新增自訂聯結器**。
3. 輸入`https://cx-enterprise.adobe.io/mcp`做為伺服器URL。
4. 儲存並啟用聯結器，然後在第一次使用時完成Adobe登入流程。

### ChatGPT個人 {#mcp-install-individual-chatgpt}

1. 開啟&#x200B;**設定** > **聯結器**。 在某些計畫中，這會顯示為&#x200B;**設定** > **應用程式和聯結器**。
2. 選取&#x200B;**新增聯結器**。
3. 輸入`https://cx-enterprise.adobe.io/mcp`做為伺服器URL。
4. 儲存並啟用聯結器，然後在第一次使用時完成Adobe登入流程。

### 游標 {#mcp-install-individual-cursor}

1. 開啟&#x200B;**設定** > **MCP**。
2. 選取&#x200B;**新增伺服器**。
3. 輸入`https://cx-enterprise.adobe.io/mcp`做為伺服器URL。
4. 選取&#x200B;**連線**&#x200B;並完成Adobe登入流程。

連線後，在Cursor的Composer和Agent模式中，有標題為Adobe for CX Enterprise的工具可供使用。

### 克勞德程式碼 {#mcp-install-individual-claude-code}

從終端機新增端點：

```bash
claude mcp add --transport http cx-enterprise https://cx-enterprise.adobe.io/mcp
```

然後啟動[!DNL Claude Code]並執行：

```text
/mcp
```

選取`cx-enterprise`伺服器並在瀏覽器中完成Adobe登入流程。

### 法典 {#mcp-install-individual-codex}

從終端機新增端點：

```bash
codex mcp add cx-enterprise --url https://cx-enterprise.adobe.io/mcp
```

驗證：

```bash
codex mcp login cx-enterprise
```

驗證設定：

```bash
codex mcp list
```

您也可以直接將端點新增至`~/.codex/config.toml`：

```toml
[mcp_servers.cx-enterprise]
url = "https://cx-enterprise.adobe.io/mcp"
```

### 一般JSON設定 {#mcp-install-individual-json}

對於接受JSON型MCP伺服器設定的使用者端，請根據使用者端支援原生遠端HTTP或需要本機橋接器，使用下列其中一種格式。

**透過`mcp-remote`橋接器**

```json
{
  "mcpServers": {
    "cx-enterprise": {
      "command": "npx",
      "args": [
        "mcp-remote",
        "https://cx-enterprise.adobe.io/mcp"
      ]
    }
  }
}
```

**原生遠端HTTP**

```json
{
  "mcpServers": {
    "cx-enterprise": {
      "url": "https://cx-enterprise.adobe.io/mcp",
      "transport": "http"
    }
  }
}
```

### 其他使用者端 {#mcp-install-individual-other}

對於支援遠端MCP的其他案頭或Web使用者端，請使用`https://cx-enterprise.adobe.io/mcp`將Adobe for CX Enterprise新增為遠端HTTP伺服器。 除非您的使用者端需要預留位置值，否則將選填標頭、持有人權杖欄位、使用者端ID欄位及使用者端密碼欄位保留空白。

## 工具呼叫的產品內容 {#mcp-connect-params}

MCP會定義每個工具呼叫到一個使用中的Adobe組織的範圍。 除此之外，內容需求取決於產品：

- **Experience Platform產品** — Real-Time CDP、Experience Platform和Journey Optimizer工具會在Experience Platform沙箱中運作。 每個工作階段設定沙箱一次；這三個作業都共用。
- **其他產品** — 未在Experience Platform上建置的產品不使用沙箱內容。 Adobe Analytics、Customer Journey Analytics、Workfront、Marketo和Target工具會針對各自的產品資源進行解析，例如Customer Journey Analytics的資料檢視和Adobe Analytics的報表套裝。

在工作階段開始時設定一次內容 — 個別產品工具在工作階段中不會切換組織、沙箱或資料檢視。 如需設定組織、沙箱和資料檢視內容的工具，請參閱[工作階段內容工具](context-tools.md)。

範例：

> 「針對此工作階段使用組織`1234ABCD@AdobeOrg`、沙箱`prod`和資料檢視`My Company — Global`。」

如果您不知道必要的值，請要求您的MCP使用者端列出可用於您的Adobe憑證的組織、沙箱或資料檢視。