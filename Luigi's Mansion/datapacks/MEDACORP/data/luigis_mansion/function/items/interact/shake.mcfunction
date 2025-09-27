execute at @s[tag=1] unless block ~ ~-0.1 ~ #luigis_mansion:interact_ignore rotated ~ 0 run summon minecraft:marker ^ ^0.1 ^0.5 {Tags:["interact","manual","feet"]}
execute at @s[tag=1] if block ~ ~-0.1 ~ #luigis_mansion:interact_ignore rotated ~ 0 run summon minecraft:marker ^ ^0.1 ^0.5 {Tags:["interact","manual"]}
execute at @s[tag=2] unless block ~ ~-0.1 ~ #luigis_mansion:interact_ignore rotated ~ 0 run summon minecraft:marker ^ ^1.1 ^0.5 {Tags:["interact","manual"]}
execute at @s[tag=2] if block ~ ~-0.1 ~ #luigis_mansion:interact_ignore rotated ~ 0 run summon minecraft:marker ^ ^1.1 ^0.5 {Tags:["interact","manual","feet"]}
execute at @s[tag=3] unless block ~ ~-0.1 ~ #luigis_mansion:interact_ignore rotated ~ 0 run summon minecraft:marker ^ ^2.1 ^0.5 {Tags:["interact","manual"]}
execute at @s[tag=3] if block ~ ~-0.1 ~ #luigis_mansion:interact_ignore rotated ~ 0 run summon minecraft:marker ^ ^-0.9 ^0.5 {Tags:["interact","manual"]}
tag @s add searcher
scoreboard players add @s InteractionTime 1
tag @s[scores={InteractionTime=2}] add reset_rotation
execute if entity @s[scores={InteractionTime=2}] at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room,tag=affected_by_interact] run function luigis_mansion:items/interact/target_furniture/get_animation
execute if entity @s[scores={InteractionTime=2}] unless data entity @s data.animation if predicate luigis_mansion:luigi/search/knock_chance run function luigis_mansion:entities/luigi/animation/set/search/knock
execute if entity @s[scores={InteractionTime=2}] unless data entity @s data.animation if predicate luigis_mansion:luigi/search/hump_chance run function luigis_mansion:entities/luigi/animation/set/search/hump
execute if entity @s[scores={InteractionTime=2}] unless data entity @s data.animation run function luigis_mansion:entities/luigi/animation/set/search/bash
execute if data entity @s data.animation{namespace:"luigis_mansion",id:"search/hump"} run tag @e[tag=interact,tag=manual,limit=1] add long_shake
execute if entity @s[scores={InteractionTime=2}] unless data entity @s data.animation{namespace:"luigis_mansion",id:"search/hump"} run tag @e[tag=interact,tag=manual,limit=1] add fake_shake
execute if entity @s[scores={InteractionTime=2},tag=!not_facing] at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room,tag=shaken_by_interact] run function luigis_mansion:items/interact/target_furniture/shake
execute if entity @s[scores={InteractionTime=2},tag=wall_bump] run function luigis_mansion:blocks/search_sound/wall
execute if entity @s[scores={InteractionTime=9},tag=!not_facing] if data entity @s data.animation{namespace:"luigis_mansion",id:"search/knock"} at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room,tag=shaken_by_interact] run function luigis_mansion:items/interact/target_furniture/shake
execute if entity @s[scores={InteractionTime=9},tag=!not_facing] if data entity @s data.animation{namespace:"luigis_mansion",id:"search/bash"} at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room,tag=shaken_by_interact] run function luigis_mansion:items/interact/target_furniture/shake
execute if entity @s[scores={InteractionTime=17},tag=!not_facing] at @e[tag=interact,tag=manual,limit=1] as @e[tag=furniture,tag=same_room,tag=searchable_by_interact] run function luigis_mansion:items/interact/target_furniture/search
#todelete - old furniture
execute as @e[tag=interact,tag=manual] positioned as @s rotated ~ 0 run teleport @s ^ ^ ^0.5
scoreboard players operation #temp Room = @s Room
scoreboard players operation #temp ID = @s ID
execute if entity @s[scores={InteractionTime=..16}] run tag @e[tag=interact,tag=manual,limit=1] add sound
execute if entity @s[scores={InteractionTime=2}] as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
execute if entity @s[scores={InteractionTime=9}] if data entity @s data.animation{namespace:"luigis_mansion",id:"search/knock"} as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
execute if entity @s[scores={InteractionTime=9}] if data entity @s data.animation{namespace:"luigis_mansion",id:"search/bash"} as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
execute if entity @s[scores={InteractionTime=12}] if data entity @s data.animation{namespace:"luigis_mansion",id:"search/hump"} as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
execute if entity @s[scores={InteractionTime=17}] as @e[tag=interact,tag=manual,limit=1] at @s run function luigis_mansion:room/interactions
scoreboard players reset #temp ID
scoreboard players reset #temp Room
#/todelete
scoreboard players reset #interact
scoreboard players set @s[scores={InteractionTime=2}] Sound 20
tag @s[scores={InteractionTime=17}] remove reset_rotation
tag @s[scores={InteractionTime=17}] remove not_facing
tag @s[scores={InteractionTime=17}] remove 1
tag @s[scores={InteractionTime=17}] remove 2
tag @s[scores={InteractionTime=17}] remove 3
tag @s[scores={InteractionTime=17}] remove wall_bump
execute if entity @s[scores={InteractionTime=17}] run function luigis_mansion:entities/luigi/animation/set/none
scoreboard players reset @s[scores={InteractionTime=17}] InteractionTime
kill @e[tag=interact,tag=manual,limit=1]
tag @s remove searcher