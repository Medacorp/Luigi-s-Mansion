summon minecraft:marker ~ ~ ~ {Tags:["interact","vacuum","poltergust"]}
scoreboard players operation #temp Room = @s Room
scoreboard players operation #temp ID = @s ID
tag @s add me
execute as @e[tag=ghost,tag=hurt,tag=!vanish,tag=!boo] if score @s Room = #temp Room run function luigis_mansion:items/poltergust_3000/attacking_ghost
execute as @e[tag=boo] if score @s Room = #temp Room run function luigis_mansion:items/poltergust_3000/attacking_ghost
execute if score #temp GhostCount > @s GhostCount run scoreboard players operation @s GhostCount = #temp GhostCount
execute if score #temp GhostCount matches 1.. as @e[tag=ghost,tag=being_vacuumed] run function luigis_mansion:items/poltergust_3000/catch_ghost
execute if score #temp GhostCount matches 1.. as @e[tag=ghost,tag=being_vacuumed] facing entity @s feet run function luigis_mansion:items/poltergust_3000/vacuuming/ghost
execute unless score #temp GhostCount matches 1.. unless entity @e[tag=ball,distance=..2.5,tag=can_spit,limit=1] run function luigis_mansion:items/poltergust_3000/vacuuming/default
execute unless score #temp GhostCount matches 1.. if entity @e[tag=ball,distance=..2.5,tag=can_spit,limit=1] run function luigis_mansion:items/poltergust_3000/vacuuming/clogged
execute if entity @s[tag=catch_portrait_ghost] unless entity @s[scores={MusicType=29}] run function luigis_mansion:other/music/set/catching_portrait_ghost
execute if entity @s[tag=!catch_portrait_ghost,tag=catch_ghost] unless entity @s[scores={MusicType=28..29}] unless entity @s[scores={MusicType=37}] run function luigis_mansion:other/music/set/catching_ghost
execute if entity @s[tag=!catch_portrait_ghost,tag=!catch_ghost] if entity @s[scores={MusicType=28..29}] run function luigis_mansion:other/music/set/silence
scoreboard players reset #temp GhostCount
scoreboard players reset #temp Room
scoreboard players reset #temp ID
tag @s remove catch_portrait_ghost
tag @s remove catch_ghost
tag @s remove me
tag @s add vacuuming
tag @s add vacuuming_ghost
tag @e[tag=boo,tag=already_hurt] remove already_hurt
tag @e[tag=king_boo,tag=already_hurt] remove already_hurt
kill @e[type=minecraft:marker,tag=interact,limit=1]