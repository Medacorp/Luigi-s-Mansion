execute if entity @a[scores={EGaddGPRChoice=1..},limit=1] run scoreboard players add @s[scores={Dialog=57..}] Dialog 1
scoreboard players add @s[scores={Dialog=..56}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add ghost_portrificationizer_room_dialog
tag @s[scores={Dialog=1}] add nod
execute if entity @s[scores={Dialog=1..77}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.repeat.1","with":[{"selector":"@a[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.repeat.1.more"}]}
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.e_gadd.talk.luigi_oui neutral @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=56}] add listen
tag @s[scores={Dialog=56}] remove nod
execute if entity @s[scores={Dialog=56..57}] as @a[tag=same_room,tag=!spectator,tag=!thinking,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/thinking
execute if entity @s[scores={Dialog=56}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=56}] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.lab","color":"green","clickEvent":{"action":"run_command","value":"/trigger EGaddGPRChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.gallery","clickEvent":{"action":"run_command","value":"/trigger EGaddGPRChoice set 2"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.nothing","clickEvent":{"action":"run_command","value":"/trigger EGaddGPRChoice set 3"}}]}
execute if entity @s[scores={Dialog=56}] run scoreboard players enable @a[tag=same_room] EGaddGPRChoice
tag @s[scores={Dialog=58}] remove listen
tag @s[scores={Dialog=58}] add nod
execute if entity @s[scores={Dialog=58}] as @a[tag=same_room,tag=!spectator,tag=!nod,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/nod
execute if entity @s[scores={Dialog=58}] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddGPRChoice=1..},limit=1] as @a[scores={EGaddGPRChoice=0}] run trigger EGaddGPRChoice set 0
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddGPRChoice=1},limit=1] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.lab.1"}]}
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddGPRChoice=1},limit=1] run playsound luigis_mansion:entity.e_gadd.talk.yahboh_yahboh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddGPRChoice=2},limit=1] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.gallery.1"}]}
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddGPRChoice=2},limit=1] run playsound luigis_mansion:entity.e_gadd.talk.odoh_mah_mah neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddGPRChoice=3},limit=1] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.ghost_portrificationizer_room.nothing.1"}]}
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddGPRChoice=3},limit=1] run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=78}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=78}] if entity @a[scores={EGaddGPRChoice=1},limit=1] as @a[tag=same_room] run function luigis_mansion:room/underground_lab/warp_to
execute if entity @s[scores={Dialog=78}] if entity @a[scores={EGaddGPRChoice=2},limit=1] as @a[tag=same_room] run function luigis_mansion:room/gallery/warp_to
execute if entity @s[scores={Dialog=78}] run scoreboard players set @a EGaddGPRChoice 0
tag @s[scores={Dialog=78}] remove talk
execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove talk
execute if entity @s[tag=!talk] run scoreboard players reset @a[scores={EGaddGPRChoice=0..}] EGaddGPRChoice
scoreboard players set @s[tag=!talk] Dialog 0
tag @s[tag=!talk] remove listen
tag @s[tag=!talk] remove nod
tag @s[tag=!talk] remove ghost_portrificationizer_room_dialog
execute if entity @s[tag=!talk] run scoreboard players set @e[tag=this_model,tag=e_gadd_head,limit=1] AnimationProg 0