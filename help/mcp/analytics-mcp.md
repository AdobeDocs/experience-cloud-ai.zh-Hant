---
title: Adobe CX Enterprise MCP中的Adobe Analytics工具
description: 透過Adobe CX Enterprise MCP瞭解哪些Adobe Analytics工具可供使用。
source-git-commit: df05761a8555950366fcaa201ce9c0fd47bb0802
workflow-type: tm+mt
source-wordcount: '447'
ht-degree: 4%

---

# Adobe CX Enterprise MCP中的Adobe Analytics工具 {#aa-mcp}

您可以使用Adobe Analytics工具從MCP相容的使用者端探索報表套裝、探索維度和量度、執行報表，以及管理選取的分析元件。 當您的帳戶具有必要的Adobe Analytics授權和許可權時，便可以透過統一的[Adobe CX Enterprise MCP](overview.md)取得這些工具。

>[!AVAILABILITY]
>
>擁有Adobe Analytics授權的客戶可使用Analytics工具。 存取權是由Adobe Admin Console中的&#x200B;**MCP存取**&#x200B;許可權所控制。 如需詳細資訊，請閱讀[Access CX Enterprise MCP工具](access.md)。

## 主要功能 {#mcp-capabilities}

Adobe Analytics工具支援MCP使用者端的Analytics探索和報告工作流程。 您可以：

- 探索報表套裝並檢查其設定方式。
- 尋找維度、量度、計算量度、區段、日期範圍和工作區專案。
- 使用維度、量度、日期範圍和區段篩選器執行排名和趨勢報表。
- 建立和更新選取的可重複使用元件，例如區段和日期範圍。
- 使用自然語言從Adobe Analytics資料產生深入分析。

>[!IMPORTANT]
>
>有些Adobe Analytics工具可以建立或更新分析元件。 在依賴變更之前，請先檢閱及驗證所有MCP啟動的變更。

## 工具涵蓋範圍 {#mcp-tools}

| 區域圖 | 您可以做什麼 |
| --- | --- |
| 報表套裝 | 探索您帳戶可用的報表套裝，並檢查設定詳細資料。 |
| 元件 | 尋找並描述維度、量度、計算量度、區段和日期範圍。 |
| 報表 | 使用選取的維度、量度、日期範圍和區段篩選器，執行排名和趨勢報表。 |
| 區段和日期範圍 | 建立並更新您的產品許可權允許的可重複使用區段和日期範圍。 |
| Workspace專案 | 探索並說明Analysis Workspace專案。 |

如需完整的目前工具清單，請參閱[Adobe Analytics MCP工具參考](https://developer.adobe.com/analytics-mcp/docs/aa/reference){target="_blank"}。

## 提示範例 {#mcp-use-cases}

| 目標 | 範例提示 |
| --- | --- |
| 探索報表套裝 | 「列出我可以存取的報告套裝。」 |
| 尋找元件 | 「尋找與收入相關的量度。」 |
| 執行報告 | 「執行過去7天各頁面檢視次數的排名報表。」 |
| 檢查區段 | 「說明區段`[segment name]`並顯示其定義。」 |
| 探索專案 | 「列出與贏取相關的Analysis Workspace專案。」 |

## 產品內容和許可權 {#mcp-context}

您的帳戶必須屬於Adobe Analytics產品設定檔，其中包含&#x200B;**MCP存取**&#x200B;許可權專案，由Adobe Admin Console的系統或產品管理員授予。

產品許可權仍適用。 您的帳戶必須能夠檢視您查詢的報表套裝、元件、報表和專案，並且必須有適當的產品許可權來執行寫入作業，例如建立或更新可重複使用的元件。

## 詳細資訊 {#mcp-more}

如需完整的工具參考和快速入門手冊，請參閱[Adobe Analytics MCP檔案](https://developer.adobe.com/analytics-mcp/docs/aa/){target="_blank"}。