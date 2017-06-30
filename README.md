# Wantedlyデータベース設計
==========================
* ユーザー管理
* 企業管理
* 求人詳細管理
* 応募管理 (中間テーブル(ユーザー&企業))
* 雇用形態管理
* 職種管理
* 地域管理
* 特徴管理

## users

|column|type|option|
|:--:|:--:|:--:|
|name|string|null: false|
|e-mail|string|null: false, unique: true|
|password|string|null: false|

### Association

- has_many: applies

## companies

|column|type|option|
|:--:|:--:|:--:|
|name|string|null: false, index: true|
|e-mail|string|null: false, unique: true|
|address|text||
|founder_name|text||
|est_date|date||
|sum_member|integer||
|Industry|text||

### Association

- has_many: applies
- has_many: offers

## offers

|column|type|option|
|:--:|:--:|:--:|
|company_id|references :company, foreign_key: true||
|title|string|null: false|
|image|string|null: false|
|body|text||

### Association

- belongs_to: company
- has_many: job_types
- has_many: job_categories
- has_many: regions
- has_many: characteristics


### Association

- belongs_to: user
- belongs_to: company

## applies (中間テーブル)

|column|type|option|
|:--:|:--:|:--:|
|user_id|references :user, foreign_key: true||
|company_id|references :company, foreign_key: true||

### Association

- belongs_to: user
- belongs_to: company

## job_types

|column|type|option|
|:--:|:--:|:--:|
|offer_id|references :offer, foreign_key: true||
|type|string|null: false|

### Association

- belongs_to: offer

## job_categories

|column|type|option|
|:--:|:--:|:--:|
|offer_id|references :offer, foreign_key: true||
|category|string|null: false|

### Association

- belongs_to: offer

## regions

|column|type|option|
|:--:|:--:|:--:|
|offer_id|references :offer, foreign_key: true||
|region|string|null: false|

### Association

- belongs_to: offer

## characteristics

|column|type|option|
|:--:|:--:|:--:|
|offer_id|references :offer, foreign_key: true||
|characteristic|string||

### Association

- belongs_to: offer
