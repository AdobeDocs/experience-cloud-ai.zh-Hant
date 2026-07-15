---
title: CX Co-worker Gateway中的工作階段內容工具
description: 瞭解為核心工具設定所有CX Co-worker Gateway工具呼叫的組織、沙箱和資料檢視內容。
source-git-commit: adb72f43865bee5b2b151a5a75994c5f3939c2d9
workflow-type: tm+mt
source-wordcount: '656'
ht-degree: 0%

---

# Adobe CX Co-worker Gateway中的工作階段內容工具 {#mcp-core}

Adobe CX Co-worker Gateway包含一組工作階段內容工具，可建立Adobe組織、Adobe Experience Platform沙箱和Customer Journey Analytics資料檢視，以供所有其他產品工具在其中運作。 不需要額外的授權或啟用 — 這些工具在連線至[CX Co-worker Gateway伺服器](overview.md)後，可供所有已驗證的使用者使用。

## 上下文的運作方式 {#mcp-core-how}

CX Co-worker Gateway會針對每個工具呼叫定義一個作用中Adobe組織的範圍。 除此之外，內容需求取決於產品：

- **Experience Platform產品** — [Real-Time CDP](rtcdp-mcp.md)、[Experience Platform](aep-mcp.md)和[Journey Optimizer](ajo-mcp.md)工具會在Experience Platform沙箱中運作。 與`core-set_sandbox`的每個工作階段設定一次沙箱；這三個工作階段都會共用沙箱。
- **其他產品** — 未在Experience Platform上建置的產品不使用沙箱內容。 例如，[Customer Journey Analytics](cja-mcp.md)工具針對資料檢視進行解析，而[Adobe Analytics](analytics-mcp.md)工具針對報表套裝進行解析。

在工作階段開始時設定一次內容 — 個別產品工具在工作階段中不會切換組織、沙箱或資料檢視。

## 可用的工具 {#mcp-core-tools}

| 工具 | 說明 |
| --- | --- |
| `core-list_orgs` | 列出已驗證身分的使用者可存取的Adobe組織。 傳回每個組織的顯示名稱和`@AdobeOrg`識別碼。 在呼叫`core-switch_org`之前，使用此項來查詢組織ID。 |
| `core-switch_org` | 設定作業階段的作用中Adobe組織。 所有後續的工具呼叫都會限定此組織的範圍，直到工作階段結束或組織再次切換為止。 |
| `core-list_sandboxes` | 列出作用中組織中可用的Experience Platform沙箱。 傳回每個沙箱的名稱、標題、型別（生產或開發）和狀態。 在呼叫`core-set_sandbox`之前，使用此項來查詢沙箱名稱。 |
| `core-set_sandbox` | 設定工作階段的作用中Experience Platform沙箱。 Real-Time CDP、Experience Platform和Journey Optimizer工具會將它們的資料範圍限定在此沙箱。 |
| `core-list_dataviews` | 列出目前內容中已驗證身分的使用者可用的Customer Journey Analytics資料檢視。 傳回資料檢視ID和顯示名稱。 在呼叫`core-set_dataview`之前，使用此項來查詢資料檢視。 |
| `core-set_dataview` | 設定工作階段的預設Customer Journey Analytics資料檢視。 設定後，需要資料檢視的CJA工具（例如`findDimensions`、`findMetrics`和`runReport`）會自動使用此值，除非在個別工具呼叫中指定了不同的資料檢視。 |

## 一般工作階段設定 {#mcp-core-setup}

在叫用產品工具之前，先在工作階段開始時設定內容：

1. **組織** — 呼叫`core-list_orgs`以列出可存取的組織，然後使用目標組織ID `core-switch_org`。
2. **沙箱** — 如果您打算使用Real-Time CDP、Experience Platform或Journey Optimizer工具，請呼叫`core-list_sandboxes`以列出可用的沙箱，然後使用目標沙箱名稱`core-set_sandbox`。
3. **資料檢視** （僅限CJA） — 如果您打算使用Customer Journey Analytics工具，請呼叫`core-list_dataviews`以列出可用的資料檢視，然後使用您選擇的資料檢視`core-set_dataview`。

您可以要求MCP使用者端以單一自然語言要求完成此設定：

> 「針對此工作階段使用組織`1234ABCD@AdobeOrg`、沙箱`prod`和資料檢視`My Company — Global`。」

使用者端會呼叫適當的工具，並在設定內容後確認。

>[!TIP]
>
>如果您的Adobe認證僅屬於一個組織，`core-list_orgs`和`core-switch_org`仍可運作，但無論如何有效組織將相同。 如果您打算使用Real-Time CDP、Experience Platform或Journey Optimizer工具，仍需呼叫`core-set_sandbox`；如果您打算使用Customer Journey Analytics工具，則需呼叫`core-set_dataview`。

## 提示範例 {#mcp-core-examples}

| 目標 | 範例提示 |
| --- | --- |
| 探索可用的組織 | 「我可以存取哪些Adobe組織？」 |
| 設定組織內容 | 「切換到組織`My Org (1234ABCD@AdobeOrg)`。」 |
| 探索可用的沙箱 | 「列出目前組織中可用的沙箱。」 |
| 設定沙箱內容 | 「針對此工作階段使用`prod`沙箱。」 |
| 探索可用的資料檢視 | 「我可以存取哪些Customer Journey Analytics資料檢視？」 |
| 設定資料檢視內容 | 「將`My Company — Global`設為預設資料檢視。」 |
| 完整工作階段設定 | 「使用組織`1234ABCD@AdobeOrg`、沙箱`prod`和資料檢視`My Company — Global`設定工作階段。」 |

## 相關頁面 {#mcp-core-related}

- [安裝Adobe CX Co-worker閘道](install.md) — 如何連線您的MCP使用者端，包括產品內容設定區段。
- [存取CX Co-worker Gateway工具](access.md) — 存取需求（依產品而定）。