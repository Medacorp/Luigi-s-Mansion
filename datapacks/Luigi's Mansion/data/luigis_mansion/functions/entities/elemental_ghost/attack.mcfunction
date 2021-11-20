execute if entity @s[tag=fire] run playsound luigis_mansion:entity.fire_elemental_ghost.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=water] run playsound luigis_mansion:entity.water_elemental_ghost.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=ice] run playsound luigis_mansion:entity.ice_elemental_ghost.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute as @e[distance=..1,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
effect give @a[distance=..1,tag=!spectator] minecraft:instant_damage 1 0 true
scoreboard players set @a[distance=..1,tag=!spectator] ForcedDamage 4
advancement grant @a[tag=!spectator,distance=..1] only luigis_mansion:challenges/waluigi_pinball elemental_ghost
execute if entity @s[tag=fire] as @a[distance=..1,tag=!spectator] run function luigis_mansion:entities/player/knockback/burn
execute if entity @s[tag=water] as @a[distance=..1,tag=!spectator] run function luigis_mansion:entities/player/knockback/soak
execute if entity @s[tag=ice] as @a[distance=..1,tag=!spectator] run function luigis_mansion:entities/player/knockback/freeze
tag @s add dead