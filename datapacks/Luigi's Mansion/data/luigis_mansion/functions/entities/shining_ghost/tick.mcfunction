execute if entity @s[tag=dead] run teleport @s ~ -100 ~

execute if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] if entity @s[tag=!in_vacuum,tag=!can_spit_2,tag=!spit] if entity @s[tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/shining_ghost/collide

execute if entity @s[tag=spit] run scoreboard players set #temp Move 2
execute if entity @s[tag=!spit] run scoreboard players set #temp Move 1
execute if entity @s[tag=spit] run function luigis_mansion:entities/shining_ghost/spit
execute if entity @s[tag=spit] at @s run function luigis_mansion:animations/shining_ghost/spit
execute if entity @s[tag=!in_vacuum,tag=!spit] run function luigis_mansion:entities/shining_ghost/move
execute if entity @s[tag=collision,tag=spit] run function luigis_mansion:entities/shining_ghost/capture
execute if entity @s[tag=collision,tag=spit] run function luigis_mansion:entities/shining_ghost/drop_loot
tag @s[tag=collision,tag=spit] add dead
tag @s[tag=collision] remove spit
tag @s[tag=collision] remove collision
execute at @s[tag=in_vacuum] unless entity @a[distance=..1.5,gamemode=!spectator,tag=vacuuming] facing entity @p[gamemode=!spectator,tag=vacuuming] feet run teleport @s ^ ^ ^0.3 ~ ~
execute at @s[tag=in_vacuum] at @p[distance=..1.5,gamemode=!spectator,tag=vacuuming] positioned ~ ~0.5 ~ run teleport @s ^ ^ ^0.3 ~ ~
execute at @s[tag=in_vacuum] run scoreboard players operation @s KillerID = @p[distance=..1.5,gamemode=!spectator,tag=vacuuming] ID
execute at @s if entity @p[distance=..1.5,gamemode=!spectator,tag=vacuuming] run tag @s[tag=in_vacuum] add can_spit
execute at @s if entity @p[distance=..1.5,gamemode=!spectator,tag=vacuuming] run tag @s[tag=in_vacuum] add can_spit_2
tag @s[tag=!can_spit] remove can_spit_2
tag @s[tag=!in_vacuum,tag=can_spit_2] add spit
tag @s[tag=!in_vacuum] remove can_spit
tag @s[tag=in_vacuum] remove in_vacuum
execute at @s[tag=!played_sound] run playsound luigis_mansion:entity.shining_ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1
tag @s add played_sound
tag @s[scores={Dialog=200}] add disappear
execute if entity @s[tag=disappear] run function luigis_mansion:entities/shining_ghost/back_to_start
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall