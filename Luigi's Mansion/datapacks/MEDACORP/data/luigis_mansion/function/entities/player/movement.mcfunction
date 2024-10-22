teleport @s[tag=walking] 0 0 0
teleport @s[tag=walking] ~ ~ ~
execute positioned as @s[predicate=luigis_mansion:movement/forward] rotated ~ 0 run teleport @s ^ ^ ^0.2
execute positioned as @s[predicate=luigis_mansion:movement/backward] rotated ~ 0 run teleport @s ^ ^ ^-0.2
execute positioned as @s[predicate=luigis_mansion:movement/left] rotated ~ 0 run teleport @s ^0.2 ^ ^
execute positioned as @s[predicate=luigis_mansion:movement/right] rotated ~ 0 run teleport @s ^-0.2 ^ ^
execute positioned as @s[predicate=luigis_mansion:movement/jump] if score #debug_phase_through_walls Selected matches 1 rotated ~ 0 run teleport @s ^ ^0.2 ^
execute positioned as @s[predicate=luigis_mansion:movement/jump] if score #debug_phase_through_walls Selected matches 1 run tag @s add alter_y
execute positioned as @s[predicate=luigis_mansion:movement/sneak] if score #debug_phase_through_walls Selected matches 1 rotated ~ 0 run teleport @s ^ ^-0.2 ^
execute positioned as @s[predicate=luigis_mansion:movement/sneak] if score #debug_phase_through_walls Selected matches 1 run tag @s add alter_y

execute if entity @s[tag=!flipped_gravity] unless score #debug_phase_through_walls Selected matches 1 run function luigis_mansion:entities/player/movement/normal
execute if entity @s[tag=!flipped_gravity] unless score #debug_phase_through_walls Selected matches 1 run function luigis_mansion:entities/player/movement/normal
execute if entity @s[tag=!flipped_gravity,tag=!alter_y] run function luigis_mansion:entities/player/movement/gravity
execute if entity @s[tag=!flipped_gravity] unless score #debug_phase_through_walls Selected matches 1 run function luigis_mansion:entities/player/movement/gravity
execute if entity @s[tag=!flipped_gravity] unless score #debug_phase_through_walls Selected matches 1 run function luigis_mansion:entities/player/movement/gravity

execute if entity @s[tag=flipped_gravity] unless score #debug_phase_through_walls Selected matches 1 run function luigis_mansion:entities/player/movement/flipped
execute if entity @s[tag=flipped_gravity] unless score #debug_phase_through_walls Selected matches 1 run function luigis_mansion:entities/player/movement/flipped
execute if entity @s[tag=flipped_gravity,tag=!alter_y] run function luigis_mansion:entities/player/movement/gravity_flipped
execute if entity @s[tag=flipped_gravity] unless score #debug_phase_through_walls Selected matches 1 run function luigis_mansion:entities/player/movement/gravity_flipped
execute if entity @s[tag=flipped_gravity] unless score #debug_phase_through_walls Selected matches 1 run function luigis_mansion:entities/player/movement/gravity_flipped
scoreboard players reset #temp Time
scoreboard players reset #posx Time
scoreboard players reset #posy Time
scoreboard players reset #posz Time