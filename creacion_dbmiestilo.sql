Table "users" {
  "id" INTEGER [pk, increment]
  "name" VARCHAR(255) [unique, not null]
  "email" VARCHAR(255) [not null]
  "password" VARCHAR(255) [not null]
  "gender" VARCHAR(255) [not null]
  "age" INT [not null]
  "interests" VARCHAR(255) [not null]
  "created_at" DATETIME [not null, default: `CURRENT_TIMESTAMP`]
}

Table "products" {
  "id" INTEGER [pk, increment]
  "name" VARCHAR(255) [not null]
  "category" VARCHAR(255) [not null]
  "description" VARCHAR(255) [not null]
  "price" DECIMAL [not null]
  "image_url" VARCHAR(255) [not null]
   "created_at" DATETIME [not null, default: `CURRENT_TIMESTAMP`]
}

Table "categories" {
  "id" INTEGER [pk, increment]
  "name" VARCHAR(255) [not null]
}

Table "sellers" {
  "id" INTEGER [pk, increment]
  "name" VARCHAR(255) [not null]
  "email" VARCHAR(255) [not null]
  "password" VARCHAR(255) [not null]
  "category" VARCHAR(255) [not null]
}

Table "buyers" {
  "id" INTEGER [pk, increment]
  "name" VARCHAR(255) [not null]
  "email" VARCHAR(255) [not null]
  "password" VARCHAR(255) [not null]
}

Table "transactions" {
  "id" INTEGER [pk, increment]
  "date" DATE [not null]
  "seller_id" INTEGER [not null]
  "buyer_id" INTEGER [not null]
  "product_id" INTEGER [not null]
  "payment_method" VARCHAR(255) [not null]
 }

Table "payment_methods" {
  "id" INTEGER [pk, increment]
  "name" VARCHAR(255) [not null]
}

Ref:"categories"."id" < "products"."category"

Ref:"sellers"."id" < "transactions"."seller_id"

Ref:"buyers"."id" < "transactions"."buyer_id"
