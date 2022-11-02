scoreboard players set @s FurnitureSpins 0
tag @s add open
execute unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] rotated ~ 0 unless entity @s[nbt={ArmorItems:[{tag:{loot:{}}}]}] if entity @s[tag=!no_dust] run function luigis_mansion:entities/furniture/tick/spawn_dust
execute unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] rotated ~ 0 if entity @s[nbt={ArmorItems:[{tag:{loot:{}}}]}] run function luigis_mansion:entities/furniture/tick/spawn_contents
execute if data entity @s[tag=search] ArmorItems[3].tag.dialog run function luigis_mansion:entities/furniture/tick/trigger_dialog
execute if entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] rotated ~ 0 run function luigis_mansion:entities/furniture/tick/spawn_boo
execute if entity @e[distance=..0.1,tag=ghost,tag=hidden,tag=new_ghost,limit=1] rotated ~ 0 run function luigis_mansion:entities/furniture/tick/spawn_ghost
scoreboard players reset @s SearcherID