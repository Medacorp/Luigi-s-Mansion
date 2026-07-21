execute at @s unless block ~ ~-0.1 ~ #luigis_mansion:interact_ignore rotated ~ 0 run summon minecraft:marker ^ ^0.5 ^0.5 {Tags:["interact","manual"]}
scoreboard players set @e[tag=interact,tag=manual,limit=1] FurnitureSize 2147483647
execute if entity @s[tag=!gooigi] at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room,tag=can_approach] run function luigis_mansion:items/interact/target_furniture/find
execute if entity @s[tag=gooigi] at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room,tag=can_approach,tag=!no_gooigi] run function luigis_mansion:items/interact/target_furniture/find
tag @s add me
execute if entity @e[tag=interact,tag=manual,tag=can_interact,limit=1] run function 3ds_remake:items/interact/trigger_furniture with entity @e[tag=interact,tag=manual,limit=1] data
tag @s remove me
kill @e[tag=interact,tag=manual]