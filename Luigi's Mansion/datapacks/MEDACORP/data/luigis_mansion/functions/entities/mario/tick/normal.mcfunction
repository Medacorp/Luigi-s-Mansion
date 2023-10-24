execute if entity @a[scores={EGaddGhostPortrificationizerRoomChoice=1..},limit=1] run scoreboard players add @s[scores={Dialog=641..}] Dialog 1
scoreboard players add @s[scores={Dialog=1..640}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] if entity @a[tag=!spectator,distance=..2] run scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add shot_out
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.mario.wowch neutral @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=20}] AnimationProgress 0
tag @s[scores={Dialog=20}] remove shot_out
tag @s[scores={Dialog=20}] add stuck
execute if entity @s[scores={Dialog=1..18}] rotated 173.7 0 run teleport @s ^ ^ ^1 ~ 0
execute if entity @s[scores={Dialog=80}] as @a[scores={Room=-3}] run function luigis_mansion:other/music/set/credits
execute if entity @s[scores={Dialog=80}] run playsound luigis_mansion:music.mario_to_normal_2 music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=80}] run scoreboard players set @a[scores={Room=-3}] Music 560
execute if entity @s[scores={Dialog=80}] run playsound luigis_mansion:entity.mario.vent_stuck neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=141..160}] rotated -6.3 0 run teleport @s ^ ^ ^0.05
execute if entity @s[scores={Dialog=141..160}] at @s run teleport @s ~ ~ ~ ~4.55 ~
tag @s[scores={Dialog=160}] remove stuck
tag @s[scores={Dialog=160}] add dizzy
execute if entity @s[scores={Dialog=160}] run stopsound @a[tag=same_room] neutral luigis_mansion:entity.mario.vent_stuck
execute if entity @s[scores={Dialog=160}] run playsound luigis_mansion:entity.mario.dizzy_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=200}] run playsound luigis_mansion:entity.mario.dizzy_1 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=240}] run playsound luigis_mansion:entity.mario.dizzy_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=280}] run playsound luigis_mansion:entity.mario.dizzy_1 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=320}] run playsound luigis_mansion:entity.mario.dizzy_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=360}] run playsound luigis_mansion:entity.mario.dizzy_1 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=400}] run playsound luigis_mansion:entity.mario.dizzy_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=440}] run playsound luigis_mansion:entity.mario.dizzy_1 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=480}] run playsound luigis_mansion:entity.mario.dizzy_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=520}] run playsound luigis_mansion:entity.mario.dizzy_1 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=560}] run playsound luigis_mansion:entity.mario.dizzy_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=600}] run playsound luigis_mansion:entity.mario.dizzy_1 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=440}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.the_end"}]}
execute if entity @s[scores={Dialog=440}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.the_end.more"}]}
execute if entity @s[scores={Dialog=..379}] at @e[tag=e_gadd,scores={Room=-3},limit=1] facing entity @s feet run teleport @e[tag=e_gadd,scores={Room=-3},limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=380}] run tag @e[tag=e_gadd,scores={Room=-3},limit=1] add walk
execute if entity @s[scores={Dialog=380..638}] as @e[tag=e_gadd,scores={Room=-3},limit=1] at @s run teleport @s ~ ~ ~0.1 0 0
execute if entity @s[scores={Dialog=639}] as @e[tag=e_gadd,scores={Room=-3},limit=1] at @s run teleport @s 774 77 14 0 0
execute if entity @s[scores={Dialog=639}] run tag @e[tag=e_gadd,scores={Room=-3},limit=1] remove walk
execute if entity @s[scores={Dialog=639}] run function luigis_mansion:dialog/portrificationizing/get_total_score
execute if entity @s[scores={Dialog=639}] if score #temp Money matches ..4999 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.the_end.h_rank"}]}
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 5000..19999 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.the_end.g_rank"}]}
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 20000..39999 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.the_end.f_rank"}]}
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 40000..49999 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.the_end.e_rank"}]}
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 50000..59999 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.the_end.d_rank"}]}
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 60000..69999 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.the_end.c_rank"}]}
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 70000..149999 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.the_end.b_rank"}]}
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 150000.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.the_end.a_rank"}]}
execute if entity @s[scores={Dialog=639}] if score #temp Money matches ..4999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.h set value 1b
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 5000..19999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.g set value 1b
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 20000..39999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.f set value 1b
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 40000..49999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.e set value 1b
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 50000..59999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.d set value 1b
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 60000..69999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.c set value 1b
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 70000..149999 run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.b set value 1b
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 150000.. run data modify storage luigis_mansion:data current_state.mansion_ranks_achieved.a set value 1b
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 1 if data storage luigis_mansion:data current_state.current_data.money_grabbed[{money:{luigis_mansion:{red_diamond:1}}}] if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:0,portrait_ghosts:{king_boo:{portrificationized:1b,loot:{luigis_mansion:{red_diamond:1}}}}} run advancement grant @a[tag=same_room] only luigis_mansion:challenges/spare_some_change
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 2 if data storage luigis_mansion:data current_state.current_data.money_grabbed[{money:{luigis_mansion:{red_diamond:1}}}] if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:1,portrait_ghosts:{king_boo:{portrificationized:1b,loot:{luigis_mansion:{red_diamond:1}}}}} run advancement grant @a[tag=same_room] only luigis_mansion:challenges/spare_some_change
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 5 if data storage luigis_mansion:data current_state.current_data.money_grabbed[{money:{luigis_mansion:{red_diamond:1}}}] if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:2,portrait_ghosts:{king_boo:{portrificationized:1b,loot:{luigis_mansion:{red_diamond:1}}}}} run advancement grant @a[tag=same_room] only luigis_mansion:challenges/spare_some_change
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 10 if data storage luigis_mansion:data current_state.current_data.money_grabbed[{money:{luigis_mansion:{red_diamond:1}}}] if data storage luigis_mansion:data current_state.current_data{lowest_difficulty:3,portrait_ghosts:{king_boo:{portrificationized:1b,loot:{luigis_mansion:{red_diamond:1}}}}} run advancement grant @a[tag=same_room] only luigis_mansion:challenges/spare_some_change
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 142390.. run advancement grant @a[tag=same_room] only luigis_mansion:challenges/making_wario_jealous
execute if entity @s[scores={Dialog=639}] if score #temp Money matches 186440.. run advancement grant @a[tag=same_room] only luigis_mansion:challenges/scrooge_mcduck_it_up
execute if entity @s[scores={Dialog=639}] run scoreboard players reset #temp Money
execute at @s[scores={Dialog=639..}] as @e[tag=e_gadd,scores={Room=-3},limit=1] at @s facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=640}] run function #luigis_mansion:cleared_mansion
execute if entity @s[scores={Dialog=640}] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:message.save.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger EGaddGhostPortrificationizerRoomChoice set 1"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:message.save.no","clickEvent":{"action":"run_command","value":"/trigger EGaddGhostPortrificationizerRoomChoice set 2"}}]}
execute if entity @s[scores={Dialog=640}] run scoreboard players enable @a[tag=same_room] EGaddGhostPortrificationizerRoomChoice
execute if entity @s[scores={Dialog=640}] run tag @a add show_credits
execute if entity @s[scores={Dialog=641}] unless entity @a[tag=same_room,limit=1] run scoreboard players set @s Dialog 642
execute if entity @s[scores={Dialog=642}] run function luigis_mansion:entities/mario/delete_mansion_data
execute if entity @s[scores={Dialog=642}] run scoreboard players set #mansion_type Selected -1
execute if entity @s[scores={Dialog=642}] run scoreboard players set #mansion_data_index Selected -1
execute if entity @s[scores={Dialog=642}] run scoreboard players set #previous_mansion_index Selected -1
execute if entity @s[scores={Dialog=642}] as @a[scores={EGaddGhostPortrificationizerRoomChoice=1},limit=1] run function luigis_mansion:data/save
execute if entity @s[scores={Dialog=642}] run scoreboard players reset @a[tag=same_room] EGaddGhostPortrificationizerRoomChoice
tag @s[scores={Dialog=642}] add remove_from_existence