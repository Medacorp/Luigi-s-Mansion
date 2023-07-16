summon minecraft:marker ~ ~ ~ {Tags:["chance","key"],Duration:1}
tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=key] positioned 736 3 -23.0 run function 3ds_remake:room/gallery/chest
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 736 2 -23.0 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #gallery_chest Searched 1
data merge block 736 2 -24 {LootTable:"luigis_mansion:search"}
data merge block 736 2 -23 {LootTable:"luigis_mansion:search"}