

Table "categories" {
  "id" INT [pk, not null, increment]
  "name" VARCHAR(255) [not null]
}

Table "sellers" {
  "id" INT [pk, not null, increment]
  "username" VARCHAR(255) [not null]
  "email" VARCHAR(255) [not null]
  "password" VARCHAR(255) [not null]
  "category_id" INT [not null]
}

Table "buyers" {
  "id" INT [pk, not null, increment]
  "username" VARCHAR(255) [not null]
  "email" VARCHAR(255) [not null]
  "password" VARCHAR(255) [not null]
}

Table "transactions" {
  "id" INT [pk, not null, increment]
  "date" DATE [not null]
  "seller_id" INT [not null]
  "buyer_id" INT [not null]
  "product_id" INT [not null]
  "payment_method" VARCHAR(255) [not null]
}

Table "product_transactions" {
  "id" INT [pk, not null, increment]
  "product_id" INT [not null]
  "transaction_id" INT [not null]
}

Table "payment_methods" {
  "name" VARCHAR(255) [pk, not null]
}



Ref:"categories"."id" < "products"."category"

Ref:"sellers"."id" < "transactions"."seller_id"

Ref:"buyers"."id" < "transactions"."buyer_id"
