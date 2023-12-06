scoreboard players add @s Dialog 1
data modify entity @s[scores={Dialog=1}] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if entity @s[scores={Dialog=1..271}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.return.1","with":[{"type":"selector","selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.return.1.more"}]}
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.e_gadd.talk.odoh_luigi neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=96}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.return.2"}]}
execute if entity @s[scores={Dialog=96}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.ghost_portrificationizer_room.return.2.more"}]}
execute if entity @s[scores={Dialog=96}] run playsound luigis_mansion:entity.e_gadd.talk.pen_pen_odoh_mah_mah_poheh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=272}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=272}] remove return_dialog
execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove return_dialog
scoreboard players set @s[tag=!return_dialog] Dialog 0
data remove entity @s[tag=!return_dialog] data.animation