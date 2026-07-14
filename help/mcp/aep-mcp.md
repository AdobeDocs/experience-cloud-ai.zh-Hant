---
title: CX Co-worker Gateway中的Adobe Experience Platform工具
description: 瞭解可透過CX Co-worker Gateway使用的Adobe Experience Platform工具。
source-git-commit: adb72f43865bee5b2b151a5a75994c5f3939c2d9
workflow-type: tm+mt
source-wordcount: '1372'
ht-degree: 8%

---


# Adobe CX Co-worker Gateway中的Adobe Experience Platform工具 {#aep-mcp}

您可以使用Adobe Experience Platform產品工具從MCP相容的使用者端檢查結構描述、資料集、資料控管設定、查詢服務資源和稽核事件。 當您的組織已啟用，且您的使用者帳戶擁有必要的Experience Platform許可權時，即可透過[Adobe CX Co-worker Gateway](overview.md)取得這些工具。

>[!AVAILABILITY]
>
>Experience Platform產品工具位於Beta。 存取許可權僅限透過邀請，且需要Adobe組織啟用。 請參閱[存取CX Co-worker Gateway工具](access.md)。

## 摘要

| 工具 | 說明 | 資源 | 功能 | 狀態 |
| --- | --- | --- | --- | --- |
| `search_allowed_ip_ranges` | 擷取查詢服務IP存取限制 | 資料Distiller驗證· IP範圍 | list | 作用中 |
| `search_audit` | 列出Experience Platform中的使用者活動稽核事件 | 稽核查詢·稽核事件 | 清單，依資產型別篩選，動作，狀態，時間範圍 | 作用中 |
| `search_datasets` | 查詢資料集和批次擷取中繼資料 | 目錄API ·資料集，批次 | 清單，取得，篩選，列出上一個，列出檔案 | 作用中 |
| `search_class_relations` | 搜尋Experience Platform企業級關係 | 類別關係·靜態YAML索引 | 依權杖、多詞語、部分比對搜尋 | 作用中 |
| `search_data_access` | 列出失敗擷取批次中的檔案 | 資料存取API ·失敗的批次 | 列出失敗的檔案 | 作用中 |
| `search_data_lake` | 檢查資料集中繼資料和批次健康狀況 | Data Lake API ·資料集，批次 | get、get size、列出失敗的批次 | 作用中 |
| `search_dule` | 查詢資料治理標籤、原則、動作 | 資料控管·標籤、原則、行銷動作 | 清單，取得，清單啟用，評估 | 作用中 |
| `search_query_service` | 查詢SQL查詢、範本、排程、警示 | 查詢服務·查詢、範本、排程、警示 | 清單，取得，篩選，取得連線引數 | 作用中 |
| `search_schema_registry` | 查詢XDM結構描述、欄位群組、類別、型別 | 結構描述登入·結構描述、欄位群組、類別、資料型別、描述項 | 清單，取得，依容器篩選 | 作用中 |

## 工具參考

### search_allowed_ip_ranges

**資源：**&#x200B;資料Distiller驗證· IP範圍
**狀態：**&#x200B;作用中

為目前沙箱中的查詢服務擷取所有已設定的IP存取限制。 傳回組織ID和允許的IP範圍清單。 僅適用於擁有資料Distiller附加元件的客戶。

**功能：**&#x200B;列出查詢服務允許的IP範圍

無引數。

### search_audit

**資源：**&#x200B;稽核查詢·稽核事件
**狀態：**&#x200B;作用中

列出跨Experience Platform服務的使用者活動時間戳記記錄。 傳回動作型別、使用者電子郵件、資產資訊和事件狀態。 使用`asset_type`和`action`來縮小結果範圍。 若未指定時間範圍，預設為過去7天。 限於過去90天的前1000筆記錄和事件。

**功能：**&#x200B;列出稽核事件，依資產型別篩選、動作、狀態、時間範圍、分頁

**引數：**

| 參數 | 必要 | 說明 |
| --- | --- | --- |
| `action` | 無 | 依動作型別篩選。 通用值（OR以逗號分隔）： `Create`， `Delete`， `Update`， `Enable`， `Disable` |
| `asset_type` | 無 | 依資產型別篩選。 必須是： `Dataset`、`Schema`、`Segment`、`Destination`、`Source Data Flow`、`Merge Policy`、`Identity Namespace`、`Identity Graph`、`Sandbox`、`Role`、`Query`、`Scheduled Query`、`Datastream`、`Computed Attribute`、`Field Group`、`Class`、`Data Types`、`Account`、`Product Profile`、`Query Template`、`Work Order`、`Audit Logs`、`Access Control Policy`其中之一 |
| `status` | 無 | 依事件狀態篩選。 值： `Success`、`Failure`、`Allow`、`Deny`。 OR需以逗號分隔 |
| `start_time` | 無 | 最早的時間戳記。 ISO 8601 UTC搭配ms，例如`2024-01-15T00:00:00.000Z` |
| `end_time` | 無 | 最新時間戳記。 ISO 8601 UTC含ms |
| `property_filter` | 無 | 原始篩選運算式，例如`action==create`。 偏好上述專用引數 |
| `orderby` | 無 | 排序順序： `timestamp` (asc)或`-timestamp` (desc) |
| `limit` | 無 | 結果數量上限（3-1000、預設50） |
| `start` | 無 | 分頁位移。 每頁按限制值增加 |
| `query_id` | 無 | 來自先前回應的查詢ID以重複相同查詢 |

### search_dataset

**資源：**&#x200B;目錄API ·資料集，批次
**狀態：**&#x200B;作用中

Experience Platform目錄服務的統一派遣工具。 查詢資料集中繼資料（結構描述參考、標籤、建立資訊）或批次擷取記錄（狀態、量度、檔案清單）。 使用`dataset/list`來探索資料集，`batch/list`來檢查擷取健全狀態，以及`batch/list_files`或`batch/get_meta_files`來檢查特定批次內容。 所有作業均為唯讀。

**功能：**&#x200B;列出資料集、取得資料集、列出批次、取得批次、列出每個資料集的最後一個批次、列出批次檔案、取得批次中繼檔案（列錯誤、輸入檔案）

**引數：**

| 參數 | 必要 | 說明 |
| --- | --- | --- |
| `entity_type` | 是 | `dataset`或 `batch` |
| `operation` | 是 | `list`, `get`, `list_last`, `list_files`, `get_meta_files`. 有效的組合：資料集→ list， get；批次→全部五個 |
| `resource_id` | 無 | 資料集或批次識別碼。 需要`dataset/get`、`batch/get`、`batch/list_files`、`batch/get_meta_files` |
| `query_params.limit` | 無 | 每頁最多結果數（最多100個）。 套用至所有清單作業 |
| `query_params.start` | 無 | 分頁位移。 套用至所有清單作業 |
| `query_params.order_by` | 無 | 排序方向，例如`asc:created,updated`。 套用至所有清單作業 |
| `query_params.properties` | 無 | 逗號分隔的屬性允許清單。 套用至資料集/清單、資料集/取得、批次/清單、批次/list_last |
| `query_params.name` | 無 | 依名稱篩選資料集（僅限資料集/清單） |
| `query_params.tags` | 無 | 依標籤（例如`unifiedProfile:enabled:true`）篩選資料集 （僅限資料集/清單） |
| `query_params.property_filter` | 無 | 回應物件（資料集/清單和批次/清單）上的Regex篩選 |
| `query_params.status` | 無 | 依狀態篩選批次： `success`、`failed`、`loading`、`active` （僅限批次/清單） |
| `query_params.dataset_id` | 無 | 將批次範圍設定為特定資料集（批次/清單和batch/list_last） |
| `query_params.created_after` | 無 | 在Unix時間戳記（以毫秒為單位）之後建立的篩選批次（僅限批次/清單） |
| `query_params.created_before` | 無 | 在Unix時間戳記之前（以毫秒為單位）建立的篩選批次（僅限批次/清單） |
| `query_params.last_batch_status` | 無 | 依上一個批次狀態篩選（僅限batch/list_last） |
| `query_params.aggregate` | 無 | 傳回根層級的彙總量度（僅限批次/取得） |
| `query_params.path` | 無 | 要下載的Meta檔案： `row_errors`、`input_files`、`row_errors_sample.json` （僅限批次/get_meta_files） |

### search_class_relations

**資源：**&#x200B;類別關係·靜態YAML索引
**狀態：**&#x200B;作用中

使用靜態`class_relations_v1.yaml`索引，依名稱搜尋Experience Platform企業類別關係。 未執行Experience Platform API呼叫。 接受單一字詞或逗號分隔的字詞；每個字詞使用部分權杖比對來比對類別名稱。 傳回具有正向關係（每個類別指向的內容）和反向關係（哪些類別指向它）的相符類別。 在建立查詢、資料流或結構描述組合之前，使用此資訊來瞭解實體關係。

**功能：**&#x200B;依權杖搜尋、以逗號分隔的多詞搜尋、部分權杖比對、雙向同義字擴增

**引數：**

| 參數 | 必要 | 說明 |
| --- | --- | --- |
| `query` | 是 | 要搜尋的企業類別名稱或物件型別。 支援部分語彙基元符合（`dat`符合`dataset`、`data_type`等）。 傳遞多個以逗號分隔的辭彙，以一次搜尋多個類別（例如`dataset, schema`） |
| `n` | 無 | 要傳回的相符結果數上限（預設為5，最小為1） |

### search_data_access

**資源：**&#x200B;資料存取API ·失敗的批次
**狀態：**&#x200B;作用中

從失敗的Experience Platform資料擷取批次存取檔案。 使用`failed_batch/list_failed`列出屬於失敗批次的檔案以進行失敗診斷。 所有作業都需要批次ID。 注意： `file/get`和`dataset/preview`已停用，因為它們會公開實際記錄資料。 所有作業均為唯讀。

**功能：**&#x200B;從失敗的內嵌批次中列出檔案

**引數：**

| 參數 | 必要 | 說明 |
| --- | --- | --- |
| `entity_type` | 是 | `failed_batch` — 列出失敗擷取批次中的檔案 |
| `operation` | 是 | `list_failed` — 唯一支援的作業 |
| `resource_id` | 是 | 失敗批次的批次ID |
| `query_params.start` | 無 | 分頁起始索引，例如`1` |
| `query_params.limit` | 無 | 每頁的結果數，如`10` |
| `query_params.path` | 無 | 完整的檔案名稱篩選器，例如`profiles.csv` |


### search_data_lake

**資源：**&#x200B;資料湖API ·資料集，批次
**狀態：**&#x200B;作用中

從Data Lake層檢查資料集並批次中繼資料。 使用`get`代表完整的中繼資料，`get_size`代表儲存和擷取大小量度，並使用`list_failed`來監視時間範圍內的擷取失敗。 未提供`list_failed`的時間範圍時，預設為過去7天。 所有作業均為唯讀，且需要資源ID。

**功能：**&#x200B;取得資料集/批次中繼資料、取得儲存大小量度、列出一段時間內失敗的批次

**引數：**

| 參數 | 必要 | 說明 |
| --- | --- | --- |
| `entity_type` | 是 | `dataset`或 `batch` |
| `operation` | 是 | `get`, `get_size`, `list_failed`. `list_failed`僅支援`batch`實體型別 |
| `resource_id` | 是 | 資料集ID或批次識別碼。 針對`list_failed`：將失敗範圍設定為的資料集識別碼 |
| `query_params.created_after` | 無 | 時間範圍的開始。 Unix時間戳記（以毫秒為單位） |
| `query_params.created_before` | 無 | 時間範圍結束。 Unix時間戳記（以毫秒為單位） |
| `query_params.limit` | 無 | 每頁最多結果數（最多100個） |
| `query_params.order_by` | 無 | 排序方向，例如`desc:created` |

### search_dule

**資源：**&#x200B;資料控管·標籤、原則、marketing_actions
**狀態：**&#x200B;作用中

查詢原則服務API，以取得資料使用標籤、原則和行銷動作。 使用`marketing_action/evaluate`測試對具有特定標籤之資料的行銷動作是否會違反任何治理原則。 所有作業均為唯讀。

**功能：**&#x200B;清單/取得資料使用標籤、清單/取得原則、清單啟用的原則、清單/取得行銷動作、根據標籤評估行銷動作

**引數：**

| 參數 | 必要 | 說明 |
| --- | --- | --- |
| `entity_type` | 是 | `label`、`policy`或`marketing_action` |
| `operation` | 是 | `list`、`get`、`list_enabled` （僅限原則）、`evaluate` （僅限行銷動作）。 `list_enabled`不需要範圍 |
| `scope` | 無 | `core` （Adobe定義）或`custom` （組織定義）。 `list`、`get`、`evaluate`的必要專案；未用於`list_enabled` |
| `resource_id` | 無 | 標簽名稱、原則ID或行銷動作名稱。 `get`和`evaluate`的必要專案 |
| `query_params.dule_labels` | 無 | 逗號分隔標籤（例如`C1,C3`）。 `marketing_action/evaluate`的必要專案；`policy/list`的選用篩選器 |
| `query_params.limit` | 無 | 最大結果 |
| `query_params.start` | 無 | 上一個回應的`_page.next`值中的分頁遊標 |
| `query_params.orderby` | 無 | 逗號分隔的排序欄位 |
| `query_params.property_filter` | 無 | 篩選運算式，例如`name==C1` |
| `query_params.marketing_action` | 無 | 將原則清單限製為參照此行銷動作的原則（僅限原則/清單） |
| `query_params.include_draft` | 無 | 在`marketing_action/evaluate`中包含DRAFT原則（預設：僅限啟用的原則） |

### search_query_service

**資源：**&#x200B;查詢服務·查詢、範本、排程、排程執行、連線、警示訂閱
**狀態：**&#x200B;作用中

查詢服務資源的統一工具。 列出並擷取特定查詢、儲存的SQL範本、排程的查詢及其執行、互動式連線引數（適用於psql/JDBC使用者端）以及警示訂閱。 對於查詢清單，預設為`isService==false,isParentLevel==true`以篩選掉內部流量。 所有作業均為唯讀。

**功能：**&#x200B;清單/取得查詢、清單/取得範本、清單/取得排程、清單/取得排程執行、取得連線引數、列出警示訂閱

**引數：**

| 參數 | 必要 | 說明 |
| --- | --- | --- |
| `entity_type` | 是 | `query`, `query_template`, `schedule`, `schedule_run`, `connection`, `alert_subscription` |
| `operation` | 是 | `list`, `get`, `get_connection_params`, `list_by_u...` |
