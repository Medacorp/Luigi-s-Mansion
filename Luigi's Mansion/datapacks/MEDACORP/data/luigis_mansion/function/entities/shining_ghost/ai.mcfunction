tag @s add visible
particle minecraft:dust{color:17423820,scale:1f} ~ ~ ~ 0 0 0 1 1 normal @a[tag=same_room]

execute at @s[tag=!in_vacuum,tag=!can_spit_2,tag=!spit,tag=!dead] if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] run function luigis_mansion:entities/shining_ghost/collide with entity @s data.entity

execute if entity @s[tag=spit] run scoreboard players set #temp Move 10
execute if entity @s[tag=!spit] run scoreboard players set #temp Move 5
execute if entity @s[tag=spit] run function luigis_mansion:entities/shining_ghost/spit
data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"spin"}
execute if entity @s[tag=spit,tag=!played_spit_sound] run playsound luigis_mansion:entity.shining_ghost.spit hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[tag=spit] add played_spit_sound
execute if entity @s[tag=!in_vacuum,tag=!spit] run function luigis_mansion:entities/shining_ghost/fall
execute if entity @s[tag=collision,tag=spit] run function luigis_mansion:entities/shining_ghost/capture
tag @s[tag=collision] remove spit
tag @s[tag=collision] remove collision
execute at @s[tag=in_vacuum,tag=!spit] run function luigis_mansion:entities/shining_ghost/roll_to_player
execute at @s[tag=in_vacuum,tag=!spit] run scoreboard players operation @s KillerID = @p[distance=..1.5,tag=!spectator,tag=player,tag=vacuuming] ID
execute at @s[tag=in_vacuum,tag=!spit] if entity @p[distance=..1.5,tag=!spectator,tag=player,tag=vacuuming] run tag @s add can_spit
data remove entity @s[tag=can_spit,tag=!spit] data.animation
tag @s[tag=can_spit] add can_spit_2
tag @s[tag=!can_spit] remove can_spit_2
tag @s[tag=!in_vacuum,tag=can_spit_2] add spit
tag @s[tag=!in_vacuum] remove can_spit
execute at @s[tag=!played_sound] run playsound luigis_mansion:entity.shining_ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1
tag @s add played_sound
tag @s[scores={Dialog=1000}] add disappear
execute if entity @s[tag=disappear] positioned ~ ~0.7 ~ run function luigis_mansion:entities/shining_ghost/back_to_start
