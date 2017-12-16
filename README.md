# README


* Adding Custom Fields to Devise       
http://www.peoplecancode.com/tutorials/adding-custom-fields-to-devise

* Right-Aligned Navigation Bar         
https://www.w3schools.com/bootstrap/bootstrap_navbar.asp

* Model 關連性(關連：一對一, 一對多, 多對多)      
http://railsbook.tw/chapters/18-model-relationship.html#many-to-many-relationship

# Check Box Tag(多對多Model)
### 產生第三方 Model
```
$ bin/rails g model LinksServiceTime link:references service_time_category:references
```
執行 `bin/rails db:migrate`

用 references 的寫法會多做幾件事：
```
1.自動加上索引（index），加快查詢速度。
2.自動幫 Model 加上 belongs_to
```
### 編輯 app/models/links_service_times.rb
```
# 檔案 app/models/links_service_times.rb
class LinksServiceTime < ApplicationRecord
  belongs_to :link
  belongs_to :service_time_category
end
```
因為使用 references 的寫法，所以自動有幫你補上這兩行 belongs_to 方法，但如果沒有也沒關係，自己手動輸入即可。接著回到 Link Model，加上以下兩行：

```
# 檔案 app/models/link.rb
class Link < ApplicationRecord
  belongs_to :user

  has_many :links_service_times
  has_many :service_time_categories, through: :links_service_times
end
```
然後同樣也在 ServiceTimeCategory Model 加上這兩行：
```
# 檔案 app/models/service_time_category.rb
class ServiceTimeCategory < ApplicationRecord
  has_many :links_service_times
  has_many :links, through: :links_service_times
end
```
`LinksServiceTime Model` 同時 `belongs_to` Link 以及 ServiceTimeCategory 這兩個 Model，然後 Link 跟 ServiceTimeCategory 這兩個 Model 也都 `has_many :links_service_times`。

### 修改controller的permit
```
def link_params
  params.require(:link).permit(:titile, :description, :favicon, :image, :announce_date, :url, :service_time_category_ids => [])
end
```
### 修改_form.html.erb的collection_check_boxes
```
<div class="field">
  聚會時間分類<br>
  <%= form.collection_check_boxes :service_time_category_ids, ServiceTimeCategory.all, :id, :name, class:"form-control" %>
</div><br>
```
### 記得在兩個要join的table加上互相的id
```
create_table "links", force: :cascade do |t|
  t.string "titile"
  t.string "description"
  t.string "favicon"
  t.string "image"
  t.string "announce_date"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
  t.string "url"
  t.integer "user_id"
  t.integer "service_time_category_id"
  t.index ["user_id"], name: "index_links_on_user_id"
end
```

```
create_table "service_time_categories", force: :cascade do |t|
  t.string "name"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
  t.integer "link_id"
end
```
