---
description: Learn how to visualize data with the Data Insights Agent in Customer Journey Analytics
title: Visualize data with the Data Insights Agent in Customer Journey Analytics
role: User, Admin
solution: Customer Journey Analytics
TQID: https://experienceleague.adobe.com/UtKIDlN2x7MOAiHNRRQ8b5OO4fIwzV74r1fnfMwblcQ
product_v2: id: e98b7246-966c-4318-9e95-cad2f7a17dc7
feature_v2: id: b743a5d9-dc51-41ed-8b2f-86a1f8de430fid: c73c4213-d623-4126-81f4-80b42e5e2656id: ce577701-5b9e-4fe4-8fa3-4eedea976da4
subfeature_v2: id: b1f5d324-a668-4e51-a59b-6fc0862d7310id: bc7a5a86-1a70-451f-985c-037b65f091d1id: df7fb1db-aa1b-4314-98ac-59dbfcc3044fid: e44e560d-5e5c-4a5f-9a87-eb8adbb817af
role_v2: id: b69b2659-1057-424e-8fc5-ed9e016dc554id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
topic_v2: id: aa2f3246-cb95-4b30-8899-fdf7d73550ccid: e1e0219c-f879-479f-8427-888ed2a6e9c2id: ebde5b41-29c9-4f5e-9ef6-1197e85409e3
source-git-commit: dd7883d8eccab3b0f006d55a850248e1c347d7e7
workflow-type: tm+mt
source-wordcount: 2690
ht-degree: 4%

---

# Visualize data with Data Insights Agent

>[!AVAILABILITY]
>
>Data Insights Agent is available to eligible customers for a limited time. Access to Data Insights Agent is available through March 31, 2026. To continue using Data Insights Agent beyond this date without interruption, please contact your Adobe account representative to learn more about licensing Adobe Experience Platform Agent Orchestrator.

Data Insights Agent, accessible from the [AI Assistant](/help/ai-assistant/ai-assistant-ui.md), is a generative AI conversation agent that quickly and efficiently answers questions about your data. It builds relevant visualizations in Analysis Workspace using components from your data view and your actual data.

Using Data Insights Agent to answer data-centric questions in Analysis Workspace can save significant time that you might otherwise spend manually building visualizations in Analysis Workspace and familiarizing yourself with your data view components.

![Data Insights Agent within the AI Assistant](/help/agents/images/cja-agent/cja-ai-asst-da.gif)

## In-scope vs. out-of-scope features

| 功能 | In scope | Out of scope |
| --- | --- | --- |
| **Visualization types** | <ul><li>折線圖</li><li>Multi-line</li><li>自由格式表格</li><li>長條圖</li><li>環狀圖</li><li>摘要數字</li></ul> | <ul><li>流程</li><li>流失</li><li>Cohort Table</li><li>Area, Area Stacked</li><li>棧疊長條圖</li><li>項目符號</li><li>組合圖</li><li>直方圖</li><li>橫條圖、棧疊橫條圖</li><li>關鍵量度摘要</li><li>散佈圖</li><li>摘要變更</li><li>文字</li><li>樹狀圖</li><li>文氏圖表</li><li>引導式分析：主動式成長、轉換趨勢、參與、首次使用影響、頻率、Funnel、淨成長、發行影響、保留、時間表、趨勢</li></ul> |
| **Workspace動作和代理程式功能** | <ul><li>建立和更新視覺效果<p>產生自由表格和相關聯的視覺效果（例如線條、長條圖、環形圖等）。</p><p>例如，*從2月到5月，SKU間的利潤是多少？*</p></li><li>提出後續追蹤問題<p>從任何先前的提示回應內容中的提示。 例如：</p> <ul><li>提示1： *自3月*&#x200B;起的趨勢事件</li><li>提示2： *改為顯示三月到四月的資料*</li></ul> </li><li>超出範圍提示偵測<p>如果您提交超出範圍的提示，例如&#x200B;*匯出此專案*，Data Insights Agent會通知您問題超出範圍。</p></li></ul> | <ul><li>共用</li><li>匯出</li><li>下載</li><li>管理使用者偏好設定</li><li>管理資料檢視</li><li>Analytics儀表板應用程式</li><li>歸因</li><li>內嵌摘要或回應<p>Data Insights Agent無法在聊天邊欄中以使用者提示的摘要回應進行內嵌回應。 範圍外提示的範例為，*提供上次提示的見解摘要*&#x200B;以及&#x200B;*總結線條視覺效果的亮點。*</p></li></ul> |
| **澄清問題** | 如果您提出的問題，沒有足夠上下文可供Data Insights Agent回答，或問題過於寬泛，Data Insights Agent會以澄清問題或建議的選項來回應。 <p>下列澄清問題為元件相關問題的範例：</p><ul><li>量度： *您指的是哪個「收入」量度？*</li><li>Dimension： *您想要著重下列哪個「地區」？*</li><li>區段： *您要套用哪個「帳戶」區段？*</li><li>日期範圍： *以「上個月」表示，您是指「上個月」還是「過去30天」？*</li></ul><p>以下澄清問題為維度專案相關問題的範例：</p> <ul><li>您是指哪個「商店名稱」？ （例如，商店#5274、商店#2949等）。</li></ul> | 澄清的問題僅限於元件和維度專案。 Data Insights Agent無法釐清資料檢視、視覺效果、資料精細度、比較和範圍等專案。 當澄清無法使用的問題時，代理程式會預設為您最可能要求的內容。 如果它傳回非預期的視覺效果或資料詳細程度，您可以提出後續問題或調整視覺效果和資料。 |
| **資料可驗證性和正確性** | 檢視產生的自由表格和資料視覺效果，即可確認資料可驗證性和正確性。 <p>例如，如果您要求Data Insights Agent針對上個月&#x200B;*的*&#x200B;趨勢訂單，您可確認已在新產生的面板、資料視覺效果和自由表格中選取正確的量度（「訂單」）和日期範圍（「上個月」）。</p> | Data Insights Agent不會通知您新增了哪些元件或視覺效果。 |
| **回饋機制** | <ul><li>豎起大拇指</li><li>向下拇指</li><li>標記</li></ul> |  |


## 管理 Data Insights 代理的存取權 {#manage-access}

<!-- markdownlint-disable MD034 -->

>[!CONTEXTUALHELP]
>id="cja-enable-data-insights-data-view"
>title="啟用供 Data Insights 代理使用"
>abstract="此選項會啟用此資料視圖，用於和 Data Insights 代理搭配使用。 Data Insights 代理是一個生成式 AI 對話代理，可以從 Customer Journey Analytics 中的 AI 助理存取。 它能協助您透過文字提示快速分析資料。 此代理會使用來自您資料視圖的元件以及您的實際資料，在 Analysis Workspace 中建置相關的視覺效果。"

<!-- markdownlint-enable MD034 -->

下列引數可控管Customer Journey Analytics中Data Insights Agent的存取權：

* **解決方案存取權**： Data Insights Agent在有限的時間內可供符合資格的客戶使用。 Data Insights Agent的存取權將於2026年2月28日之前提供。 在Adobe Analytics中無法使用。

* **合約存取**：如果您無法在AI助理中使用Data Insights Agent，請聯絡您組織的管理員或Adobe帳戶團隊。 您必須同意與創作AI相關的特定法律條款，組織才能使用Data Insights Agent。

* **許可權**：必須先在[!UICONTROL Adobe Admin Console]中授與必要的許可權，使用者才能存取Data Insights Agent。

  若要授與許可權，[產品設定檔管理員](https://helpx.adobe.com/tw/enterprise/using/manage-product-profiles.html)必須在[!UICONTROL Admin Console]中完成下列步驟：
   1. In the **[!UICONTROL Admin Console]**, select the **[!UICONTROL Products]** tab to view the **[!UICONTROL All products and services]** page.
   1. Select **[!UICONTROL Customer Journey Analytics]**.
   1. On the **[!UICONTROL Product Profiles]** tab, select the title of the product profile for which you want to provide access to [!UICONTROL AI Assistant: Product Knowledge].
   1. In the specific product profile, select the **[!UICONTROL Permissions]** tab.

      ![Permissions tab in Admin Console](/help/agents/images/cja-agent/ai-assistant-permissions-tab.png)

   1. In the **[!UICONTROL Reporting Tools]** row in the provided table, select the edit icon ![Edit](/help/agents/images/cja-agent/Edit.svg).
   1. Scroll to or search for **[!UICONTROL AI Assistant: Product Knowledge]**, then select the plus icon ![AddCircle](/help/agents/images/cja-agent/AddCircle.svg) next to this permission.
   1. Scroll to or search for **[!UICONTROL Data Insights Agent]**, then select the plus icon ![AddCircle](/help/agents/images/cja-agent/AddCircle.svg) next to this permission.

      The **[!UICONTROL AI Assistant: Product Knowledge]** permission and the **[!UICONTROL Data Insights Agent]** permission are added to the **[!UICONTROL Included permission items]** column.

      ![Add permission](/help/agents/images/cja-agent/ai-assistant-permissions.png).

   1. Select **[!UICONTROL Save]** to save the permissions.

  For additional information about access control, see [Access control](https://experienceleague.adobe.com/en/docs/analytics-platform/using/technotes/access-control#access-control).

* **Data view access**: Data views must be enabled for Data Insights Agent.

  >[!IMPORTANT]
  >
  >Consider the following when enabling data views:
  >* You can enable a maximum of 50 data views per IMS organization. If you enable more than 50 data views across all product profiles for a given organization, the Data Insights Agent will use the 50 most-used data views.
  >  You can use the [info on the Data Insights Agent column in Data views](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-dataviews/manage-dataviews#manage-data-views) to view the number of data views that are enabled for Data Insights Agent in your IMS organization.
  >* The Data Insights Agent can reference the included data views sometime during the same day that you enable them.

  To enable data views for Data Insights Agent:

   1. In Customer Journey Analytics, select **[!UICONTROL Data Management]** > **[!UICONTROL Data views]**.

   1. Select one or more data views that you want to enable for Data Insights Agent, then select **[!UICONTROL Enable for Data Insights Agent]**.

      ![Enable data views for Data Insights Agent](/help/agents/images/cja-agent/data-view-enable-dia.png)

      For more information about enabling data views for Data Insights Agent, see the [AI Settings for a data view](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-dataviews/create-dataview#ai-settings/help/data-views/create-dataview.md#ai-settings).

  To view the number of data views that are enabled for Data Insights Agent in your IMS organization:

   1. In Customer Journey Analytics, select **[!UICONTROL Data Management]** > **[!UICONTROL Data views]**.

   1. 選取&#x200B;**[!UICONTROL Data Insights Agent]**&#x200B;欄頂端的資訊圖示。

      ![Data Insights Agent資訊圖示](/help/agents/images/cja-agent/data-insights-agent-tooltip.png)


## 在AI助理中存取Data Insights Agent

1. 前往[experience.adobe.com](https://experience.adobe.com/)並使用您的Adobe ID登入。

2. 從Experience Cloud首頁選取&#x200B;**Customer Journey Analytics**。

3. 在專案頁面頂端的橫幅中選取&#x200B;**[!UICONTROL 空白專案]**&#x200B;以開啟新的空白專案。

4. 請確認為面板選取的資料檢視是已啟用與Data Insights Agent搭配使用的資料檢視，如[在Customer Journey Analytics中管理Data Insights Agent的存取權](#manage-access-to-data-insights-agent-in-customer-journey-analytics)中所述。

5. 在頁面的右上角區域選取AI助理聊天圖示。

   如果您沒有看到聊天圖示，請聯絡您的管理員，以便他們在Admin Console中啟用以下功能：

   * 報告工具： **[!UICONTROL AI助理：產品知識]**

   * 資料檢視工具： **[!UICONTROL Data Insights Agent]**

   如需詳細資訊，請參閱[在Customer Journey Analytics中管理Data Insights Agent的存取權](#manage-access-to-data-insights-agent-in-customer-journey-analytics)。

   ![AI助理圖示](/help/agents/images/cja-agent/ai-asst-icon.png)

6. 在頁面底部的&#x200B;**[!UICONTROL 詢問Customer Journey Analytics]**&#x200B;對話方塊中，使用Data Insights Agent詢問資料視覺效果問題。

   如需詳細資訊，請參閱下列範例。

### 範例 1

例如，假設您對您的企業在7月收到的訂單感興趣。

**提示：**&#x200B;輸入&#x200B;*「7月趨勢訂單」。*

![AI提示](/help/agents/images/cja-agent/ai-asst-prompt1.png)

**回應：** Data Insights Agent透過檢視資料檢視中的資料（包括量度和元件）來收集深入分析。 系統會將提示轉譯為資料範圍內正確的維度和量度。

如您所見，系統會自動產生線圖和自由表格，以顯示7月的訂單。

![提示的回答 — 折線圖和自由格式表格](/help/agents/images/cja-agent/ai-asst-result.png)

### 範例 2

接下來，您想要瞭解依地區比較收入的方式。

**提示：**&#x200B;在提示視窗中，輸入&#x200B;*「依地區顯示收入」*

**回應：** Data Insights Agent聰明地瞭解「地區」的意思是「客戶地區」。 這會產生一個長條圖，最能依地區顯示收入：

![長條圖](/help/agents/images/cja-agent/ai-asst-result2.png)

### 範例3

接著，除了瞭解按地區劃分的收入之外，您也要檢視依地區劃分的利潤資料。 與其重複先前的提示，您可以要求Data Insights Agent更新最新的視覺效果和自由表格。

**提示：**&#x200B;在提示視窗中，輸入&#x200B;*「新增利潤」*。

**回應：** **[!UICONTROL 長條]**&#x200B;圖表仍提供最簡明的答案，但利潤量度已新增為自由表格中的欄：

![長條圖](/help/agents/images/cja-agent/ai-asst-result4.png)

### 範例4

最後，我們來依照產品類別檢視收入。

**提示：**&#x200B;在提示視窗中，輸入&#x200B;*「依產品類別區分的收入比例」。*

**回應：**&#x200B;再次，Data Insights Agent會挑選最適合的視覺效果（在此案例中是&#x200B;**[!UICONTROL 環形圖]**&#x200B;視覺效果）來回答問題。

![環形圖](/help/agents/images/cja-agent/ai-asst-result3.png)

## 跨Experience Cloud應用程式存取Data Insights Agent

Adobe Experience Platform Agent Orchestrator可讓您在多個Adobe Experience Cloud應用程式（例如Adobe Journey Optimizer和Real-Time CDP）中存取Data Insights Agent的功能。

Agent Orchestrator會解譯您的請求、決定需要哪些專業代理程式，並協調他們提供正確的回應。 它可追蹤多圈互動中的內容，因此您可以自然地在先前的查詢上建置。

如需詳細資訊，請參閱[Adobe Experience Platform Agent Orchestrator](https://business.adobe.com/products/experience-platform/agent-orchestrator.html)。

## 範例資料視覺效果提示

以下是Data Insights Agent用來回應這些提示的常見提示和視覺效果範例。

| 範例提示 | 預期的視覺效果 |
| --- | --- |
| 顯示[個月]的利潤 | 折線圖<p>依預設，詢問特定時間範圍內的趨勢或量度會傳回線條視覺效果。 |
| [個月]的趨勢訂單 | 折線圖 |
| 在[個月]內依地區顯示收入 | 長條圖 |
| 依產品類別劃分的收入份額 | 環形圖 |
| 按周中某日（從1月到5月）的訂單 | 長條圖 |
| 依性別顯示從3月到6月的訂單 | 長條圖 |
| 從2月到5月，SKU利潤如何 | 長條圖 |
| [個月]內依商店名稱區分的收入 | 長條圖 |
| 在[月]中，依利潤排列的前10名SKU為何？ | 長條圖 |
| 按月份和年份的購買比例 | 環形圖 |
| [個月]的總利潤 | 摘要數字<p>在特定時間範圍內詢問量度的「總計」時，應該會傳回「摘要數字」視覺效果。 |


## 提示最佳實務

Data Insights Agent會處理每個使用者提示所提供的內容，並嘗試以自由格式表格方式，以最適當的視覺效果和元件聰明地回應。

回應可能會因提示中所使用的特定字詞和短語而有所不同，而語言的微小變化可能會導致不同的結果。

若要獲得最佳結果，請考量下列准則：

* **明確：**&#x200B;包含確切的辭彙，以縮小回應範圍。 以下為特定提示的範例：「上個月在加州的銷售」

* **使用清除量度、維度和區段：**&#x200B;新增特定量度（例如「收入」）、維度（例如「網站名稱」）、區段（例如「iPhone使用者」）和日期範圍（例如「過去三個月」），有助於Data Insights Agent聚焦於正確的資料。

* **直接提問：**&#x200B;直接措辭問題可讓Data Insights Agent更輕鬆地提供清晰、相關的深入分析。 以下是在提示中詢問直接問題的範例：「今年按產品類別的平均收入是多少？」

請檢閱下表，瞭解您可以搭配Data Insights Agent在提示中使用的辭彙和片語範例，以及您可以預期的回應型別。

這些範例旨在協助您熟悉特定字詞或結構如何影響Data Insights Agent的輸出，以確保更精確且有價值的深入分析。 Data Insights Agent使用創作AI，因此視覺效果或選取的資料在類似提示中可能會稍有不同。

| 所要的結果 | 辭彙和短語範例 |
| --- | --- |
| 摘要數字視覺效果 | <ul><li>總計</li></ul> |
| Compare components | <ul><li>Compare</li><li>VS</li><li>對比</li><li>Week-to-Week</li><li>Month-over-Month</li><li>Quarter-over-Quarter</li><li>Year-over-Year</li></ul> |
| Donut visualization | <ul><li>Proportion</li><li>Share of</li><li>分佈</li><li>百分比</li><li>貢獻</li><li>Portion</li><li>Parts</li></ul> |
| Line visualization | <ul><li>趨勢</li><li>[Metric] in [Time range]</li></ul> |
| Bar visualization | <ul><li>[Metric] by [Dimension]</li></ul> |

<!--

## Beta testing expectations and requested feedback

After posing each question, carefully review the assistant's provided answer. It's crucial to evaluate the generated visualizations comprehensively before providing feedback. 

Consider the following when evaluating a response from Data Insights Agent: 

* Chat rail response or template: Evaluate the textual response provided. Is the response appropriate given the context of your prompt? 

* Visualization/chart: Evaluate the visualization. Is it the appropriate or expected visualization for your question, or would you have expected a different visualization?  

* Freeform table: Evaluate the freeform table. Is the freeform table data correct? Is it breaking down data where requested? Are the applied segments those that you requested or expected? 

* Error Message / Out-of-Scope: If a generic error message is given stating the question is out of scope, provide feedback on whether you think the out-of-scope message is appropriate, given your prompt. Was your prompt actually in scope? 

**For every response, give a thumbs up or thumbs down, based on the response.**

Following the thumbs up or thumbs down selection, please make a selection for the relevant multi-select feedback boxes. If you want to provide additional feedback, add notes in the open text box.

## Questions and Contact

* Send questions and feedback in the Beta Slack channel: #data-insights-agent-in-cja-beta

-->


## Configuration best practices

Below are best practices for your Customer Journey Analytics configuration (data view, calculated metrics, segments, and more) to ensure that the Data Insights Agent can locate the correct components and return cleaner answers without having to prompt you for additional information.

* **Balance what components you need**. Do not add all the fields of your datasets as metrics or dimension components to your data view, especially those you don&#39;t expect to use in your analysis. On the other hand, do not strictly limit yourself only to the fields you anticipate you require for your analysis. A too limited data view restricts the flexibility in your analysis and the Data Insights Agent functionality.
* **Always use friendly display names**. Ensure that all fields you define in your data view, either as a metric or dimension component, have a friendly component name. The process of renaming fields with a friendly name is especially relevant for fields from Adobe Analytics source connector datasets. 這些欄位通常具有不友好的無法識別名稱，例如`eVar41`或`prop25`。
* **使用特殊名稱**。 當您在資料檢視中同時使用相同欄位作為量度和維度元件時，獨特名稱會特別相關。 或者，當您在相同型別的多個元件中使用欄位時（例如在兩個不同的量度中），每個元件都有不同的元件設定。
* **使用元件命名慣例**。 您可以使用元件命名慣例來群組元件。 例如，**[!UICONTROL 訂單|產品]**&#x200B;和&#x200B;**[!UICONTROL 訂單|客戶]**&#x200B;可以區分您的資料中可能存在的不同訂單量度。
* **使用資料字典**。 在資料字典中新增元件的說明和其他相關資料。 Data Insights Agent目前並未使用資料字典中的說明和標籤，但未來可能會使用。
* **使用核准的計算量度**。 同意僅使用核准的計算量度作為資料檢視中元件的程式，並避免使用實驗性的計算量度。
* **共用必要的區段**。 確保您共用Data Insights Agent提示所需的區段並加以顯示。
* **跨資料檢視標準化元件名稱**。 如果您在多個資料檢視中作為元件使用相同的欄位，請確定您為該元件使用單一易記名稱和單一識別碼。 單一名稱和識別碼可讓Data Insights Agent切換資料檢視，而不會遺失內容。


>[!MORELIKETHIS]
>
>[元件設定](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-dataviews/component-settings/overview)
>[資料字典](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-components/data-dictionary/data-dictionary-overview)
>[核准計算量度](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-components/cja-calcmetrics/cm-workflow/cm-approving)
>[共用區段](https://experienceleague.adobe.com/en/docs/analytics-platform/using/cja-components/segments/seg-share)
