---
title: Experience Cloud 應用程式中的 AI
description: 了解 Experience Cloud 應用程式如何使用生成式 AI (GenAI)、AI 助理和代理式 AI。
source-git-commit: 8c05562121071874002afd6d248f16186616da55
workflow-type: tm+mt
source-wordcount: '830'
ht-degree: 13%

---

# Experience Cloud 中的 AI

歡迎使用跨Adobe Experience Cloud應用程式的AI功能完整指南。 本檔案說明如何將創作AI、AI Assistant和Adobe代理程式整合到Experience Cloud工作流程中，以加快生產力並增強決策。

## 本指南包含的內容

### AI 助理

[AI Assistant](./ai-assistant/ai-assistant-ui.md)是智慧型對話式、創造性的AI工具，可提升生產力並重新定義Adobe Experience Platform應用程式中的工作。 使用者可以透過自然語言提示獲得產品知識、疑難排解問題，並尋找運營見解。 您也可以使用AI助理來存取Adobe Experience Platform代理程式和其他AI功能。

**主要功能：**

- **對話式介面**：您可以選擇全熒幕和邊欄檢視介面，以符合您的工作流程偏好設定。
- **探索提示**： AI助理提供預先設定的提示，這些提示會依學習、分析和最佳化等類別加以整理。
- **內容設定**：您可以設定應用程式、沙箱和資料檢視設定，以接收根據您的需求量身打造的回應。
- **資料視覺效果**：此工具可提供互動式圖表和圖形，讓您從資料中獲得深入見解。
- **回應驗證**：所有回應都包含來源引文、AI推理的解釋，以及提供意見回饋的機制。


### Agent Orchestrator

[Adobe Experience Platform Agent Orchestrator](./agents/agent-orchestrator.md)是Adobe Experience Platform中的新代理程式圖層。 Experience Platform Agent Orchestrator 是為了善用平台豐富的資料和客戶知識而設計，其支援專門打造的專家 Adobe Experience Platform Agents 背後運作的智慧和推理能力，使其能夠快速且大規模地執行複雜的決策和解決問題的任務，且全程皆有人工監督。當您透過像 AI 助理這樣的對話式介面，用自然語言提出問題或要求協助時，Agent Orchestrator 會自動調用專門的代理，為您取得正確的答案。Agent Orchestrator會記住您的交談記錄，讓您在不重複內容的情況下自然建立先前的問題，並結合來自多個代理程式的深入分析，以清楚且統一的回應向您呈現。

**核心元件：**

- **推理引擎**：建立逐步計畫，並視需要調整方法
- **特殊代理程式**：為特定任務和網域專門建置的代理程式
- **知識庫**：安全存取商業智慧和檔案

### Specialized Agent

#### Audience 代理

Audience Agent可提供對受眾的深入分析，包括：

- 偵測重大的對象人數變化。
- 識別重複的對象。
- 探索對象詳細目錄。
- 擷取對象人數。

如需詳細資訊，請參閱[Audience Agent檔案](./agents/audience.md)。

#### Data Insights Agent

Customer Journey Analytics中的Data Insights Agent提供：

- 使用自然語言回答有關您資料的問題。
- 在Analysis Workspace中建置相關的視覺效果。
- 使用資料檢視和實際資料中的元件。

#### 歷程分析代理

Journey Analyze代理程式可讓Adobe Journey Optimizer使用者：

- 使用自然語言分析和最佳化歷程。
- 偵測並解決排程或對象衝突。
- 分析效能和流失點。

如需詳細資訊，請參閱[歷程分析代理程式檔案](./agents/ajo-agent-analyze.md)。

#### 產品支援代理

使用產品支援代理程式進行自助式偵錯和疑難排解：

- 在不離開工作流程的情況下疑難排解Adobe Experience Platform功能。
- 使用AI助理互動中的內容建立支援票證。
- 透過AI助理檢查票證更新。

如需詳細資訊，請參閱[產品支援代理程式檔案](./agents/product-support.md)。

## 快速入門

### 存取需求

若要使用AI助理和Experience Platform代理程式，您的Adobe管理員需要設定適當的許可權：

- 若要在Real-Time CDP和Adobe Journey Optimizer中使用AI助理，您需要「啟用AI助理」許可權以及「檢視作業分析」許可權才能存取作業問題。
- Customer Journey Analytics中的AI助理可透過Customer Journey Analytics存取控制進行管理，這可讓您詢問產品知識和資料見解問題。
- 對於Adobe Experience Manager，您可以透過Adobe Admin Console中設定的許可權來存取AI助理。

### 隱私權與安全性

AI Assistant以隱私權、安全性和控管成為建置重點：

- 不會將任何個人資料用於訓練。
- 會遵循所有現有的存取控制原則。
- 與Adobe Experience Platform Healthcare Shield搭配使用時可支援HIPAA。
- 互動記錄檔的30天保留原則。
- 沙箱專屬資料隔離。

## 最佳做法

若要從您的AI Assistant體驗中獲得最大價值，請遵循以下最佳實務：

- **在提示中指定**，以從AI助理取得目標和相關見解。
- **檢閱來源引文和AI助理提供的推理解釋，以驗證回應**。
- **使用內容設定**&#x200B;以確保您的問題使用了最相關的資料來源。
- **提供意見回饋**，協助改善AI助理在一段時間內的效能和準確性。
- **結合來自多個代理程式的深入分析**，以獲得更完整全面的分析。

## 法律考量

使用AI Assistant時，請務必注意重要的法律和實務考量。 目前，AI Assistant僅支援英文回應。 請務必確認所提供的資訊，因為語言模型偶爾可能會出錯。 運用回應中所包含的推理步驟和解釋，更能瞭解您收到的答案。 如果您遇到任何問題或不準確之處，請提交意見回饋，以協助逐漸改善AI小幫手。
