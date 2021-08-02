execute if entity @s[scores={ResetMansion=1}] run function luigis_mansion:other/login_data_sync/reset_mansion_data

execute if data storage luigis_mansion:data rooms.underground_lab{cleared:1b} run advancement grant @a only luigis_mansion:lab/lab
execute if data storage luigis_mansion:data rooms.underground_lab{cleared:1b} run advancement grant @a only luigis_mansion:lab/underground_lab
execute if data storage luigis_mansion:data rooms.training_room{cleared:1b} run advancement grant @a only luigis_mansion:lab/training_room
execute if data storage luigis_mansion:data rooms.gallery{cleared:1b} run advancement grant @a only luigis_mansion:lab/gallery
execute if data storage luigis_mansion:data rooms.ghost_portrificationizer_room{cleared:1b} run advancement grant @a only luigis_mansion:lab/ghost_portrificationizer_room
execute if entity @a[advancements={luigis_mansion:lab/cleared_mansion=true}] run advancement grant @a only luigis_mansion:lab/cleared_mansion
execute if entity @a[advancements={luigis_mansion:lab/unlocked_hidden_mansion=true}] run advancement grant @a only luigis_mansion:lab/unlocked_hidden_mansion
execute if entity @a[advancements={luigis_mansion:lab/cleared_hidden_mansion=true}] run advancement grant @a only luigis_mansion:lab/cleared_hidden_mansion
execute if entity @a[advancements={luigis_mansion:lab/h_rank=true}] run advancement grant @a only luigis_mansion:lab/h_rank
execute if entity @a[advancements={luigis_mansion:lab/g_rank=true}] run advancement grant @a only luigis_mansion:lab/g_rank
execute if entity @a[advancements={luigis_mansion:lab/f_rank=true}] run advancement grant @a only luigis_mansion:lab/f_rank
execute if entity @a[advancements={luigis_mansion:lab/e_rank=true}] run advancement grant @a only luigis_mansion:lab/e_rank
execute if entity @a[advancements={luigis_mansion:lab/d_rank=true}] run advancement grant @a only luigis_mansion:lab/d_rank
execute if entity @a[advancements={luigis_mansion:lab/c_rank=true}] run advancement grant @a only luigis_mansion:lab/c_rank
execute if entity @a[advancements={luigis_mansion:lab/b_rank=true}] run advancement grant @a only luigis_mansion:lab/b_rank
execute if entity @a[advancements={luigis_mansion:lab/a_rank=true}] run advancement grant @a only luigis_mansion:lab/a_rank