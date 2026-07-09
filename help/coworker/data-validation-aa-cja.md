---
title: 從Adobe Analytics升級為Customer Journey Analytics時與同事驗證資料
description: 瞭解Analytics管理員如何在移轉期間使用CX Enterprise Co-worker資料驗證技能比較Adobe Analytics和Customer Journey Analytics資料。
hold: true
source-git-commit: 850bfef76e3c3e081f9860b9757e5e5128383f76
workflow-type: tm+mt
source-wordcount: '710'
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
   | [!UICONTROL **完整報告套裝和資料檢視稽核**] | 單次執行最多可比較20個量度和維度。 當您想要全面瞭解移轉的整體健康情況時，可使用此選項。 |

1. 繼續下列章節，[檢閱分析](#review-the-analysis)。

## 檢閱分析

1. 選取下列各標籤以檢閱分析：

   | 分析檢閱索引標籤 | 說明 |
   |---------|----------|
   | [!UICONTROL **整體比對率**] | 表示Adobe Analytics報表套裝資料與Customer Journey Analytics資料檢視相符程度的百分比。 |
   | [!UICONTROL **重要深入分析**] | 分析期間發現的主要深入分析。 |
   | [!UICONTROL **摘要**] | Adobe Analytics總計、Customer Journey Analytics總計、總差異、通過天數和關鍵天數。<!--what are these?--> |
   | [!UICONTROL **每日趨勢**] | 顯示Adobe Analytics資料與Customer Journey Analytics資料的並排比較的圖表。 |
   | [!UICONTROL **每日詳細資料**] | <!--what goes here?--> |

1. 在分析中向下捲動以檢視在分析期間發現的其他模式、這些模式的可能原因，以及您可以採取的解決任何資料差異的建議動作。

1. 請確認建議的動作有效，然後在Adobe Experience Platform或Adobe Analytics中解決。

1. （選擇性）藉由分析其他量度、分析其他維度或執行最多20個量度和維度的其他報表來繼續您的分析，如[選擇要驗證的資料](#choose-the-data-to-validate)中所述。

