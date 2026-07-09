---
title: Real-Time CDP MCP (Beta)
description: 瞭解如何使用MCP伺服器將Adobe Real-Time CDP連線至MCP使用者端。
source-git-commit: 3e8651b12f4769a819ebb49ddca9d6a158f98e6d
workflow-type: tm+mt
source-wordcount: '786'
ht-degree: 3%

---

# CX Enterprise MCP中的Real-Time CDP工具 {#rtcdp-mcp}

您可以使用Real-Time CDP MCP產品工具，從相容於MCP的使用者端檢查對象、目的地、來源、身分名稱空間及啟用健康狀態。 當您的組織已啟用，且您的使用者帳戶擁有必要的Real-Time CDP許可權時，便可以透過統一的[CX Enterprise MCP閘道](overview.md)取得這些工具。

>[!AVAILABILITY]
>
>Real-Time CDP產品工具位於Beta。 存取許可權僅限透過邀請，且需要Adobe組織啟用。 請參閱[存取CX Enterprise MCP工具](access.md)。

## 主要功能 {#mcp-capabilities}

Real-Time CDP工具提供唯讀監視和分類介面。 您可以：

* 列出並檢查對象，包括生命週期狀態、來源及身分名稱空間。
* 檢閱對象評估和匯出工作，以識別最近的失敗。
* 檢查已設定的目的地帳戶、目的地流程及啟動執行歷程記錄。
* 檢查來源聯結器、帳戶、流程以及擷取執行歷程記錄。
* 列出身分名稱空間和合併原則。

>[!IMPORTANT]
>
>目前Beta中的所有Real-Time CDP工具均為唯讀。 不支援建立、更新、啟用或刪除對象、目的地、來源或資料流。

## 可用的工具 {#mcp-tools}

| 區域圖 | 工具 | 說明 |
| --- | --- | --- |
| 客群 | `search_audiences` | 依名稱、實體型別、生命週期狀態、身分名稱空間或來源列出及查詢對象。 |
| 對象 | `preview_audience_membership` | 先預估PQL或SDD區段運算式的大小，再儲存為對象。 |
| 對象 | `inspect_audience_evaluation_jobs` | 擷取區段評估工作記錄以診斷對象重新整理問題或確認最近的評估歷史記錄。 |
| 對象 | `inspect_audience_export_jobs` | 擷取對象匯出工作記錄，以確認匯出已完成或顯示失敗詳細資料。 |
| 目的地 | `search_destination_connectors` | 列出平台中可用的目的地聯結器型別。 |
| 目的地 | `search_destination_accounts` | 列出已驗證的目的地帳戶。 |
| 目的地 | `search_destination_input_connections` | 擷取目的地流程的Experience Platform端輸入。 |
| 目的地 | `search_destination_output_connections` | 擷取目的地流程的外部端點，包括目標路徑、檔案格式和傳遞設定。 |
| 目的地 | `search_destination_flows` | 列出及檢查已設定的目的地啟用流程，包括狀態、對應及排程。 |
| 目的地和來源 | `inspect_flow_runs` | 擷取來源和目的地流程執行歷史記錄，包括狀態、時間、記錄計數和失敗詳細資料。 |
| 來源 | `search_source_connectors` | 列出平台中可用的來源聯結器型別。 |
| 來源 | `search_source_accounts` | 列出已驗證的來源帳戶。 |
| 來源 | `search_source_input_connections` | 擷取來源流程從帳戶提取的內容。 |
| 來源 | `search_source_output_connections` | 擷取來源流程的Experience Platform資料集目的地。 |
| 來源 | `search_source_flows` | 列出並檢查已設定的來源擷取管道，包括狀態、對應和排程。 |
| 身分識別 | `search_identity_namespaces` | 在您的沙箱中列出身分名稱空間定義。 |
| 身分識別 | `search_merge_policies` | 列出控制如何組合即時客戶設定檔的合併原則記錄。 |

## 提示範例 {#mcp-use-cases}

| 目標 | 範例提示 |
| --- | --- |
| 列出對象 | 「在`prod`沙箱中列出我的對象。」 |
| 檢查對象 | 「顯示對象ID `abc123`的詳細資料和生命週期狀態。」 |
| 診斷評估問題 | 「顯示最近的對象評估工作和標幟失敗。」 |
| 檢查匯出工作 | 「列出最近的對象匯出工作，並顯示每個工作的狀態。」 |
| 預估對象規模 | 「在我儲存此PQL運算式之前，先預估其大小： `homeAddress.country = 'US'`。」 |
| 檢閱目的地設定 | 「列出我的目的地啟用流程，並顯示哪些流程已啟用或已停用。」 |
| 調查失敗的啟用回合 | 「顯示流量ID `xyz789`的執行歷程記錄並摘要任何錯誤。」 |
| 檢閱來源擷取 | 「顯示來源流程識別碼`src456`的最近執行歷程記錄，並標示失敗。」 |
| 檢查身分設定 | 「我的沙箱中設定了哪些身分識別名稱空間？」 |

## 權限 {#mcp-context}

您的Adobe組織和沙箱內容在閘道連線層級建立一次，並套用至每個工具系列，因此您不會從Real-Time CDP工具切換組織或沙箱。 若要設定工作階段的內容，請參閱工具呼叫的[產品內容](install.md#mcp-connect-params)。

您的使用者帳戶必須擁有檢視您所查詢Real-Time CDP資源的許可權。 閘道不會略過產品許可權。

## 已知限制 {#mcp-limitations}

| 限制 | 說明 | 因應措施 |
| --- | --- | --- |
| 唯讀表面 | Real-Time CDP工具只會公開擷取API。 您無法建立、更新、啟動或刪除對象、目的地、來源或資料流。 | 使用Real-Time CDP UI或Experience Platform API進行寫入操作。 |
| 無參與或傳遞量度 | 工具不會從目的地平台傳回下游傳遞統計資料、參與或轉換量度。 | 使用目標平台的報表、Customer Journey Analytics工具或Adobe Analytics工具來取得參與和轉換資料。 |
| 區段查詢必須在外部撰寫 | `preview_audience_membership`需要有效的PQL或SDD運算式。 工具不會為您撰寫查詢。 | 在「區段產生器」或「區段服務API」中編寫運算式，然後貼到您的提示字元中。 |
| 透過繼續權杖分頁 | 清單工具會傳回分頁結果。 非常大的沙箱中的完整分項清單需要鏈結接續權杖。 | 使用名稱、狀態、連線規格或時間範圍等篩選條件縮小查詢。 |
| 啟用回合篩選僅以時間為基礎 | 啟動執行檢查支援依狀態和完成時間戳記進行篩選，但無法直接依錯誤型別或目的地平台進行篩選。 | 依`flowId`先篩選，將執行範圍限定到特定目的地流程。 |

