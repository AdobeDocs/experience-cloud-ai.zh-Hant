---
title: Adobe CX Enterprise MCP中的Customer Journey Analytics工具
description: 透過Adobe CX Enterprise MCP瞭解哪些Adobe Customer Journey Analytics工具可供使用。
source-git-commit: 6c73b4d2e452a82597565d71279df2dba605a977
workflow-type: tm+mt
source-wordcount: '674'
ht-degree: 3%

---


# Adobe CX Enterprise MCP中的Customer Journey Analytics工具 {#cja-mcp}

使用Customer Journey Analytics產品工具，從相容於MCP的使用者端探索資料檢視、探索維度和量度、執行報表，以及管理選取的分析元件。 當您的帳戶擁有必要的Customer Journey Analytics授權和許可權時，即可透過[CX Enterprise MCP](overview.md)取得這些工具。

>[!AVAILABILITY]
>
>擁有Customer Journey Analytics授權的客戶可使用Customer Journey Analytics工具。 存取權是由Adobe Admin Console中的&#x200B;**MCP存取**&#x200B;許可權所控制。 請參閱[存取CX Enterprise MCP工具](access.md)。

## 主要功能 {#mcp-capabilities}

Customer Journey Analytics工具支援從MCP使用者端控管的分析工作流程。 您可以：

* 探索資料檢視並檢查其設定方式。
* 尋找維度、量度、計算量度、區段、日期範圍、對象和專案。
* 使用維度、量度、日期範圍和區段篩選器執行排名和趨勢報表。
* 檢查元件定義和元件使用情形。
* 建立或更新所選的Analytics元件和工作區專案。

>[!IMPORTANT]
>
>不同於唯讀[Real-Time CDP](rtcdp-mcp.md)、[Experience Platform](aep-mcp.md)和[Journey Optimizer](ajo-mcp.md)產品工具，Customer Journey Analytics工具包含寫入作業。 他們可以建立和更新區段、計算量度、日期範圍、專案和對象。 在依賴變更之前，請先檢閱及驗證所有MCP啟動的變更。

## 可用的工具 {#mcp-tools}

| 區域圖 | 工具 | 說明 |
| --- | --- | --- |
| 設定與指南 | `describeCja` | 傳回工具、維度、量度、區段、計算量度和專案結構的參考指南。 |
| 設定與指南 | `setDefaultSessionDataViewId` | 設定後續工具呼叫的工作階段層級預設資料檢視。 |
| 探索 | `findDimensions` | 尋找可用的維度，並支援語意搜尋。 |
| 探索 | `findMetrics` | 探索標準和自訂量度（不包括計算量度）。 |
| 探索 | `findCalculatedMetrics` | 瀏覽使用者建立和共用的計算量度。 |
| 探索 | `findSegments` | 列出目前使用者可存取的區段。 |
| 探索 | `findDateRanges` | 擷取已儲存的日期範圍元件。 |
| 探索 | `findDataViews` | 探索可用的資料檢視。 |
| 探索 | `findProjects` | 尋找工作區專案。 |
| 探索 | `findAudiences` | 列出可用的對象元件。 |
| 報告與分析 | `runReport` | 執行含有維度、量度、日期範圍和選用區段篩選器的排名報表。 |
| 報告與分析 | `searchDimensionItems` | 擷取劃分報表所需的維度值。 |
| 元件詳細資料 | `describeDimension` | 顯示特定維度的詳細中繼資料。 |
| 元件詳細資料 | `describeMetric` | 傳回量度中繼資料和測量詳細資訊。 |
| 元件詳細資料 | `describeSegment` | 顯示區段的定義和相容性資訊。 |
| 元件詳細資料 | `describeCalculatedMetric` | 顯示使用的公式和基本量度。 |
| 元件詳細資料 | `describeProject` | 詳細說明工作區專案的設定。 |
| 元件詳細資料 | `describeAudience` | 傳回對象中繼資料和發佈狀態。 |
| 元件使用狀況 | `listComponentUsage` | 依使用頻率將元件排名。 |
| 元件使用狀況 | `listFrequentlyUsedWith` | 識別通常配對在一起的元件。 |
| 元件使用狀況 | `listSimilarTo` | 尋找用途相似的替代元件。 |
| 建立和更新 | `upsertSegment` | 建立新區段或修改現有區段。 |
| 建立和更新 | `upsertCalculatedMetric` | 建立新的計算量度或修改現有的計算量度。 |
| 建立和更新 | `createDateRange` | 建立可重複使用的日期範圍元件。 |
| 建立和更新 | `upsertProject` | 建立新的Workspace專案或修改現有的專案。 |
| 建立和更新 | `upsertAudience` | 建立新的對象定義或修改現有的對象定義。 |

## 提示範例 {#mcp-use-cases}

| 目標 | 範例提示 |
| --- | --- |
| 列出資料檢視 | 「列出Customer Journey Analytics中可供我使用的資料檢視。」 |
| 探索元件 | 「在資料檢視`[data view name]`中尋找與收入相關的量度。」 |
| 執行報告 | 「依月份執行上一季的趨勢訂單報表。」 |
| 劃分量度 | 「依造訪次數顯示前10個行銷管道，並依裝置型別劃分。」 |
| 檢查元件 | 「說明區段`[segment name]`並顯示其定義。」 |
| 稽核使用情況 | 「我的專案最常使用哪些維度？」 |
| 建立區段 | 「為過去30天內檢視定價頁面的使用者建立區段。」 |

## 產品內容和許可權 {#mcp-context}

您的帳戶必須屬於Customer Journey Analytics產品設定檔，其中包含&#x200B;**MCP存取**&#x200B;許可權專案，由Adobe Admin Console的系統或產品管理員授予。

產品許可權仍適用。 您的帳戶必須能夠檢視您查詢的資料檢視、元件、專案和對象，且必須具有適當的產品許可權以進行寫入操作，例如建立或更新區段、計算量度、日期範圍、專案或對象。

## 觀看實際運作 {#mcp-videos}

**概觀**

>[!VIDEO](https://video.tv.adobe.com/v/3486313/?learn=on&enablevpops)

**正在執行動作**

>[!VIDEO](https://video.tv.adobe.com/v/3486314/?learn=on&enablevpops)

## 詳細資訊 {#mcp-more}

如需完整的工具參考和快速入門手冊，請參閱[Customer Journey Analytics MCP檔案](https://developer.adobe.com/analytics-mcp/docs/cja/){target="_blank"}。