tag @s remove dark_room
function #luigis_mansion:room/dark_room

execute if entity @s[tag=!looking_at_map,tag=!death_animation,tag=!revive_animation] run function #luigis_mansion:items
execute if entity @s[tag=!death_animation,tag=!revive_animation] run function luigis_mansion:items/gameboy_horror
execute if entity @s[tag=!death_animation,tag=!revive_animation] run function luigis_mansion:blocks/gravity_swap
execute if entity @s[tag=!death_animation,tag=!revive_animation] run function luigis_mansion:blocks/blockade
execute if entity @s[tag=warp] run function luigis_mansion:items/gameboy_horror/warp
execute if entity @s[tag=grabbed] run function luigis_mansion:entities/player/grabbed

execute if entity @s[scores={Talk=1..},tag=!death_animation,tag=!revive_animation] run function luigis_mansion:target_villager
scoreboard players set @s[scores={Talk=1..}] Talk 0

execute rotated ~ 0 positioned ^ ^ ^-4 run function luigis_mansion:entities/player/spawn_ghosts

scoreboard players remove @s[scores={RoomNoise=1..}] RoomNoise 1
scoreboard players remove @s[scores={Sound=1..}] Sound 1

execute if entity @s[scores={Health=..0},tag=!death_animation,tag=!revive_animation] run function luigis_mansion:entities/player/death
execute if entity @s[scores={Health=1..},tag=already_added_to_list] run function luigis_mansion:entities/player/remove_dead_entry
tag @s[scores={Health=1..}] remove already_added_to_list

function luigis_mansion:entities/player/health_display
function luigis_mansion:entities/player/give_items

execute unless entity @s[scores={Invulnerable=0..}] run scoreboard players set @s Invulnerable 0
scoreboard players remove @s[scores={Invulnerable=1..}] Invulnerable 1
execute if entity @s[scores={Health=1..}] store result score @s Damage run data get entity @s Health -1
scoreboard players operation @s[scores={Health=1..}] Damage += #100 Constants
execute if entity @s[scores={Damage=1..},tag=!spectator] run function luigis_mansion:entities/player/take_damage
effect give @s[scores={Food=3..}] minecraft:hunger 1 255 true
effect give @s[scores={Food=..0}] minecraft:saturation 1 0 true
execute unless entity @s[scores={MaxHealth=100}] run scoreboard players add @s MaxHealthTime 1
execute if entity @s[scores={MaxHealthTime=1}] if score @s MaxHealth < @s Health run function luigis_mansion:entities/player/reduce_health_to_max
execute unless entity @s[scores={MaxHealth=100}] unless entity @s[scores={Walk=0..2,Run=0..2,Sneak=0}] run scoreboard players add @s MaxHealthTime 1
scoreboard players set @s[scores={MaxHealthTime=200}] MaxHealth 100
scoreboard players reset @s[scores={MaxHealthTime=200}] MaxHealthTime

execute if entity @s[scores={Walk=1..},tag=!looking_at_map] run particle minecraft:dust 0.5 0.5 0.5 1.2 ~ ~0.2 ~ 0 0 0 0 1
execute if entity @s[scores={Run=1..},tag=!looking_at_map] run particle minecraft:dust 0.5 0.5 0.5 2 ~ ~0.2 ~ 0 0 0 0 1
execute if entity @s[scores={Sneak=1..},tag=!looking_at_map] run particle minecraft:dust 0.5 0.5 0.5 0.7 ~ ~0.2 ~ 0 0 0 0 1

execute unless entity @s[scores={Room=-3}] if score #loaded_exterior Selected matches -1 unless score #mansion_type Selected matches -1 run function luigis_mansion:room/ghost_portrificationizer_room/warp_to

execute at @s[scores={LightX=-2147483648..}] unless entity @s[scores={Shrunk=1..}] run function luigis_mansion:other/cast_shadow/2_tall
execute at @s[scores={LightX=-2147483648..,Shrunk=1..}] run function luigis_mansion:other/cast_shadow/1_tall
tag @s[tag=!death_animation,tag=!revive_animation] remove spectator

effect give @s minecraft:invisibility 1000000 0 true
function luigis_mansion:animations/luigi
execute if entity @s[tag=death_animation] run function luigis_mansion:entities/player/death_animation
execute if entity @s[tag=revive_animation] run function luigis_mansion:entities/player/revive_animation