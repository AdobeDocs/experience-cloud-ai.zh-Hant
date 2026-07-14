---
title: 存取CX Co-worker Gateway工具
description: 使用Adobe CX Co-worker Gateway工具之前，請確認產品可用性、組織啟用和許可權。
source-git-commit: 9f654bc1f7282cad51ef54b86167dbea1757364a
workflow-type: tm+mt
source-wordcount: '556'
ht-degree: 3%

---

# 存取CX Co-worker Gateway工具 {#mcp-access}

Adobe CX Enterprise透過單一MCP公開產品工具。 存取權由產品工具評估：您的Adobe組織必須針對相關產品工具啟用，並且您的使用者帳戶必須具有檢視或變更這些工具公開的產品資料所需的產品許可權。

>[!IMPORTANT]
>
>您必須先啟用Adobe組織，才能使用CX Co-worker Gateway工具。 如果貴組織尚未擁有存取權，請聯絡您的Adobe帳戶團隊，以要求啟用貴組織。

## 存取需求 {#mcp-requirements}


| 產品工具 | 可用性 | 存取需求 |
| --- | --- | --- |
| Real-Time CDP | Beta 版 | 有效的Real-Time CDP授權、Adobe組織的Beta啟用，以及檢視您查詢的對象、目的地、來源、身分和啟用資源的許可權。 |
| Experience Platform | Beta 版 | 有效的Experience Platform授權、Adobe組織的Beta啟用，以及檢視您查詢的結構描述、資料集、治理、查詢服務、稽核和沙箱資源的許可權。 |
| Journey Optimizer | Beta 版 | 有效的Journey Optimizer授權、Adobe組織的Beta啟用，以及檢視行銷活動和管道設定的許可權。 |
| Customer Journey Analytics | 可用 | 有效的Customer Journey Analytics授權和產品設定檔，其中包含Adobe Admin Console中的&#x200B;**MCP存取**&#x200B;許可權專案。 產品許可權仍會控管您可存取或修改的資料檢視、元件、報告、專案和對象。 |
| Adobe Analytics | 可用 | 有效的Adobe Analytics授權和產品設定檔，其中包含Adobe Admin Console中的&#x200B;**MCP存取**&#x200B;許可權專案。 產品許可權仍會控管您可存取或修改的報表套裝、元件、報表、區段、日期範圍和專案。 |
| Workfront | 預覽 | 作用中Workfront授權和Workfront MCP啟用。 請參閱[Workfront MCP檔案](https://experienceleague.adobe.com/en/docs/workfront/using/basics/workfront-mcp-server/workfront-mcp-server-overview)。 |


>[!NOTE]
>
>MCP只會顯示您的組織和認證有權使用的工具。 如果您登入後遺失產品工具，請確認產品授權、組織啟用及使用者許可權。

## 要求存取權 {#mcp-request}

如需Beta或限量版產品工具的相關資訊，請聯絡您的Adobe客戶代表，並指定要使用哪些Adobe for CX Co-worker Gateway產品工具。 您的代表可協調產品啟用，並在您的Adobe組織準備好時確認。

對於使用&#x200B;**MCP存取**&#x200B;許可權專案的通用產品工具，請要求系統或產品管理員將您的帳戶新增至包含MCP存取權的產品設定檔。

## 產品內啟用 {#mcp-product-enablement}

除了MCP存取權，部分產品還需要產品內啟用或產品特定許可權。 例如:

- Adobe Analytics和Customer Journey Analytics需要Adobe Admin Console中的&#x200B;**MCP存取**&#x200B;許可權專案。
- Workfront MCP工具可從Workfront設定啟用。
- Beta產品工具需要先啟用Adobe組織，工具才能透過MCP顯示。

請檢視產品頁面，瞭解您計畫用於產品特定許可權、內容需求和限制的產品工具。

## 安裝之前 {#mcp-prerequisites}

在連線您的MCP使用者端之前，請確認：

- 您的Adobe組織已啟用所需的產品工具。
- 您的使用者帳戶具有您計畫使用之資料和作業所需的產品許可權。
- 您可以存取支援的MCP使用者端，例如[!DNL Claude]、[!DNL ChatGPT]、[!DNL Cursor]、[!DNL Claude Code]、[!DNL Codex]或[!DNL VS Code]。
- 針對企業安裝，您或同事可以在MCP使用者端的組織設定中管理聯結器或自訂應用程式。

下一步： [安裝Adobe CX Co-worker閘道](install.md)。