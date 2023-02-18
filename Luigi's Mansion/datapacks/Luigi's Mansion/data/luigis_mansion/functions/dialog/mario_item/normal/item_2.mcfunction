scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..983}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.3"}]}
execute if entity @s[scores={Dialog=32}] run playsound luigis_mansion:entity.madame_clairvoya.spirits hostile @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=32}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.4"}]}
tag @s[scores={Dialog=200}] add power
execute if entity @s[scores={Dialog=200..511}] as @a[tag=same_room,gamemode=!spectator,tag=!high_health_idle,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
scoreboard players set @s[scores={Dialog=200}] AnimationProgress 0
execute if entity @s[scores={Dialog=200}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.5"}]}
execute if entity @s[scores={Dialog=392}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.6"}]}
execute if entity @s[scores={Dialog=424}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.7"}]}
execute if entity @s[scores={Dialog=512}] as @a[tag=same_room,gamemode=!spectator,tag=!stand_still,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=512}] run playsound luigis_mansion:entity.madame_clairvoya.spirits hostile @a[tag=same_room] ~ ~ ~ 1000
tag @s[scores={Dialog=552}] remove power
execute if entity @s[scores={Dialog=552..1175}] as @a[tag=same_room,gamemode=!spectator,tag=!thinking,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/thinking
scoreboard players set @s[scores={Dialog=552}] AnimationProgress 0
execute if entity @s[scores={Dialog=552}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_2.1"}]}
execute if entity @s[scores={Dialog=552}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_2.1.more"}]}
execute if entity @s[scores={Dialog=664}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_2.2"}]}
execute if entity @s[scores={Dialog=664}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_2.2.more"}]}
tag @s[scores={Dialog=984}] add nod
scoreboard players set @s[scores={Dialog=984}] AnimationProgress 0
execute if entity @s[scores={Dialog=984}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_2.3"}]}
execute if entity @s[scores={Dialog=1056}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_2.4"}]}
execute if entity @s[scores={Dialog=1056}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_2.4.more"}]}
tag @s[scores={Dialog=1176}] remove nod
execute if entity @s[scores={Dialog=1176}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=1176}] remove talk