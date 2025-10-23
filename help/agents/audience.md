---
title: Audience 代理
description: 瞭解如何使用Audience Agent建立對象、檢視對象變更、偵測重複對象及檢視對象深入分析。
source-git-commit: 2c50a4abaf9606e3c7887073053d0cde3ec761e5
workflow-type: tm+mt
source-wordcount: '859'
ht-degree: 2%

---


# Audience 代理

>[!AVAILABILITY]
>
>Audience Agent可供所有可存取AI Assistant的客戶使用。 但是，您需要下列許可權才能完整使用Audience Agent功能。
>
>**檢視區段**：此許可權可讓您使用Audience Agent直接在AI助理中檢視對象的深入分析。
>
>**管理區段**： 「收件者」許可權可讓您使用Audience Agent直接在AI Assistant中建立新對象。

Audience Agent可讓您檢視對象的相關深入分析，包括偵測對象人數的重大變更、偵測重複的對象、探索您的對象詳細目錄，以及擷取對象人數。

## 支援的使用案例

AI Assistant中的Audience Agent支援下列使用案例：

- 以對話方式探索您的對象
   - 尋找現有對象的對象大小
   - 根據完整的或部分屬性來尋找對象，命名為
   - 偵測重複的對象
   - 探索可用來定義對象的XDM欄位
- 偵測對象人數的重大變更
   - 這可讓您找到突然增加或減少的受眾，讓您更好地分析潛在的市場變化

<!-- - Find your audience size and detect significant changes in audience size
  - This lets you find audiences that have suddenly grown or shrunk, letting you better analyze potential market changes
- Detect duplicate audiences
  - This lets you reduce redundancies with your created audiences
- Find audiences based on full or partial attributes named
  - This lets you more easily navigate through your audience inventory
- Discover XDM fields you can use to define an audience
  - This skill lets you more easily identify the right fields to use in your audience based on context and relevance -->

Audience Agent **目前**&#x200B;不支援下列功能：

- 知識型對象建立
   - 以知識為基礎建立受眾，就是根據指定的屬性和事件建立受眾
   - 此外，您可以在建立受眾之前估計受眾的潛在規模。 這可讓您在可以啟動之前，快速迭代最有效的對象
   - 即將支援此功能
- 目標型對象探索
   - 目標型對象探索可讓您套用機器學習模型（例如購買或轉換傾向），以探索與業務目標一致的相關資料集和設定檔。

此外，使用Audience Agent時，您應牢記下列限制：

- Audience Agent需要至少24小時來處理您的資料
   - 例如，您&#x200B;**無法**&#x200B;有一個查詢在過去24小時內尋找資料。 您至少需要檢視過去48小時內的狀況。
- Audience Agent僅支援下列對象型別：
   - 使用批次細分評估的&#x200B;**以人物為基礎的**&#x200B;對象
   - 下列使用案例的&#x200B;**以帳戶為基礎的**&#x200B;對象：
      - 對話式受眾探索
      - 重複對象偵測

## 範例提示

下列範例示範Audience Agent的範例提示和回應。

### 對話式受眾探索

為我顯示富裕買家的欄位。

+++ 回應

![AI助理會顯示一個表格，顯示與富裕買家相關的欄位。](./images/audience/affluent-buyers.png)

+++

在過去30天內，哪些對象尚未啟用或用於任何行銷活動？

+++ 回應

![AI助理顯示的表格會顯示過去30天內未啟動或未用於行銷活動的對象。](./images/audience/not-activated.png)

+++

列出過去3個月內已對應到新目的地的全部對象。

+++ 回應

![AI助理列出過去3個月內已對應到新目的地的對象。](./images/audience/new-destination.png)

+++

哪個帳戶對象的對象人數最多，該人數為何？

+++ 回應

![AI助理會顯示一個表格，其中顯示最大的帳戶對象。](./images/audience/largest-account-audience.png)

+++

### 偵測重複的對象

我是否有任何對象具有相同或類似的說明？

+++ 回應

![AI助理顯示的表格包含區段定義以及具有相同區段定義的對象名稱。](./images/audience/similar-descriptions.png)

+++

識別具有相同規則但名稱不同的對象。

+++ 回應

![AI助理顯示的表格包含共用相同對象規則的對象名稱。](./images/audience/same-rules-different-names.png)

+++

顯示具有相同規則但不同啟用目的地的所有對象。

+++ 回應

![AI助理顯示沒有重複區段定義到不同的目的地。](./images/audience/same-rules-different-destinations.png)

+++

識別具有相同規則但名稱不同的帳戶對象。

+++ 回應

![AI助理顯示的表格包含共用相同對象規則的帳戶對象的名稱和ID。](./images/audience/duplicate-account-audience.png)

+++

### 擷取對象規模

我的對象「加州金星會員_f153e1」目前的大小為何？

+++ 回應

![AI助理指出詢問對象的目前規模。](./images/audience/current-size.png)

+++

我的最大受眾為何？

+++ 回應

![AI助理會提供設定檔數目最多的對象相關資訊，包括名稱和對象ID。](./images/audience/largest-audience.png)

+++

### 偵測對象人數的重大變更

上週哪些對象的大小增加超過20%？

+++ 回應

![AI助理會顯示一個表格，列出符合查詢的所有對象名稱。 它也會顯示增加百分比、目前的對象人數以及先前的對象人數。](./images/audience/increase-past-week.png)

+++

上個月有哪些對象的大小減少了超過10%？

+++ 回應

![AI助理會顯示一個表格，列出符合查詢的所有對象名稱。 它也會顯示目前的對象人數、先前的對象人數，以及舊對象人數的日期。](./images/audience/decrease-month.png)

+++

我增長最快的對象是哪個？

+++ 回應

![AI Assistant會指出成長最快的對象名稱，以及目前的大小和成長百分比。](./images/audience/fastest-growing.png)

+++

## 後續步驟

閱讀本指南後，您應該對Audience Agent及其支援的功能有更深入的瞭解。 如需Adobe Experience Platform代理程式的詳細資訊，請閱讀[Agent Orchestrator概觀](./agent-orchestrator.md)。

