execute if entity @a[scores={EGaddGPRChoice=1..},limit=1] run scoreboard players add @s[scores={Dialog=57..}] Dialog 1
scoreboard players add @s[scores={Dialog=..56}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add nod
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.repeat.1","with":[{"selector":"@a[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.repeat.1.more"}]}
tag @s[scores={Dialog=56}] add listen
tag @s[scores={Dialog=56}] remove nod
execute if entity @s[scores={Dialog=56}] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:message.options","color":"green","extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.lab","clickEvent":{"action":"run_command","value":"/trigger EGaddGPRChoice set 1"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.gallery","clickEvent":{"action":"run_command","value":"/trigger EGaddGPRChoice set 2"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.nothing","clickEvent":{"action":"run_command","value":"/trigger EGaddGPRChoice set 3"}}]}
execute if entity @s[scores={Dialog=56}] run scoreboard players enable @a[tag=same_room] EGaddGPRChoice
tag @s[scores={Dialog=58}] remove listen
tag @s[scores={Dialog=58}] add nod
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddGPRChoice=1..}] as @a[scores={EGaddGPRChoice=0}] run trigger EGaddGPRChoice set 0
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddGPRChoice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.lab.1"}]}
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddGPRChoice=1}] run scoreboard players add @s Dialog 8
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddGPRChoice=2}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.gallery.1"}]}
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddGPRChoice=2}] run scoreboard players add @s Dialog 8
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddGPRChoice=3}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.nothing.1"}]}
execute if entity @s[scores={Dialog=74}] if entity @a[scores={EGaddGPRChoice=1},limit=1] as @a[tag=same_room] run function luigis_mansion:entities/e_gadd/to_lab
execute if entity @s[scores={Dialog=74}] if entity @a[scores={EGaddGPRChoice=2},limit=1] as @a[tag=same_room] run function luigis_mansion:entities/e_gadd/to_gallery
execute if entity @s[scores={Dialog=74}] run scoreboard players set @a EGaddGPRChoice 0
tag @s[scores={Dialog=74}] remove talk
execute unless entity @a[tag=same_room,distance=..7] run tag @s remove talk
execute if entity @s[tag=!talk] as @a[scores={EGaddGPRChoice=0..}] run trigger EGaddGPRChoice set 0
scoreboard players set @s[tag=!talk] Dialog 0
tag @s[tag=!talk] remove listen
tag @s[tag=!talk] remove nod