summon minecraft:marker ~ ~ ~ {Tags:["chance","key"],Duration:1}
tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=key] run function luigis_mansion:room/hidden/courtyard/bird_house
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] 647 103 27 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #courtyard_bird_house Searched 1
data merge block 647 103 27 {LootTable:"luigis_mansion:search"}