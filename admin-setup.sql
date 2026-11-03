-- Run in Supabase SQL Editor AFTER creating the user
-- (Authentication > Users > Add user: admin@bunyad.pk / bunyad@123, Auto Confirm ON)
update auth.users
set raw_app_meta_data = coalesce(raw_app_meta_data, '{}'::jsonb) || '{"role":"admin"}'::jsonb
where email = 'admin@bunyad.pk';