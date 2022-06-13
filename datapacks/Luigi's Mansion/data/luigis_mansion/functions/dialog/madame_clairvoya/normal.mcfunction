scoreboard players set #freeze_timer Selected 1
execute if entity @a[scores={ClairvoyaChoice=1..},limit=1] run scoreboard players add @s[scores={Dialog=49..}] Dialog 1
scoreboard players add @s[scores={Dialog=..48}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add nod
scoreboard players set @s[scores={Dialog=1}] AnimationProg 0
execute if entity @s[scores={Dialog=1..355}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1..49}] as @a[tag=same_room,tag=!spectator,tag=!high_health_idle,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if entity @s[scores={Dialog=1..356}] as @a[tag=same_room] unless entity @s[scores={MusicGroup=0,MusicType=23}] run function luigis_mansion:other/music/set/talking_ghost
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.1"}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.1.more"}]}
tag @s[scores={Dialog=48}] remove nod
tag @s[scores={Dialog=48}] add listen
scoreboard players set @s[scores={Dialog=48}] AnimationProg 0
execute if entity @s[scores={Dialog=48}] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:dialog.madame_clairvoya.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger ClairvoyaChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.madame_clairvoya.no","clickEvent":{"action":"run_command","value":"/trigger ClairvoyaChoice set 2"}}]}
execute if entity @s[scores={Dialog=48}] run scoreboard players enable @a[tag=same_room] ClairvoyaChoice
tag @s[scores={Dialog=50}] add nod
tag @s[scores={Dialog=50}] remove listen
execute if entity @s[scores={Dialog=50}] as @a[tag=same_room,tag=!spectator,tag=!nod,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/nod
scoreboard players set @s[scores={Dialog=50}] AnimationProg 0
execute if entity @s[scores={Dialog=50}] if entity @a[scores={ClairvoyaChoice=1..}] as @a[scores={ClairvoyaChoice=0}] run trigger ClairvoyaChoice set 0
execute if entity @s[scores={Dialog=50}] if entity @a[scores={ClairvoyaChoice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.yes.1"}]}
execute if entity @s[scores={Dialog=188}] if entity @a[scores={ClairvoyaChoice=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.yes.2"}]}
execute if entity @s[scores={Dialog=188}] if entity @a[scores={ClairvoyaChoice=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.yes.2.more"}]}
execute if entity @s[scores={Dialog=50}] if entity @a[scores={ClairvoyaChoice=2}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.no.1"}]}
execute if entity @s[scores={Dialog=130}] if entity @a[scores={ClairvoyaChoice=2}] run scoreboard players add @s Dialog 226
execute if entity @s[scores={Dialog=356}] run scoreboard players set @a ClairvoyaChoice 0
execute if entity @s[scores={Dialog=356}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=356}] remove talk
execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove talk
execute if entity @s[tag=!talk] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[tag=!talk] run scoreboard players reset @a[scores={ClairvoyaChoice=0..}] ClairvoyaChoice
scoreboard players set @s[tag=!talk] Dialog 0
scoreboard players set @s[tag=!talk] AnimationProg 0
tag @s[tag=!talk] remove nod
tag @s[tag=!talk] remove listen