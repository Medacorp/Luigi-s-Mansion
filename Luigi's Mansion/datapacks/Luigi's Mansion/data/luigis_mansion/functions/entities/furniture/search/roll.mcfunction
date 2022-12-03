tag @s add searched
tag @s add open
execute unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] rotated ~ 0 unless entity @s[nbt={ArmorItems:[{tag:{loot:{}}}]}] if entity @s[tag=!no_dust] run function luigis_mansion:entities/furniture/spawn/dust
execute unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] rotated ~ 0 if entity @s[nbt={ArmorItems:[{tag:{loot:{no_roll:1b}}}]}] if entity @s[tag=!no_dust] run function luigis_mansion:entities/furniture/spawn/dust
execute unless entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] rotated ~ 0 if entity @s[nbt={ArmorItems:[{tag:{loot:{}}}]}] unless entity @s[nbt={ArmorItems:[{tag:{loot:{no_roll:1b}}}]}] run function luigis_mansion:entities/furniture/spawn/contents
execute if data entity @s[tag=search] ArmorItems[3].tag.dialog run function luigis_mansion:entities/furniture/trigger_dialog
execute positioned ~ ~1.4 ~ if entity @e[distance=..0.1,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] rotated ~ 0 run function luigis_mansion:entities/furniture/spawn/boo
execute positioned ~ ~1.4 ~ if entity @e[distance=..0.1,tag=ghost,tag=hidden,tag=new_ghost,limit=1] rotated ~ 0 run function luigis_mansion:entities/furniture/spawn/ghost
scoreboard players reset @s SearcherID