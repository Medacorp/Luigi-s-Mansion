tag @s add searcher
scoreboard players operation #temp Room = @s Room
execute at @s[scores={Shrunk=0},nbt={OnGround:1b}] rotated ~ 0 run summon minecraft:marker ^ ^0.8 ^1 {Tags:["interact","manual","check"]}
execute at @s[scores={Shrunk=0},nbt={OnGround:0b,ActioneEffects:[{Id:25b}]}] rotated ~ 0 run summon minecraft:marker ^ ^0.8 ^1 {Tags:["interact","manual","check"]}
execute as @e[tag=interact,tag=manual,limit=1] at @s unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:light unless block ~ ~ ~ minecraft:barrier run function luigis_mansion:room/interactions
execute if entity @e[tag=interact,tag=manual,tag=can_interact,limit=1] run scoreboard players set @s InteractionTime 1
execute at @e[tag=interact,tag=manual,tag=!can_interact,limit=1] unless block ~ ~1 ~ #luigis_mansion:interact_ignore run function luigis_mansion:items/interact/wall
execute unless entity @s[scores={InteractionTime=1..}] unless entity @s[scores={YellTime=1..}] run scoreboard players set @s[scores={Room=1..}] YellTime 1
kill @e[tag=interact,tag=manual,limit=1]
scoreboard players reset #temp Room
tag @s remove searcher
scoreboard players set @s UseItem 0