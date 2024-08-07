execute at @s unless block ~ ~-0.1 ~ #luigis_mansion:interact_ignore rotated ~ 0 run summon minecraft:marker ^ ^0.1 ^1 {Tags:["interact","manual","check","1","down"]}
execute at @s unless block ~ ~-0.1 ~ #luigis_mansion:interact_ignore rotated ~ 0 run summon minecraft:marker ^ ^1.1 ^1 {Tags:["interact","manual","check","2","up"]}
execute at @s unless block ~ ~-0.1 ~ #luigis_mansion:interact_ignore rotated ~ 0 run summon minecraft:marker ^ ^2.1 ^1 {Tags:["interact","manual","check","3"]}
execute at @s if block ~ ~-0.1 ~ #luigis_mansion:interact_ignore unless block ~ ~2 ~ #luigis_mansion:interact_ignore rotated ~ 0 run summon minecraft:marker ^ ^0.1 ^1 {Tags:["interact","manual","check","1","up"]}
execute at @s if block ~ ~-0.1 ~ #luigis_mansion:interact_ignore unless block ~ ~2 ~ #luigis_mansion:interact_ignore rotated ~ 0 run summon minecraft:marker ^ ^1.1 ^1 {Tags:["interact","manual","check","2","down"]}
execute at @s if block ~ ~-0.1 ~ #luigis_mansion:interact_ignore unless block ~ ~2 ~ #luigis_mansion:interact_ignore rotated ~ 0 run summon minecraft:marker ^ ^-0.9 ^1 {Tags:["interact","manual","check","3"]}
#todelete - old furniture
tag @s add searcher
execute as @e[tag=interact,tag=manual] at @s unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:barrier unless block ~ ~ ~ minecraft:light run function luigis_mansion:room/interactions
tag @s remove searcher
#/todelete
execute at @e[tag=interact,tag=manual] as @e[tag=furniture,tag=!door,tag=same_room,tag=affected_by_interact] run function luigis_mansion:items/interact/target_furniture/find
scoreboard players reset #interact
execute if entity @e[tag=interact,tag=manual,tag=can_interact,limit=1] run scoreboard players set @s InteractionTime 1
execute if entity @e[tag=interact,tag=manual,tag=can_interact,tag=can_search,tag=2,limit=1] run tag @s add 2
execute if entity @e[tag=interact,tag=manual,tag=can_interact,tag=can_search,tag=1,limit=1] run tag @s[tag=!2] add 1
execute if entity @e[tag=interact,tag=manual,tag=can_interact,tag=can_search,tag=3,limit=1] run tag @s[tag=!1,tag=!2] add 3
execute if entity @e[tag=interact,tag=manual,tag=can_interact,tag=2,limit=1] run tag @s[tag=!1,tag=!3] add 2
execute if entity @e[tag=interact,tag=manual,tag=can_interact,tag=1,limit=1] run tag @s[tag=!2,tag=!3] add 1
execute if entity @e[tag=interact,tag=manual,tag=can_interact,tag=3,limit=1] run tag @s[tag=!1,tag=!2] add 3
execute unless entity @s[scores={InteractionTime=1..}] at @e[tag=interact,tag=manual,tag=up,limit=1] unless block ~ ~ ~ #luigis_mansion:interact_ignore run function luigis_mansion:items/interact/wall
kill @e[tag=interact,tag=manual]