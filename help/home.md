---
title: Experience Cloud 應用程式中的 AI
description: 了解 Experience Cloud 應用程式如何使用生成式 AI (GenAI)、AI 助理和代理式 AI。
source-git-commit: 4bb6da3fe1abee98446df62c94730274e0931493
workflow-type: tm+mt
source-wordcount: '645'
ht-degree: 16%

---

# Experience Cloud 中的 AI

歡迎使用跨Adobe Experience Cloud應用程式的AI功能完整指南。 本檔案說明如何將創作AI、AI Assistant和Adobe代理程式整合到Experience Cloud工作流程中，以加快生產力並增強決策。

## 本指南包含的內容

### AI 助理

[AI Assistant](./ai-assistant/ai-assistant-ui.md)是智慧型對話式、創造性的AI工具，可提升生產力並重新定義Adobe Experience Platform應用程式中的工作。 使用者可以透過自然語言提示獲得產品知識、疑難排解問題，並尋找運營見解。 您也可以使用AI助理來存取Adobe Experience Platform代理程式和其他AI功能。

**主要功能：**

- **對話式介面**：不同工作流程偏好設定的全熒幕和邊欄檢視選項
- **探索提示**：依類別組織的預先設定提示（學習、分析、最佳化）
- **內容設定**：設定目標回應的應用程式、沙箱和資料檢視設定
- **資料視覺效果**：資料深入分析的互動式圖表和圖形
- **回應驗證**： Source引文、推理解釋和意見反應機制

### Agent Orchestrator

[Adobe Experience Platform Agent Orchestrator](./agents/agent-orchestrator.md)是Adobe Experience Platform中的新代理程式圖層。 Experience Platform Agent Orchestrator 是為了善用平台豐富的資料和客戶知識而設計，其支援專門打造的專家 Adobe Experience Platform Agents 背後運作的智慧和推理能力，使其能夠快速且大規模地執行複雜的決策和解決問題的任務，且全程皆有人工監督。當您透過像 AI 助理這樣的對話式介面，用自然語言提出問題或要求協助時，Agent Orchestrator 會自動調用專門的代理，為您取得正確的答案。Agent Orchestrator會記住您的交談記錄，讓您在不重複內容的情況下自然建立先前的問題，並結合來自多個代理程式的深入分析，以清楚且統一的回應向您呈現。

**核心元件：**

- **推理引擎**：建立逐步計畫，並視需要調整方法
- **特殊代理程式**：為特定任務和網域專門建置的代理程式
- **知識庫**：安全存取商業智慧和檔案

### Specialized Agent

#### Audience 代理

提供有關對象的深入分析，包括：

- 偵測受眾人數的重大變更
- 識別重複的對象
- 探索對象詳細目錄
- 擷取對象人數

#### Data Insights Agent

此代理程式可在Customer Journey Analytics中使用：

- 使用自然語言回答有關您資料的問題
- 在Analysis Workspace中建置相關的視覺效果
- 使用資料檢視和實際資料中的元件

#### Journey Agent

讓Journey Optimizer使用者：

- 使用自然語言分析和最佳化歷程
- 偵測並解決排程或對象衝突
- 分析效能和流失點

#### 產品支援代理

提供自助式偵錯和疑難排解功能：

- 在不離開工作流程的情況下疑難排解Adobe Experience Platform功能
- 使用AI助理互動中的內容建立支援票證
- 透過AI助理檢查票證更新

## 快速入門

### 存取需求

若要使用AI助理和Experience Platform代理程式，您的Adobe管理員需要設定適當的許可權：

- **Real-Time CDP和Adobe Journey Optimizer**：需要有「啟用AI助理」許可權和「檢視作業分析」許可權才能解決作業問題
- **Customer Journey Analytics**：透過Customer Journey Analytics存取控制存取產品知識和資料見解問題
- **Adobe Experience Manager**：透過Adobe Admin Console存取

### 隱私權與安全性

AI Assistant以隱私權、安全性和控管成為建置重點：

- 沒有用於訓練的個人資料
- 會遵循所有現有的存取控制原則
- 與Adobe Experience Platform Healthcare Shield搭配使用時可支援HIPAA
- 互動記錄檔的30天保留原則
- 沙箱專屬資料隔離

## 最佳做法

- 在提示中指定&#x200B;**以取得目標深入分析**
- **使用來源引證和推理解釋來驗證回應**
- **使用內容設定**&#x200B;以確保相關的資料來源
- **提供意見回饋**&#x200B;以協助改善AI助理效能
- **結合來自多個代理程式的深入分析**，以進行全面分析

## 法律考量

- AI助理目前僅支援英文
- 永遠驗證回應，因為語言模型可能會出錯
- 檢閱提供的推理步驟和解釋
- 針對任何問題或不準確之處提交意見回饋

本指南提供在您的Experience Cloud應用程式中有效使用AI功能所需的一切，從基本互動到進階代理程式協調與特殊工作流程。
