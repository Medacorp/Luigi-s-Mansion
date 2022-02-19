execute unless entity @s[scores={Dialog=333}] unless entity @s[scores={Dialog=645..646}] run scoreboard players set #freeze_timer Selected 1
execute if score #the_artists_studio Wave matches 9 run scoreboard players add @s[scores={Dialog=333..645}] Dialog 1
scoreboard players add @s[scores={Dialog=1..332}] Dialog 1
execute if entity @e[tag=same_room,tag=!spectator,limit=1] unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[tag=!visible,tag=!vanish] run function luigis_mansion:entities/vincent_van_gore/turn_visible
execute if entity @s[scores={Dialog=1..643}] unless entity @s[scores={Dialog=332..333}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=333}] at @e[tag=same_room,tag=!spectator] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:entities/vincent_van_gore/turn_invisible
execute if entity @s[scores={Dialog=1}] if data storage luigis_mansion:data current_state.current_data.technical_data{vincent_van_gore_spoke:1b} run scoreboard players set @s Dialog 332
execute unless entity @s[scores={Dialog=332..333}] unless entity @s[scores={Dialog=646}] as @a[tag=same_room,tag=!spectator] unless entity @s[scores={MusicGroup=0,MusicType=23}] run function luigis_mansion:other/music/set/talking_ghost
execute if entity @s[scores={Dialog=60}] run playsound luigis_mansion:entity.vincent_van_gore.talk hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=60}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"translate":"luigis_mansion:dialog.vincent_van_gore.1"}]}
execute if entity @s[scores={Dialog=60}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"translate":"luigis_mansion:dialog.vincent_van_gore.1.more"}]}
scoreboard players set @s[scores={Dialog=140}] AnimationProg 0
execute if entity @s[scores={Dialog=140..332}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=140}] run playsound luigis_mansion:entity.vincent_van_gore.talk hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=140}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"translate":"luigis_mansion:dialog.vincent_van_gore.2"}]}
execute if entity @s[scores={Dialog=140}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"translate":"luigis_mansion:dialog.vincent_van_gore.2.more"}]}
execute if entity @s[scores={Dialog=236}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"translate":"luigis_mansion:dialog.vincent_van_gore.3"}]}
execute if entity @s[scores={Dialog=236}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"translate":"luigis_mansion:dialog.vincent_van_gore.3.more"}]}
scoreboard players set @s[scores={Dialog=272}] AnimationProg 0
execute if entity @s[scores={Dialog=272}] run playsound luigis_mansion:entity.vincent_van_gore.awake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=332}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {vincent_van_gore_spoke:1b}
execute if entity @s[scores={Dialog=332}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=332}] run function luigis_mansion:room/hidden/the_artists_studio/wave_2 
execute if entity @s[scores={Dialog=332}] as @a[tag=same_room,tag=!spectator] run function luigis_mansion:other/music/set/mini_game
scoreboard players set @s[scores={Dialog=332}] AnimationProg 0
execute if entity @s[scores={Dialog=333}] run teleport @s ~ ~ ~ 0 ~
scoreboard players set @s[scores={Dialog=334}] AnimationProg 0
execute if entity @s[scores={Dialog=334..},tag=!vanish] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=334}] run playsound luigis_mansion:entity.vincent_van_gore.talk hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=334}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"translate":"luigis_mansion:dialog.vincent_van_gore.4"}]}
execute if entity @s[scores={Dialog=358}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"translate":"luigis_mansion:dialog.vincent_van_gore.5"}]}
execute if entity @s[scores={Dialog=510}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"translate":"luigis_mansion:dialog.vincent_van_gore.6"}]}
execute if entity @s[scores={Dialog=518}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"translate":"luigis_mansion:dialog.vincent_van_gore.7"}]}
execute if entity @s[scores={Dialog=518}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"translate":"luigis_mansion:dialog.vincent_van_gore.7.more"}]}
execute if entity @s[scores={Dialog=598}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"translate":"luigis_mansion:dialog.vincent_van_gore.8"}]}
execute if entity @s[scores={Dialog=630}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.vincent_van_gore","color":"green"},{"translate":"luigis_mansion:dialog.vincent_van_gore.9"}]}
execute if entity @s[scores={Dialog=644}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
scoreboard players set @s[scores={Dialog=645}] AnimationProg 0
execute if entity @s[scores={Dialog=645}] run playsound luigis_mansion:entity.vincent_van_gore.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=646}] as @a[tag=same_room,tag=!spectator] unless entity @s[scores={MusicGroup=0,MusicType=36}] run function luigis_mansion:other/music/set/danger
scoreboard players set @s[scores={Dialog=646},tag=!vanish] VulnerableTime 2147483647

execute if entity @s[scores={Dialog=140..271}] run function luigis_mansion:animations/vincent_van_gore/talk
execute if entity @s[scores={Dialog=272..331}] run function luigis_mansion:animations/vincent_van_gore/magic
execute if entity @s[scores={Dialog=333,Sound=0}] run playsound luigis_mansion:entity.vincent_van_gore.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=333,Sound=0}] Sound 80
execute if entity @s[scores={Dialog=334..645}] run function luigis_mansion:animations/vincent_van_gore/talk
execute if entity @s[scores={Dialog=645..646},tag=!vanish] run function luigis_mansion:animations/vincent_van_gore/complain
execute unless entity @s[scores={Dialog=140..331}] unless entity @s[scores={Dialog=334..}] run function luigis_mansion:animations/vincent_van_gore/paint