scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add nod
execute if entity @s[scores={Dialog=1..217}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/idle
execute if entity @s[scores={Dialog=1}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/nod
scoreboard players set @s[scores={Dialog=1}] AnimationProgress 0
execute if entity @s[scores={Dialog=1..218}] as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_ghost
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.1"}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.1.more"}]}
execute if entity @s[scores={Dialog=122}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.generic.2"}]}
execute if entity @s[scores={Dialog=154}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.madame_clairvoya.star.1"}]}
tag @s[scores={Dialog=218}] remove nod
tag @s[scores={Dialog=218}] add next
scoreboard players set @s[scores={Dialog=218}] AnimationProgress 0
execute if entity @s[scores={Dialog=218}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
scoreboard players set @s[scores={Dialog=218}] Dialog 0

execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove talk
execute if entity @s[tag=!talk] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[tag=!talk] as @a[scores={ClairvoyaChoice=0..}] run trigger ClairvoyaChoice set 0
scoreboard players set @s[tag=!talk] Dialog 0
tag @s[tag=!talk] remove nod