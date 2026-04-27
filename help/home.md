---
title: Experience Cloud 應用程式中的 AI
description: 了解 Experience Cloud 應用程式如何使用生成式 AI (GenAI)、AI 助理和代理式 AI。
TQID: https://experienceleague.adobe.com/heALjEZbowNaygG24oOM2HSlHa9oYVI5ViUNZDr19Ds
product_v2:
  - id: d0a3eab4-7b10-4d96-a71e-6c0f8e7b7c87
role_v2:
  - id: b69b2659-1057-424e-8fc5-ed9e016dc554
  - id: c66ffd68-0f65-42bb-aa23-b4020f12e0bd
  - id: f8a45b24-4be7-4f1b-909b-60d06b483a20
  - id: ff6a42d2-313e-452e-93a6-792e4fad9ff8
topic_v2:
  - id: c1579802-ddd4-4214-8a91-97b2066abe11
  - id: c7d04a2c-412a-4c9d-9d7a-4456eaa5adeb
  - id: d095671a-1355-40aa-8b5f-06c33c68080b
  - id: e1e0219c-f879-479f-8427-888ed2a6e9c2
  - id: f4e6943a-c91a-4134-a2c7-f4f20cfff2f0
source-git-commit: dd7883d8eccab3b0f006d55a850248e1c347d7e7
workflow-type: tm+mt
source-wordcount: 846
ht-degree: 17%

---

# Experience Cloud 中的 AI

Welcome to the comprehensive guide for AI capabilities across Adobe Experience Cloud applications. This documentation covers how generative AI, AI Assistant, and Adobe agents are integrated into your Experience Cloud workflows to accelerate productivity and enhance decision-making.

## What&#39;s included in this guide

### AI 助理

[AI Assistant](./ai-assistant/ai-assistant-ui.md) is an intelligent conversational, generative AI tool that will boost productivity and redefine work in Adobe Experience Platform-based Applications. Users can gain product knowledge, troubleshoot problems, and find operational insights through natural language prompts. You can also use AI Assistant to access Adobe Experience Platform Agents and other AI capabilities.

**Key features:**

- **Conversational Interface**: You can choose between a full-screen and a rail view interface to suit your workflow preferences.
- **Discovery Prompts**: AI Assistant provides pre-configured prompts that are organized by categories such as Learn, Analyze, and Optimize.
- **Context Setting**: You are able to configure the application, sandbox, and dataview settings to receive responses that are tailored to your needs.
- **Data Visualization**: The tool delivers interactive charts and graphs, enabling you to gain insights from your data.
- **Response Verification**: All responses include source citations, explanations of AI reasoning, and mechanisms for providing feedback.


### Agent Orchestrator

[Adobe Experience Platform Agent Orchestrator](./agents/agent-orchestrator.md) is the new agentic layer in Adobe Experience Platform. Experience Platform Agent Orchestrator 是為了善用平台豐富的資料和客戶知識而設計，其支援專門打造的專家 Adobe Experience Platform Agents 背後運作的智慧和推理能力，使其能夠快速且大規模地執行複雜的決策和解決問題的任務，且全程皆有人工監督。 當您透過像 AI 助理這樣的對話式介面，用自然語言提出問題或要求協助時，Agent Orchestrator 會自動調用專門的代理，為您取得正確的答案。 Agent Orchestrator 會記住您的對話記錄，讓您可以不必複述相關背景資訊，即可自然地在先前問題的基礎上繼續提問，並且結合來自多個代理的洞察，為您提供清楚且統一的回答。

**Core components:**

- **Reasoning Engine**: Creates step-by-step plans and adjusts approaches as needed
- **Specialized Agents**: Purpose-built agents for specific tasks and domains
- **Knowledge Base**: Secure access to business intelligence and documentation

### Specialized Agents

#### Audience 代理

The Audience Agent provides insights about audiences including:

- Detecting significant audience size changes.
- Identifying duplicate audiences.
- Exploring audience inventory.
- Retrieving audience sizes.

Read the [Audience Agent documentation](./agents/audience.md) for more information.

#### Data Insights Agent

Available in Customer Journey Analytics, the Data Insights Agent:

- Answers questions about your data using natural language.
- Builds relevant visualizations in Analysis Workspace.
- Uses components from your dataview and actual data.

#### Journey Analyze Agent

The Journey Analyze Agent enables the Adobe Journey Optimizer users to:

- Analyze, and optimize journeys using natural language.
- Detect and resolve schedule or audience conflicts.
- Analyze performance and drop-off points.

Read the [Journey Agent documentation](./agents/ajo-agent.md) for more information.

#### 產品支援代理

Use the Product Support Agent for self-serve debugging and troubleshooting:

- Troubleshoot Adobe Experience Platform features without leaving workflows.
- Create support tickets with context from AI Assistant interactions.
- Check ticket updates through AI Assistant.

Read the [Product Support Agent documentation](./agents/product-support.md) for more information.

<!--
#### Adobe Marketing Agent for [!DNL Microsoft 365 Copilot]

Use the Adobe Marketing Agent for [!DNL Microsoft 365 Copilot] to retrieve marketing insights from Experience Platform in [!DNL Microsoft 365] apps like [!DNL Teams], [!DNL Word], [!DNL Powerpoint], and [!DNL Excel]. With this agent, you can:

- Make faster, data-driven marketing decisions.
- Reduce time spent switching between tools.
- Simplify access to audience and journey insights across teams.

Read the [Adobe Marketing Agent documentation](./agents/ama-ms.md) for more information.
-->

## 快速入門

### Access requirements

To use AI Assistant and Experience Platform Agents, your Adobe Admin needs to set up the appropriate permissions:

- To use AI Assistant within Real-Time CDP and Adobe Journey Optimizer, you need the &quot;Enable AI Assistant&quot; permission, as well as the &quot;View Operational Insights&quot; permission to access operational questions.
- Access to AI Assistant in Customer Journey Analytics is managed through Customer Journey Analytics Access Control, which allows you to ask both product knowledge and data insights questions.
- For Adobe Experience Manager, you can access AI Assistant through permissions set in the Adobe Admin Console.

### 隱私權與安全性

AI Assistant is built with privacy, security, and governance at the forefront:

- No personal data is used for training.
- All existing access control policies are honored.
- HIPAA-ready when used with Adobe Experience Platform Healthcare Shield.
- 30-day retention policy for interaction logs.
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
