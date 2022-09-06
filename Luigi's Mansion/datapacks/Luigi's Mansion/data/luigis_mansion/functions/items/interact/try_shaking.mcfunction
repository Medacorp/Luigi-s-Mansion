execute at @s[nbt={OnGround:1b}] rotated ~ 0 run summon minecraft:marker ^ ^0.1 ^1 {Tags:["interact","manual","check","1"]}
execute at @s[nbt={OnGround:1b}] rotated ~ 0 run summon minecraft:marker ^ ^1.1 ^1 {Tags:["interact","manual","check","2","up"]}
execute at @s[nbt={OnGround:1b}] rotated ~ 0 run summon minecraft:marker ^ ^2.1 ^1 {Tags:["interact","manual","check","3"]}
execute at @s[nbt={OnGround:0b,ActiveEffects:[{Id:25}]}] rotated ~ 0 run summon minecraft:marker ^ ^0.1 ^1 {Tags:["interact","manual","check","1","up"]}
execute at @s[nbt={OnGround:0b,ActiveEffects:[{Id:25}]}] rotated ~ 0 run summon minecraft:marker ^ ^1.1 ^1 {Tags:["interact","manual","check","2"]}
execute at @s[nbt={OnGround:0b,ActiveEffects:[{Id:25}]}] rotated ~ 0 run summon minecraft:marker ^ ^-0.9 ^1 {Tags:["interact","manual","check","3"]}
#to delete
execute as @e[tag=interact,tag=manual] at @s run function luigis_mansion:room/interactions
#/to delete
execute at @e[tag=interact,tag=manual] as @e[tag=furniture,tag=same_room] run function luigis_mansion:items/interact/target_furniture/find
execute if entity @e[tag=interact,tag=manual,tag=can_interact,limit=1] run scoreboard players set @s InteractionTime 1
execute if entity @e[tag=interact,tag=manual,tag=can_interact,tag=2,limit=1] run tag @s add 2
execute if entity @e[tag=interact,tag=manual,tag=can_interact,tag=1,limit=1] run tag @s[tag=!2] add 1
execute if entity @e[tag=interact,tag=manual,tag=can_interact,tag=3,limit=1] run tag @s[tag=!1,tag=!2] add 3
execute unless entity @s[scores={InteractionTime=1..}] at @e[tag=interact,tag=manual,tag=up,limit=1] unless block ~ ~ ~ #luigis_mansion:interact_ignore run function luigis_mansion:items/interact/wall
kill @e[tag=interact,tag=manual]