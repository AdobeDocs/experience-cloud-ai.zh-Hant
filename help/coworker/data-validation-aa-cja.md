---
title: 從Adobe Analytics升級為Customer Journey Analytics時與同事驗證資料
description: 瞭解Analytics管理員如何在移轉期間使用CX Enterprise Co-worker資料驗證技能比較Adobe Analytics和Customer Journey Analytics資料。
hide: true
source-git-commit: 1d0c3b73a3a9f18440920a19caa4645243e73730
workflow-type: tm+mt
source-wordcount: '1312'
ht-degree: 0%

---

# 從Adobe Analytics升級為Customer Journey Analytics時與同事驗證資料

CX Enterprise Co-worker包括驗證技能，可讓您在從Adobe Analytics升級至Customer Journey Analytics時驗證資料。 資料驗證是在單一交談中完成。

此技能會自動比較：

* 每個維度、量度和趨勢會分別跨實施作業。

* 針對所有Adobe Analytics資料檢視的所有Customer Journey Analytics報表套裝。

進行這些比較後，該技能會產生AI驅動的分析和建議，您可實施這些分析和建議來促進您升級到Customer Journey Analytics。

## 開始之前

若要在升級過程中驗證資料，您需要：

* 您要驗證的Adobe Analytics報表套裝。

* 包含相同資料的Customer Journey Analytics資料檢視。

您不需要預先知道實作的建構方式。 此技能會自動偵測您的資料是透過Analytics來源聯結器或兩個並排實施進行對應，因此您不必自行提供該內容。

## 開始驗證工作階段

1. 登入CX Enterprise Co-worker。

1. 選取&#x200B;[!UICONTROL **新交談**]。

1. 在文字欄位中，提示代理程式驗證您從Adobe Analytics移轉至Customer Journey Analytics的方式：

   **提示**

   > 協助我驗證公司是否已從Adobe Analytics升級至Customer Journey Analytics。

   您的請求會路由至資料驗證技能，這會啟動互動式設定流程。

1. 設定程式包含下表中的問題。 針對每個問題，選取答案，然後選取&#x200B;[!UICONTROL **提交**]。

   >[!NOTE]
   >
   >您稍後可以在同一個交談中變更這些選取的專案。 例如，要求代理程式變更您的報表套裝或資料檢視，然後代理程式只會重複更新該選取專案所需的步驟，不會重新啟動整個設定程式。

   | 問題 | 其他內容 |
   |---------|----------|
   | [!UICONTROL **選取您的Analytics公司**] | 這是您的Adobe Analytics登入公司。 |
   | [!UICONTROL **選取您的報表套裝**] <!--In the UI, recommend change to "Select your Adobe Analytics report suite"--> | 這是Adobe Analytics中的報表套裝，其中包含您要針對Customer Journey Analytics資料驗證的資料。 |
   | [!UICONTROL **選取您的Customer Journey Analytics資料檢視**] | 這是Customer Journey Analytics中的資料檢視，其中包含與您所選Adobe Analytics報表套裝相同的資料。 |

1. 請先檢閱設定摘要，確認您正在驗證正確的資料，然後再繼續。 摘要包含您選取的公司、報表套裝和資料檢視，以及每個系統中排名在前的量度和維度預覽。

1. 繼續下列區段，[選擇要驗證的資料](#choose-the-data-to-validate)。

## 選擇要驗證的資料

您可以驗證個別量度或維度，也可以驗證報表套裝和資料檢視中包含的所有量度和維度。

1. 從下列選項中選取：

   | 驗證選項 | 說明 |
   |---------|----------|
   | [!UICONTROL **單一量度比較**] | 比較Adobe Analytics和Customer Journey Analytics之間的量度趨勢。 當您想要快速檢查特定量度（例如頁面檢視或造訪）時，可使用此選項。 |
   | [!UICONTROL **單一維度比較**] | 比較Adobe Analytics和Customer Journey Analytics之間單一維度的劃分。 當您懷疑特定維度的對應或分類差異時，請使用此選項。 |
   | [!UICONTROL **完整報告套裝和資料檢視稽核**] | 單次執行最多可比較40個量度和10個維度。 當您想要全面瞭解移轉的整體健康情況時，可使用此選項。 |



1. 繼續下列章節，[檢閱分析](#review-the-analysis)。

## 檢閱分析

1. 選取&#x200B;[!UICONTROL **整體比對率**]&#x200B;索引標籤以檢視百分比，指出Adobe Analytics報表套裝中的資料與Customer Journey Analytics資料檢視的資料符合程度。 此分數一律會先出現，再於任何其他結果出現。 它會平均加權每個比較量度和維度，以確保大量量度（例如頁面檢視）不會扭曲分數。

   使用下列量度來解讀分數：

   | 分數 | 評等 | 其含義 |
   |---------|----------|----------|
   | 97%-100% | ![綠色方塊](./images/data-validation-aa-cja/excellent-square.svg) [!UICONTROL 極佳] | 所有屬性都會高度對齊。 不需要採取任何動作。 |
   | 90%-96% | ![黃色圓圈](./images/data-validation-aa-cja/good-circle.svg) [!UICONTROL 好] | 出現細微間隙。 監控趨勢並調查趨勢是否下降。 |
   | 75%-89% | ![橘色圓圈](./images/data-validation-aa-cja/review-circle.svg) [!UICONTROL 評論] | 存在有意義的間隙。 依賴Customer Journey Analytics資料之前，請先調查根本原因。 |
   | 低於75% | ![紅色圓圈](./images/data-validation-aa-cja/critical-circle.svg) [!UICONTROL 差] | 明顯未對齊。 使用Customer Journey Analytics資料前請先採取立即行動。 |

1. 選取&#x200B;[!UICONTROL **關鍵深入分析**]&#x200B;索引標籤以檢視兩到四個簡短的圖說文字方塊，每個方塊都以單一句子來摘要分析中的一個結果。 圖說文字會依嚴重程度以顏色標示，因此您可以先指出最重要的發現。

1. 選取「[!UICONTROL **摘要**]」標籤以檢視Adobe Analytics總計、Customer Journey Analytics總計、總差異、通過天數和嚴重天數，其中通過天數和嚴重天數反映日期範圍內的天數處於&#x200B;[!UICONTROL **通過**]&#x200B;和&#x200B;[!UICONTROL **嚴重**]&#x200B;差異狀態，如下所述。

1. （視條件而定）進行單一維度比較或單一量度比較時，您可以在&#x200B;[!UICONTROL **每日趨勢**]&#x200B;索引標籤中檢視Adobe Analytics資料與Customer Journey Analytics資料的並排比較。

   如果是量度，這是比較每日趨勢的折線圖。

   ![每日趨勢標籤顯示折線圖](./images/data-validation-aa-cja/trend-line.png)

   對於維度，這是比較最高值的長條圖。

   ![顯示橫條圖的每日趨勢標籤](./images/data-validation-aa-cja/trend-bar.png)

1. （視條件而定）進行單一維度比較或單一量度比較時，您可以在&#x200B;[!UICONTROL **日期詳細資料**]&#x200B;索引標籤中檢視列層級詳細資料。 此表格列出每個比較量度或維度值的日期、Adobe Analytics值、Customer Journey Analytics值、差異百分比和狀態徽章。

   ![日期詳細資訊標籤，顯示變動百分比和狀態徽章的表格](./images/data-validation-aa-cja/date-detail.png)

   變數和狀態列會使用以下比例：

   | 變異數 | 狀態 | 其含義 |
   |---------|----------|----------|
   | 少於3% | ![綠色核取記號](./images/data-validation-aa-cja/pass-check.svg) [!UICONTROL 通過] | 資料完全一致。 不需要採取任何動作。 |
   | 3%-10% | ![黃色警告三角形](./images/data-validation-aa-cja/flagged-warning.svg) [!UICONTROL 旗標] | 監控差異，並調查差異是否持續或惡化。 |
   | 大於10% | ![紅色圓圈](./images/data-validation-aa-cja/critical-circle.svg) [!UICONTROL 關鍵] | 立即調查。 這通常指向結構、擷取或對應問題。 |

1. （視條件而定）執行完整報表套裝和資料檢視稽核時，[!UICONTROL **每日趨勢**]&#x200B;和&#x200B;[!UICONTROL **每日詳細資料**]&#x200B;索引標籤會取代為顯示通過數、已標籤數和嚴重數的計分卡，以及分別列出前五個最佳比對和前五個最低比對量度和維度的表格。

1. 在分析中向下捲動以檢視在分析期間發現的其他模式和問題、這些模式的可能原因，以及您可以採取的建議動作以解決任何資料差異。

   >[!NOTE]
   >
   >有些差異是預期行為，並不表示您的移轉發生問題。

   常見問題包括：

   * Adobe Analytics會計算以裝置為基礎的訪客，而Customer Journey Analytics則使用跨裝置身分識別彙整來計算人員。
   * Adobe Analytics會在收集時處理資料，而Customer Journey Analytics會在報告時處理資料。
   * 工作階段定義不同： Adobe Analytics造訪會使用固定的逾時，而Customer Journey Analytics工作階段可設定。
   * Adobe Analytics依預設會篩選機器人，而Customer Journey Analytics機器人篩選則會選擇加入。
   * Adobe Analytics會將缺少的值回報為「未指定」或「無」，而Customer Journey Analytics會將它們回報為「沒有值」。
   * 與回溯套用的Customer Journey Analytics衍生欄位相比，行銷管道差異可能是由於Adobe Analytics處理規則所致。
   * 如果Customer Journey Analytics值在所有量度中一致地約為Adobe Analytics值的兩倍，這通常表示資料檢視中存在重複資料，而不是身分拼接效果。

1. 請確認建議的動作有效，然後在Adobe Experience Platform或Adobe Analytics中解決。

1. （選擇性）藉由分析其他量度、分析其他維度或執行最多40個量度和10個維度的其他報表來繼續您的分析，如[選擇要驗證的資料](#choose-the-data-to-validate)中所述。 您不需要重複設定程式即可執行這項作業；您的公司、報表套裝和資料檢視選項會在整個交談中持續進行。

