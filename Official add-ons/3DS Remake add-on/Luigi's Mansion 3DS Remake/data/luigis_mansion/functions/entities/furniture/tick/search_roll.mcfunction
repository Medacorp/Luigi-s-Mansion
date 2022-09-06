tag @s add searched
execute unless entity @e[distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] rotated ~ 0 unless entity @s[nbt={ArmorItems:[{tag:{loot:{roll_spawnable:1b}}}]}] unless entity @a[tag=portrait_battle,limit=1] run function luigis_mansion:entities/furniture/tick/spawn_dust
execute unless entity @e[distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] rotated ~ 0 if entity @s[nbt={ArmorItems:[{tag:{loot:{roll_spawnable:1b}}}]}] unless entity @a[tag=portrait_battle,limit=1] run function luigis_mansion:entities/furniture/tick/spawn_contents
tag @e[distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar,limit=1] add spawn
tag @e[distance=..0.7,tag=ghost,tag=hidden,tag=new_ghost,limit=1] add spawn