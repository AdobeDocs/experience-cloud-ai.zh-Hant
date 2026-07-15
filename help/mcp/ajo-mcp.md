---
title: CX Co-worker Gateway中的Adobe Journey Optimizer工具
description: 透過CX Co-worker Gateway瞭解哪些Adobe Journey Optimizer工具可供使用。
source-git-commit: adb72f43865bee5b2b151a5a75994c5f3939c2d9
workflow-type: tm+mt
source-wordcount: '534'
ht-degree: 3%

---

# CX Co-worker Gateway中的Adobe Journey Optimizer工具 {#ajo-mcp}

使用Adobe Journey Optimizer產品工具，從相容於MCP的使用者端檢查行銷活動和管道設定。 當您的組織已啟用，且您的使用者帳戶擁有必要的Journey Optimizer許可權時，這些工具可透過[CX Co-worker Gateway](overview.md)取得。

>[!AVAILABILITY]
>
>Journey Optimizer產品工具位於Beta中。 存取許可權僅限透過邀請，且需要Adobe組織啟用。 請參閱[存取CX Co-worker Gateway工具](access.md)。

## 主要功能 {#mcp-capabilities}

Journey Optimizer工具提供唯讀介面，供行銷活動和管道設定稽核使用。 您可以：

- 列出Journey Optimizer促銷活動並按狀態篩選。
- 擷取行銷活動詳細資料，包括目標定位、排程、頻道和內容設定中繼資料。
- 列出電子郵件、簡訊、推播和WhatsApp頻道的頻道設定。
- 檢閱自然語言的行銷活動和管道設定，無需導覽產品畫面。

>[!IMPORTANT]
>
>目前Beta中的所有Journey Optimizer工具均為唯讀。 不支援建立、更新、刪除、啟動、停止或發佈行銷活動。

## 可用的工具 {#mcp-tools}

| 工具 | 說明 |
| --- | --- |
| `ajo_campaign_list` | 瀏覽Journey Optimizer行銷活動。 支援依狀態篩選，例如`DRAFT`、`LIVE`、`STOPPED`和`COMPLETED`。 |
| `ajo_campaign_get` | 依ID擷取特定行銷活動的詳細資料和設定，包括對象鎖定目標、排程、頻道和內容設定中繼資料。 |
| `ajo_channel_configuration_list`, `ajo_channel_configuration_get` | 檢視電子郵件、簡訊、推播或[!DNL WhatsApp]管道的表面預設集和品牌設定。 |

## 提示範例 {#mcp-use-cases}

| 目標 | 範例提示 |
| --- | --- |
| Campaign 概觀 | 「顯示我的所有Journey Optimizer行銷活動。」 |
| 狀態稽核 | 「哪些行銷活動目前處於上線狀態？」 |
| 行銷活動詳細資料 | 「取得行銷活動`[campaign ID]`的完整詳細資料。」 |
| 對象和鎖定 | 「行銷活動`[campaign ID]`鎖定了哪些對象？」 |
| 時程表和時間 | 「行銷活動`[campaign ID]`排定何時執行？」 |
| 疑難排解 | 「檢閱行銷活動`[campaign ID]`的設定，並標示可能的問題。」 |
| 管道設定 | 「有哪些電子郵件通道設定可用？」 |
| 管道稽核 | 「哪些管道設定遺漏或不完整？」 |

## 產品內容和許可權 {#mcp-context}

您的使用者帳戶必須有權檢視您查詢的Journey Optimizer行銷活動和管道設定。 MCP不會略過產品許可權。

如果您的組織使用多個沙箱，請在您需要特定沙箱的結果時，在提示中指定沙箱或環境內容。

## 已知限制 {#mcp-limitations}

| 限制 | 說明 | 因應措施 |
| --- | --- | --- |
| 唯讀表面 | Journey Optimizer工具只會公開擷取操作。 您無法建立、更新、刪除、開始、停止或發佈行銷活動。 | 使用Journey Optimizer UI或API進行寫入操作。 |
| 無參與或績效量度 | 工具不會傳回曝光數、點進率、轉換或傳遞統計資料等報表資料。 | 使用Journey Optimizer報表、Customer Journey Analytics工具或Adobe Analytics工具來瞭解績效量度。 |
| 行銷活動清單分頁受到限制 | 行銷活動清單會傳回結果的第一頁，最多達50個行銷活動會依字母順序排序。 未套用位移和限制值。 | 如果行銷活動ID已知，請直接使用`Get Campaign`。 使用Journey Optimizer UI進行完整的瀏覽和篩選。 |
| 無依據日期、頻道或排程的伺服器端篩選 | 行銷活動清單支援狀態篩選，但不支援發佈日期、排程日期、管道或行銷活動型別篩選。 | 使用Journey Optimizer UI行銷活動清單進行原生日期和管道篩選。 |
| 訊息內容擷取無法使用 | 訊息HTML、主旨列、個人化代號和選件內容無法透過目前工具使用。 | 直接在Journey Optimizer UI中檢視訊息內容及個人化。 |