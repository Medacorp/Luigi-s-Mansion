scoreboard players add @s[scores={ActionTime=31..}] ActionTime 1
scoreboard players add @s[scores={ActionTime=1..29}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"vacuum_prepare"}
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.bowser.vacuum_start hostile @a[tag=same_room] ~ ~ ~ 3
data modify entity @s[scores={ActionTime=21}] data.animation set value {namespace:"luigis_mansion",id:"vacuum"}
execute if entity @s[scores={ActionTime=21..30,Sound=0}] run playsound luigis_mansion:entity.bowser.vacuum hostile @a[tag=same_room] ~ ~ ~ 3
scoreboard players set @s[scores={ActionTime=21..30,Sound=0}] Sound 10
scoreboard players reset #temp Time
execute if entity @s[scores={ActionTime=21..30}] positioned ^ ^0.9 ^4.667 run function luigis_mansion:entities/bowser/attack/vacuum/suck
scoreboard players reset #temp Time
execute if entity @s[scores={ActionTime=21..30}] at @e[tag=luigi,tag=got_sucked,distance=..6,sort=nearest,limit=1] run function luigis_mansion:entities/ghost/set_target
execute if entity @s[scores={ActionTime=21..30}] run tag @e[tag=luigi,tag=got_sucked,distance=..6,sort=nearest,limit=1] add vacuumed
execute if entity @s[scores={ActionTime=21..30}] as @e[tag=luigi,tag=vacuumed,limit=1] run function luigis_mansion:entities/luigi/animation/set/wind_warp
execute if entity @s[scores={ActionTime=30}] unless entity @e[tag=luigi,tag=got_sucked,limit=1] run scoreboard players set @s ActionTime 140
execute if entity @e[tag=vacuumed,limit=1] run scoreboard players set @s[scores={ActionTime=21..30}] ActionTime 31
execute if entity @s[scores={ActionTime=31}] run tag @e[tag=luigi,tag=vacuumed,limit=1] add wind_warping
execute if entity @s[scores={ActionTime=31}] run tag @e[tag=luigi,tag=vacuumed,limit=1] remove vacuumed
execute if entity @s[scores={ActionTime=31..109}] run scoreboard players set @e[tag=same_room,tag=wind_warping,limit=1] Sound 1
execute if entity @s[scores={ActionTime=31..109}] run scoreboard players set @e[tag=same_room,tag=wind_warping,limit=1] Invulnerable 1
data modify entity @s[scores={ActionTime=51}] data.animation set value {namespace:"luigis_mansion",id:"chew"}
execute if entity @s[scores={ActionTime=52..109}] as @e[tag=same_room,tag=wind_warping,limit=1] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ~ ~ ~",teleport:"^ ^3 ^-1"}
execute if entity @s[scores={ActionTime=31..109}] as @e[tag=same_room,tag=wind_warping,limit=1] run function luigis_mansion:entities/luigi/run_command_as_owner {command:'function luigis_mansion:entities/player/camera/execute {execute:"positioned ~ ~ ~",teleport:"^ ^6 ^10 ~-180 25"}'}
execute if entity @s[scores={ActionTime=106}] run playsound luigis_mansion:entity.bowser.vacuum_spit hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={ActionTime=110}] run scoreboard players set @e[tag=same_room,tag=wind_warping,limit=1] Invulnerable 0
execute if entity @s[scores={ActionTime=110}] as @e[tag=same_room,tag=wind_warping,limit=1] run function luigis_mansion:entities/luigi/run_command_as_owner {command:"execute if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/map/exit"}
execute if entity @s[scores={ActionTime=110}] unless score #mirrored Selected matches 1 as @e[tag=same_room,tag=wind_warping,limit=1] rotated ~-45 0 run function luigis_mansion:entities/luigi/move/execute {execute:"positioned as @s",teleport:"^ ^2 ^2 ~-180 ~"}
execute if entity @s[scores={ActionTime=110}] if score #mirrored Selected matches 1 as @e[tag=same_room,tag=wind_warping,limit=1] rotated ~45 0 run function luigis_mansion:entities/luigi/move/execute {execute:"positioned as @s",teleport:"^ ^2 ^2 ~-180 ~"}
execute if entity @s[scores={ActionTime=110}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"swallow"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"}}
execute if entity @s[scores={ActionTime=110}] run data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.vacuum
execute if entity @s[scores={ActionTime=110}] run data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute if entity @s[scores={ActionTime=110}] as @e[tag=same_room,tag=wind_warping,limit=1] run function luigis_mansion:entities/luigi/run_command_as_owner {command:"function luigis_mansion:entities/player/camera/reset"}
execute if entity @s[scores={ActionTime=110}] as @e[tag=same_room,tag=wind_warping,limit=1] run function luigis_mansion:entities/luigi/damage
tag @s[scores={ActionTime=130}] remove vacuum_attack
data remove entity @s[scores={ActionTime=130}] data.animation
scoreboard players reset @s[scores={ActionTime=130}] ActionTime

data modify entity @s[scores={ActionTime=141}] data.animation set value {namespace:"luigis_mansion",id:"vacuum_cancel"}
tag @s[scores={ActionTime=160}] remove vacuum_attack
data remove entity @s[scores={ActionTime=160}] data.animation
scoreboard players reset @s[scores={ActionTime=160}] ActionTime
tag @e[tag=luigi,tag=got_sucked] remove got_sucked