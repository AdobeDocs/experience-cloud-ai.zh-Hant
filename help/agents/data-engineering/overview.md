---
title: Data Engineering Agent
description: 瞭解如何使用Data Engineering Agent。
hide: true
hidefromtoc: true
source-git-commit: 12c61f88b358fc8c357ec4fa373493d6b70d5a06
workflow-type: tm+mt
source-wordcount: '333'
ht-degree: 1%

---

# Data Engineering Agent

&lt;! — 這是草稿 — >

Data Engineering Agent是Agent Orchestrator支援的AI Copilot，適用於Adobe Experience Platform中的資料團隊。 此代理程式旨在處理端對端資料生命週期中的繁重工作：資料模型製作、上線、SQL資料準備、控管和生命週期管理。 有了Data Engineering Agent，工程師和架構師可以更快行動，提高資料品質，減少手動工作。

Data Engineering Agent將各項技能整合在一起，讓您善加利用最佳化工作流程。

| Data Engineering Agent技能 | 說明 |
| --- | --- |
| 資料上線 | <strong>資料上線</strong>支援批次來源，例如S3、Marketo和資料登陸區域(DLZ)。 其功能包括： <ul><li>連線至各種資料來源，包括S3、Data Landing Zone、Marketo等。</li><li>設定來源資料（例如不同的值、空值、重複專案及基本品品質度）。</li><li>將來源欄位對齊標準XDM欄位群組和自訂欄位。</li><li>建議及建立資料擷取資料流程(例如，將資料從S3或Marketo移入RTCDP/CJA資料集)。</li></ul> |
| 自動化資料品質和語意擴充 | <ul><li>執行全面的資料品質評估，包括識別異常及報告有效/無效的記錄計數。</li><li>建議資料品質改善，例如型別標準化、貨幣格式化和重複資料刪除。</li><li>根據資料取樣和智慧型命名模式識別，將語意擴充套用至結構描述。</li><li>讓使用者確認建議的擴充功能，確保資料變更完成並核准。</li></ul> |
| 資料蒸餾器 | |
| 資料彙集 | |
| 資料驗證 | |

透過Data Engineering Agent，您可以確保：

- **更快上線**：將時間從數週的手動結構描述對應和管道設定縮短至數小時的引導式、對話式設定。
- **更高的資料品質**：由於內建的資料品質分析和語意檢查，無效記錄和生產事件較少。
- **已改善治理和法規遵循**：治理原則是在設計時附加的（標籤、TTL、身分處理），而非事後考量。
- **更有效率的資料團隊**：重複的SQL/資料流工作已自動化，因此工程師將重點放在更高價值的設計和最佳化上。
- **更廣的自助服務**：非專家利害關係人可以安全地使用護欄自助處理常見的資料準備工作。