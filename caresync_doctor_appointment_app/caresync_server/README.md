- Bikin Database Migrations
- Buat API-nya di Laravel
- Buat Dokumentasi-nya di Postman

/api/doctors
/api/doctor_schedules
/api/specializations
/api/orders

1. Buat Project Laravel
2. Migrasikan Database yang diperlukan 


Buatlah migrasi utk tabel

users
---
photo
name
email
address
phone_number
whatsapp_number

doctors
---
doctor_name
photo
specializations_id
hospital_id

hospitals
---
photo
hospital_name
hospital_address
hospital_location_latitude
hospital_location_longitude


doctor_schedules
---
hospital_id
doctor_id
schedule_date
schedule_time (string)
patient_limit


specializations
---
specialization_name

orders
---
doctor_id
user_id
schedule_id
patient_name
patient_dob
patient_gender
patient_id_card
patient_address
patient_phone_number
patient_whatsapp_number
payment_type (string)
payment_transaction_id (string)
payment_order_id (string)
payment_transaction_status (string)
payment_callback_detail (string)

