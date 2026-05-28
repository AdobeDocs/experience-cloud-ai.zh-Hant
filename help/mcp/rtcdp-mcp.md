---
solution: Real-Time Customer Data Platform
title: Real-Time CDP MCP (Beta)
description: 瞭解如何使用MCP伺服器將Adobe Real-Time CDP連線至MCP使用者端。
feature: Integrations
topic: Content Management, Artificial Intelligence
badge: label="Beta" type="Informative"
role: User, Developer
level: Beginner, Intermediate
source-git-commit: b2c93fd31bb72ebaf79aaa07aab68d39e63dc9b5
workflow-type: tm+mt
source-wordcount: '2634'
ht-degree: 0%

---

# Real-Time CDP MCP (Beta) {#rtcdp-mcp}

您可以使用Adobe Real-Time CDP MCP整合，以純語言提示來查詢對象、目的地和啟動健康情況，而不需要撰寫API呼叫或導覽產品熒幕。 此整合約時為Adobe Real-Time CDP和Adobe Real-Time CDP B2B edition的客戶提供服務，提供對話式方式，從相容於MCP的使用者端檢查支援的Real-Time CDP資料和工作流程。 請閱讀本指南，瞭解整合如何運作、您可以執行什麼操作，以及如何開始使用。

>[!AVAILABILITY]
>
>Real-Time CDP MCP位於Beta。 功能和檔案可能會有所變更。 Real-Time CDP MCP伺服器是以&#x200B;**遠端HTTP傳輸伺服器**&#x200B;的分發，使用者可在支援的MCP使用者端和應用程式平台（例如，[!DNL Claude]、[!DNL ChatGPT]、[!DNL Claude Code]、[!DNL Codex]、[!DNL Cursor]或[!DNL VS Code]）中安裝和設定。 驗證是透過&#x200B;**瀏覽器式登入流程**&#x200B;來處理 — 當您的使用者端首次連線到伺服器時，它會開啟您的預設瀏覽器，讓您可以使用您的Adobe憑證登入並授權存取。 請聯絡您的Adobe代表以存取此Beta方案。

## Beta、安全性和法律注意事項 {#mcp-notices}

**Beta檔案通知：**&#x200B;此檔案涵蓋Beta功能，不構成最終檔案。 此處描述的內容與Beta版本有關，且在正式發行前可能會有所變更。 Adobe不對本檔案的完整性或準確性發表任何宣告。

藉由使用Adobe Real-Time CDP MCP Server (Beta) (「Beta」)，您在此確認Beta係依&#x200B;**「原樣」提供，並無任何保固**。 Adobe沒有義務維護、更正、更新、變更、修改或以其他方式支援Beta。 建議您謹慎使用，切勿依賴這類Beta及/或隨附資料的正確運作或效能。 Beta視為Adobe的機密資訊。 任何「意見回饋」（有關Beta的資訊，包括但不限於您在使用Beta時遇到的問題或缺陷、建議、改進和建議）會在此指派給Adobe，包括所有權利、標題，以及對此等意見回饋的興趣。

>[!WARNING]
>
>模型內容通訊協定(MCP)是一種新興的開放原始碼標準，可能會帶來安全性或可靠性風險。 Adobe MCP伺服器整合和相關檔案係依「現況」提供，不提供任何形式的保證。
>
>將MCP使用者端或伺服器連線至Adobe產品是客戶選擇的設定。 客戶應負責評估任何MCP整合的安全性和適用性。 Adobe對於因設定錯誤、誤用MCP、協力廠商實作中的漏洞，或透過啟用MCP的工作流程執行的意外動作所引起的問題，概不負責。
>
>為了降低風險，Adobe鼓勵您在有效使用之前在沙箱環境中測試整合，並在確認或依賴之前，仔細檢閱及驗證所有MCP啟動的動作和回應。

## 什麼是模型內容通訊協定？ {#mcp-overview}

行銷、資料和客戶體驗團隊越來越仰賴聊天式應用程式和開發人員工具（例如Anthropic Claude、OpenAI ChatGPT、Cursor和Microsoft Copilot Studio）來簡化日常工作。 這些應用程式支援&#x200B;**模型內容通訊協定(MCP)**，這是開放標準，可讓應用程式以統一的方式將後端工具公開給大型語言模型(LLM)。

Real-Time CDP現在提供MCP伺服器，直接在任何MCP相容應用程式中顯示對象、目的地和啟用作業。 透過Real-Time CDP MCP整合，不同角色可以圍繞相同的細分和啟用資料共同作業，而不需要針對Adobe Experience Platform REST API編寫查詢或導覽多個UI畫面。 客戶可以用對話方式描述他們的意圖，讓LLM叫用適當的MCP工具。

## 主要功能 {#mcp-capabilities}

Real-Time CDP MCP伺服器是&#x200B;**唯讀**&#x200B;監視與分類介面。 它會公開跨對象、目的地、來源、身分和設定檔解析度擷取API，作為AI助理內的簡單語言回答，而不需要撰寫查詢或導覽產品熒幕。 無法透過MCP伺服器建立、修改或刪除任何資料。

>[!IMPORTANT]
>
>目前Beta中的所有工具都是&#x200B;**唯讀**。 不支援寫入操作，包括建立、啟用、更新或刪除對象、目的地或資料流。

Beta版本包含下列18種工具：

| 工具 | 說明 |
| --- | --- |
| `search_audiences` | 依名稱、實體型別、生命週期狀態、身分名稱空間或來源列出及查詢對象。 |
| `preview_audience_membership` | 先預估PQL或SDD區段運算式的大小，再儲存為對象。 |
| `inspect_audience_evaluation_jobs` | 擷取區段評估工作記錄，以診斷批次對象未重新整理的原因或確認最近的評估歷史記錄。 |
| `inspect_audience_export_jobs` | 擷取對象匯出工作記錄，以確認匯出已完成或顯示失敗詳細資料。 |
| `search_destination_connectors` | 列出平台中可用的目的地聯結器型別（例如[!DNL Amazon S3]、[!DNL Google Ads]、[!DNL Salesforce] CRM）。 |
| `search_destination_accounts` | 列出已驗證的目的地帳戶 — 已設定的目的地聯結器型別例項。 |
| `search_destination_input_connections` | 擷取目的地流程的Experience Platform端輸入 — 正在匯出的對象或資料集。 |
| `search_destination_output_connections` | 擷取目的地流程的外部端點 — 目標路徑、檔案格式和傳遞設定。 |
| `search_destination_flows` | 列出及檢查已設定的目的地啟用流程，包括其狀態、對應及排程。 |
| `inspect_flow_runs` | 擷取來源和目的地流程的執行歷史記錄 — 狀態、時間、記錄計數和每次執行的失敗詳細資料。 |
| `search_source_connectors` | 列出平台中可用的來源聯結器型別。 |
| `search_source_accounts` | 列出已驗證的來源帳戶 — 已設定的來源聯結器型別例項。 |
| `search_source_input_connections` | 擷取來源流程的資料選取層 — 從帳戶提取的內容。 |
| `search_source_output_connections` | 擷取來源流程的Experience Platform資料集目的地 — 擷取的資料所在的位置。 |
| `search_source_flows` | 列出並檢查已設定的來源擷取管道，包括其狀態、對應和排程。 |
| `search_identity_namespaces` | 列出沙箱中的身分名稱空間定義 — 包括Adobe標準和自訂名稱空間。 |
| `search_merge_policies` | 列出控制如何從設定檔片段組合即時客戶設定檔的合併原則記錄。 |
| `search_organizations` | 列出已驗證身分的使用者可存取的Adobe組織。 |

## 使用案例 {#mcp-use-cases}

Real-Time CDP MCP伺服器是專為&#x200B;**監視與分級**&#x200B;所設計。 因為伺服器會使用ID而非名稱，所以典型的工作流程會從清單開始 — 詢問Claude以顯示可用的專案、選取您想要的專案，然後使用它傳回的ID提出後續問題。

| 目標 | 範例提示 |
| --- | --- |
| **列出您的對象** | 「在`prod`沙箱中列出我的對象。」 |
| **檢查特定對象** | 「顯示對象ID `abc123`的詳細資料和生命週期狀態。」 |
| **診斷評估失敗** | 「顯示最近的評估工作並標示任何失敗。」 |
| **檢查匯出工作** | 「列出最近的對象匯出工作，並顯示每個工作的狀態。」 |
| **預估對象人數** | 「在我儲存此PQL運算式之前，先預估其大小： `homeAddress.country = 'US'`。」 |
| **列出目的地聯結器型別** | 「我的沙箱中有哪些目的地聯結器型別？」 |
| **列出已設定的目的地帳戶** | 「列出我的目的地帳戶及其連線狀態。」 |
| **列出目的地資料流** | 「列出我的目的地啟用流程，並顯示哪些流程已啟用或已停用。」 |
| **檢查目的地流程** | 「顯示目的地流程識別碼`xyz789`的完整設定。」 |
| **檢查目的地帳戶健康狀況** | 「列出我的目的地帳戶，並標示任何處於錯誤狀態的帳戶。」 |
| **監視最近的啟用執行** | 「顯示過去24小時的資料流執行並標示任何失敗。」 |
| **調查失敗的執行** | 「顯示流量ID `xyz789`的執行歷程記錄並摘要任何錯誤。」 |
| **列出來源流程** | 「列出我的來源擷取流程，並顯示其目前狀態。」 |
| **檢查來源流程** | 「顯示來源流量ID `src456`的設定 — 它會擷取哪些內容，以及會登陸至何處？」 |
| **檢查內嵌回合健康狀態** | 「顯示來源流程識別碼`src456`的最近執行歷程記錄，並標示失敗。」 |
| **列出身分識別名稱空間** | 「我的沙箱中設定了哪些身分識別名稱空間？」 |
| **列出合併原則** | 「列出我的合併原則，並顯示預設值。」 |
| **尋找您的組織ID** | 「列出我有權存取的Adobe組織。」 |

## 存取與啟用 {#mcp-access}

>[!AVAILABILITY]
>
>Real-Time CDP MCP伺服器位於Beta，且未開啟自助註冊。 存取許可權僅限透過邀請，而且您的Adobe組織必須先明確加入允許清單，您才能連線。

若要要求存取權，請執行下列動作：

1. 請聯絡您的Adobe客戶代表（客戶成功經理、技術客戶經理或客戶主管），並表達您對Real-Time CDP MCP Beta計畫的興趣。
2. 您的Adobe代表將與產品團隊協調，評估資格並啟用組織ID。
3. 啟用後，您的Adobe代表將確認存取並提供任何其他入門材料。

>[!NOTE]
>
>只有已明確啟用的組織才能連線至Real-Time CDP MCP伺服器。 嘗試在啟用之前連線將會導致驗證錯誤。

## 先決條件 {#mcp-prerequisites}

在將Real-Time CDP MCP伺服器連線至您的MCP使用者端之前，請確定下列事項：

* 您擁有使用中的Real-Time CDP授權。
* 您的Adobe組織已由Adobe代表為Beta方案啟用（請參閱[存取與啟用](#mcp-access)）。
* 您可以存取支援的MCP使用者端，例如[!DNL Claude]、[!DNL ChatGPT]、[!DNL Claude Code]、[!DNL Codex]、[!DNL Cursor]或[!DNL VS Code]。
* 您有組織ID以及要查詢的沙箱名稱。
* 您在Adobe Experience Platform中擁有檢視對象、目的地和流程服務實體的必要許可權。

## 連線Real-Time CDP MCP伺服器 {#mcp-connect}

Real-Time CDP MCP伺服器端點為：

```
https://rtcdp-mcp.adobe.io/mcp
```

伺服器使用&#x200B;**遠端HTTP （可串流HTTP）傳輸**，以及&#x200B;**瀏覽器式Adobe登入流程**。 在每個使用者端中，設定模式都相同：

1. 新增伺服器URL： `https://rtcdp-mcp.adobe.io/mcp`
2. 儲存或啟用連線。
3. 在使用者端第一次叫用工具時完成&#x200B;**瀏覽器式Adobe登入**。
4. 在每個工作階段開始時提供`imsOrgId`和`sandboxName`。

### 一般JSON設定 {#mcp-connect-json}

對於接受JSON型MCP伺服器設定的使用者端(例如Claude Desktop (`claude_desktop_config.json`)、VS Code或任何讀取`mcp.json`檔案的使用者端)，請根據您的使用者端是否支援原生遠端HTTP或需要本機橋接器，使用下列其中一種格式：

**透過`mcp-remote`橋接器（Claude Desktop和其他需要本機橋接器的使用者端）**

```json
{
  "mcpServers": {
    "rtcdp": {
      "command": "npx",
      "args": [
        "mcp-remote",
        "https://rtcdp-mcp.adobe.io/mcp"
      ]
    }
  }
}
```

**原生遠端HTTP （直接支援的使用者端）**

```json
{
  "mcpServers": {
    "rtcdp": {
      "url": "https://rtcdp-mcp.adobe.io/mcp",
      "transport": "http"
    }
  }
}
```

>[!NOTE]
>
>設定中不需要任何API金鑰、持有人權杖或其他標頭。 第一次使用時，驗證會完全透過瀏覽器式Adobe登入流程進行處理。

### 在UI型使用者端中安裝 {#mcp-connect-ui}

#### 克勞德

對於`claude.ai`和Claude Desktop，請使用伺服器URL `https://rtcdp-mcp.adobe.io/mcp`將Real-Time CDP MCP伺服器新增為&#x200B;**自訂聯結器**。

* **個別計畫** — 在Claude中，瀏覽至&#x200B;**自訂→聯結器**，選取&#x200B;**新增聯結器**，然後輸入伺服器URL。
* **團隊和企業計畫** — 工作區&#x200B;**所有者**&#x200B;或&#x200B;**主要所有者**&#x200B;已在&#x200B;**組織設定→聯結器**&#x200B;下新增聯結器。 新增後，每個使用者都會以自己的Claude設定啟用它。

新增聯結器後，請在交談中啟用聯結器，並在第一次使用時完成Adobe瀏覽器登入。 Claude會自動發現Adobe授權伺服器 — 不需要使用者端ID或使用者端密碼。

#### ChatGPT

在[!DNL ChatGPT]中，將Real-Time CDP MCP伺服器新增為&#x200B;**自訂聯結器**：

1. 瀏覽至&#x200B;**設定→聯結器** （或&#x200B;**設定→應用程式和聯結器**，視您的計畫而定）。
2. 選取&#x200B;**新增聯結器**&#x200B;並輸入`https://rtcdp-mcp.adobe.io/mcp`做為伺服器URL。
3. 儲存聯結器。 根據您的[!DNL ChatGPT]計畫，此步驟可能需要&#x200B;**開發人員模式**&#x200B;或工作區管理員核准。
4. 聯結器啟用後，在第一次使用出現提示時，請透過Adobe瀏覽器登入進行驗證。

#### 游標

在游標中，將Real-Time CDP MCP伺服器新增為遠端MCP伺服器：

1. 開啟MCP **→**&#x200B;設定。
2. 選取&#x200B;**新增伺服器**&#x200B;並輸入`https://rtcdp-mcp.adobe.io/mcp`做為伺服器URL。
3. 選取&#x200B;**連線**&#x200B;以觸發瀏覽器式Adobe登入及驗證。

連線後，Real-Time CDP工具便可在Cursor的「撰寫器」和「代理程式」模式中使用。

#### 其他以UI為基礎的使用者端

對於使用者端（例如VS Code）或其他支援遠端MCP的案頭和Web應用程式，請使用`https://rtcdp-mcp.adobe.io/mcp`將Real-Time CDP MCP伺服器新增為&#x200B;**遠端HTTP**&#x200B;伺服器。 如果使用者端支援選用的標題或持有人權杖，請將它們留空 — 驗證會在第一次使用時透過瀏覽器型Adobe登入流程處理。

### 在技術使用者端安裝 {#mcp-connect-technical}

#### 克勞德程式碼

從終端機新增伺服器：

```bash
claude mcp add --transport http rtcdp https://rtcdp-mcp.adobe.io/mcp
```

然後啟動Claude程式碼並執行：

```text
/mcp
```

選取`rtcdp`伺服器並在瀏覽器中完成Adobe登入流程。 如果您已在`claude.ai`中新增伺服器，當兩者登入相同的帳戶時，伺服器可能會自動出現在Claude程式碼中。

#### 法典

從終端機新增伺服器：

```bash
codex mcp add rtcdp --url https://rtcdp-mcp.adobe.io/mcp
```

驗證伺服器：

```bash
codex mcp login rtcdp
```

驗證設定：

```bash
codex mcp list
```

您也可以直接將伺服器新增至`~/.codex/config.toml`：

```toml
[mcp_servers.rtcdp]
url = "https://rtcdp-mcp.adobe.io/mcp"
```

### 必要的請求引數 {#mcp-connect-params}

每個工具呼叫都需要兩個引數，將請求的範圍限定給您的Adobe Experience Platform租使用者：

* `imsOrgId` — 您的組織ID，已對應至下游Experience Platform API呼叫上的`x-gw-ims-org-id`標題。
* `sandboxName` — Experience Platform沙箱名稱，已對應至`x-sandbox-name`標頭。

在每個工作階段開始時提供這些資訊。 例如：

> 「針對此工作階段使用組織`1234ABCD@AdobeOrg`和沙箱`prod`。」

如果您不知道組織ID，請要求您的AI助理呼叫`search_organizations` — 它會傳回您的Adobe認證可以存取的每個組織。

## 已知限制(Beta) {#mcp-limitations}

下列限制適用於[!DNL Adobe Real-Time CDP] MCP伺服器的目前Beta版本：

| 限制 | 說明 | 因應措施 |
| --- | --- | --- |
| **唯讀表面** | MCP伺服器只會公開擷取API。 您無法建立、更新、啟動或刪除對象、目的地或資料流。 | 使用Real-Time CDP UI或Experience Platform REST API進行寫入操作。 |
| **沒有參與或傳遞量度** | MCP伺服器不會傳回目的地平台的下游傳遞統計資料、參與或轉換量度。 | 使用目的地平台自己的報告、Customer Journey Analytics MCP或Adobe Analytics MCP來取得參與和轉換資料。 |
| **區段查詢必須在外部撰寫** | `Preview Audience Membership`需要有效的PQL或SDD運算式作為輸入；MCP伺服器不會為您撰寫查詢。 | 在區段產生器UI中或透過分段服務API編寫PQL/SDD運算式，然後貼到MCP提示字元中。 |
| **透過接續權杖分頁** | 清單工具會傳回分頁結果。 非常大的沙箱中的完整列舉需要鏈結`continuationToken`呼叫。 | 使用篩選器（名稱、狀態、連線規格、時間範圍）來縮小查詢，而非列舉完整清單。 |
| **啟動回合篩選僅以時間為基礎** | `Inspect Activation Runs`支援依狀態和完成時間戳記（紀元毫秒UTC）篩選，但無法直接依錯誤型別或目的地平台篩選。 | 依`flowId`先篩選（從`List Configured Destinations`取得），將執行範圍設定到特定目的地。 |
| **工作階段開始時需要組織識別碼** | 每個工具呼叫（`search_organizations`除外）都需要`imsOrgId`和`sandboxName`做為明確引數。 若未提供這些引數，工具呼叫將會失敗。 | 在每個工作階段開始時，請告訴您的AI助理：「請針對此工作階段使用組織`<YOUR_ORG_ID>`和沙箱`<SANDBOX_NAME>`。」 如果您不知道組織ID，請先呼叫`search_organizations` — 它會傳回您的認證可存取的組織。 |

## 常見問題 {#mcp-faq}

+++支援哪些MCP使用者端？

Real-Time CDP MCP伺服器可與任何支援遠端MCP伺服器或自訂聯結器的使用者端搭配使用 — 包括[!DNL Claude]、[!DNL ChatGPT]、[!DNL Claude Code]、[!DNL Codex]、[!DNL Cursor]和[!DNL VS Code]。 設定流程取決於使用者端：以UI為基礎的使用者端通常會從設定或聯結器面板新增伺服器，而技術使用者端（例如Claude Code和Codex）可以從命令列或設定檔案新增伺服器。
+++

+++如何取得存取權？

只有在Beta期間受邀才能存取。 請聯絡您的Adobe客戶代表（客戶成功經理、技術客戶經理或客戶主管）以要求註冊。 您的Adobe代表將與產品團隊協調，以啟用您的組織。 如需詳細資訊，請參閱[存取與啟用](#mcp-access)。
+++

+++驗證如何運作？

驗證是透過&#x200B;**瀏覽器登入**&#x200B;處理。 您的MCP使用者端首次叫用工具時，會開啟預設瀏覽器至Adobe登入頁面。 在您驗證並授權使用者端後，工作階段就會建立，而後續的工具呼叫會重複使用它。 使用者端設定中不需要儲存API金鑰或長效認證。
+++

+++我可以透過MCP存取哪些Real-Time CDP物件？

您可以存取對象、目的地型別、設定的目的地帳戶、目的地資料流程、來源和目標連線，以及啟動執行記錄。 操作是唯讀的（擷取API）；目前版本不支援寫入操作。
+++

+++我需要開發人員存取權才能使用Real-Time CDP MCP伺服器嗎？

不會。 MCP伺服器是專為行銷和技術人員所設計。 行銷人員可以在任何支援的MCP使用者端中使用自然語言提示與其互動，而資料工程師和開發人員則可以在支援MCP的開發人員工具中使用它。
+++

