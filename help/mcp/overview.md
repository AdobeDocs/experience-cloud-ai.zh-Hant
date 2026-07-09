---
title: Adobe CX Enterprise MCP伺服器
description: Adobe CX Enterprise MCP伺服器是適用於Adobe CX Enterprise的統一MCP，可讓MCP使用者端透過單一連線連線至支援的產品工具。
source-git-commit: b40034bdc866a2737b909386b79c028793f324cb
workflow-type: tm+mt
source-wordcount: '449'
ht-degree: 4%

---

# Adobe CX Enterprise MCP伺服器 {#mcp-overview}

Adobe CX Enterprise MCP伺服器是適用於Adobe CX Enterprise的統一模型內容通訊協定(MCP)。 只要連線一次，MCP相容的使用者端就能存取貴組織和帳戶有權使用的Adobe產品工具。

>[!IMPORTANT]
>
>您必須先啟用Adobe組織，才能使用CX Enterprise MCP工具。 如果貴組織尚未擁有存取權，請聯絡您的Adobe帳戶團隊，以要求啟用貴組織。

使用所有MCP使用者端設定的CX Enterprise端點：

```
https://cx-enterprise.adobe.io/mcp
```

連線之後，端點會公開您的Adobe組織和憑證可用的工具。 本指南中的產品特定頁面說明每個產品工具的功能、可存取的資料以及任何產品特定限制。

## 什麼是模型內容通訊協定？ {#mcp-what-is}

MCP (Model Context Protocol)是一種開放原始碼標準，用於將AI應用程式連線到外部系統。 與MCP相容的使用者端（例如[!DNL Claude]、[!DNL ChatGPT]、[!DNL Cursor]、[!DNL Claude Code]、[!DNL Codex]和[!DNL VS Code]）可以使用這些工具來擷取產品內容、執行支援的作業，並以自然語言傳回答案。

CX Enterprise提供CX Enterprise產品工具的控管端點。 與其新增個別的產品伺服器，只需連線至端點並使用為您的授權解決方案浮現的產品工具。

## 可用的產品工具 {#available-product-tools}

本指南記錄下列產品工具：


| 產品工具 | 透過端點公開的內容 | 可用性 | 文件 |
| ------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------ | ------------ | -------------------------------------------------------------------------------------------------------------------------------------------- |
| **Real-Time CDP** | 受眾、目的地、來源、身分名稱空間和啟用健康狀態（唯讀） | Beta 版 | [Real-Time CDP工具](rtcdp-mcp.md) |
| **Experience Platform** | 結構描述、資料集、資料控管、查詢服務和稽核事件（唯讀） | Beta 版 | [Experience Platform工具](aep-mcp.md) |
| **Journey Optimizer** | 行銷活動和管道設定（唯讀） | Beta 版 | [Journey Optimizer工具](ajo-mcp.md) |
| **Customer Journey Analytics** | 資料檢視、維度、量度、報表、區段、日期範圍、專案和對象（讀取和寫入） | 可用 | [Customer Journey Analytics工具](cja-mcp.md) |
| **Adobe Analytics** | 報表套裝、維度、量度、報表、區段、日期範圍和Workspace專案（可讀取和寫入支援的元件） | 可用 | [Adobe Analytics工具](analytics-mcp.md) |
| **Workfront** | 專案、任務和核准工作流程的工作管理工具 | 預覽 | [Workfront MCP伺服器](https://experienceleague.adobe.com/en/docs/workfront/using/basics/workfront-mcp-server/workfront-mcp-server-overview) |


>[!NOTE]
>
>工具可用性取決於您的產品授權、組織啟用、產品許可權以及用於驗證的Adobe憑證。 MCP只會顯示您的組織和使用者帳戶有權存取的工具。 請參閱[存取CX Enterprise MCP工具](access.md)。



## 開始使用 {#mcp-get-started}

1. 檢閱[存取CX Enterprise MCP工具](access.md)以確認產品可用性、啟用和許可權。
2. 請依照[安裝CX Enterprise MCP適用的Adobe](install.md)，將您的MCP使用者端連線至端點。
3. 檢閱您計畫使用的每個產品工具的產品頁面。

