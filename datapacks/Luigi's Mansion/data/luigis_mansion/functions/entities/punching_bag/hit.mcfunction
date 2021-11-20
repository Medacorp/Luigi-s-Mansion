execute as @e[dx=0,dy=0,dz=0,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
effect give @a[dx=0,dy=0,dz=0,tag=!spectator] minecraft:instant_damage
scoreboard players set @a[dx=0,dy=0,dz=0,tag=!spectator] ForcedDamage -1
execute as @a[dx=0,dy=0,dz=0,tag=!spectator] positioned ~0.5 ~ ~0.5 positioned ^ ^5.4 ^ run function luigis_mansion:entities/player/knockback/large
tag @e[dx=0,dy=0,dz=0,tag=biff_atlas] add hit
tag @s add me
execute as @e[dx=0,dy=0,dz=0,tag=biff_atlas] facing entity @e[tag=me,limit=1] feet rotated ~-180 0 positioned as @s run teleport @s ~ ~ ~ ~ ~
tag @s remove me