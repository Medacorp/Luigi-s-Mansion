scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
data modify entity @s[scores={Dialog=1}] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if entity @s[scores={Dialog=1..273}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/nod
execute if entity @s[scores={Dialog=1..274}] as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_ghost
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.1"}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.1.more"}]}
execute if entity @s[scores={Dialog=122}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.2"}]}
execute if entity @s[scores={Dialog=154}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.glove.1"}]}
data remove entity @s[scores={Dialog=274}] data.animation
tag @s[scores={Dialog=274}] add next
execute if entity @s[scores={Dialog=274}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
scoreboard players set @s[scores={Dialog=274}] Dialog 0

execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove talk
execute if entity @s[tag=!talk] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence