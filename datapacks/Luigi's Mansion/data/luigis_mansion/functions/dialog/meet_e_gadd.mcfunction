scoreboard players add @s Dialog 1
execute unless entity @s[scores={Dialog=72..580}] run tag @a[scores={IdleTime=19..}] remove cold_room_idle
execute unless entity @s[scores={Dialog=72..580}] run scoreboard players set @a[scores={IdleTime=19..}] IdleTime 18
execute if entity @e[tag=gold_ghost,tag=dialog] run tag @a[scores={IdleTime=19..}] remove cold_room_idle
execute if entity @e[tag=gold_ghost,tag=dialog] run scoreboard players set @a[scores={IdleTime=19..}] IdleTime 18
scoreboard players set @s[scores={Dialog=..72,IdleTime=19..}] IdleTime 18
scoreboard players set @e[tag=gold_ghost,tag=dialog] Sound -1
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:ambience.parlor_wind ambient @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.player.scare_causion player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=1}] Sound 60
execute if entity @s[scores={Dialog=1..81}] run stopsound @a[tag=same_room,gamemode=!spectator] music
execute if entity @s[scores={Dialog=1..81}] as @a[tag=same_room,gamemode=!spectator] run function luigis_mansion:other/music/set/non_overwritten_silence
execute if entity @s[scores={Dialog=1..81}] run scoreboard players set @a[tag=same_room,gamemode=!spectator] Music 1308
execute if entity @s[scores={Dialog=81}] run playsound luigis_mansion:music.meet_e_gadd music @a[tag=same_room,gamemode=!spectator] ~ ~ ~ 1000
teleport @s[x=697,y=20,z=7,dx=1,dy=1,dz=1] ~-1 ~ ~
execute if entity @s[scores={Dialog=1}] run teleport @s 725.5 20 28.0 90 0
execute if entity @s[scores={Dialog=2}] run teleport @s 725.5 20 28.0 90 0
execute if entity @s[scores={Dialog=3}] run teleport @s 725.5 20 28.0 90 0
execute if entity @s[scores={Dialog=4}] run teleport @s 725.5 20 28.0 90 0
execute if entity @s[scores={Dialog=5}] run teleport @s 725.5 20 28.0 90 0
execute if entity @s[scores={Dialog=6}] run teleport @s 725.5 20 28.0 90 0
execute if entity @s[scores={Dialog=7}] run teleport @s 725.5 20 28.0 90 0
tag @s[scores={Dialog=8..17}] add walking 
execute if entity @s[scores={Dialog=8}] run teleport @s 725.5 20 28.1 90 0
execute if entity @s[scores={Dialog=9}] run teleport @s 725.5 20 28.2 90 0
execute if entity @s[scores={Dialog=10}] run teleport @s 725.5 20 28.3 90 0
execute if entity @s[scores={Dialog=11}] run teleport @s 725.5 20 28.4 90 0
execute if entity @s[scores={Dialog=12}] run teleport @s 725.5 20 28.5 90 0
execute if entity @s[scores={Dialog=13}] run teleport @s 725.5 20 28.6 90 0
execute if entity @s[scores={Dialog=14}] run teleport @s 725.5 20 28.7 90 0
execute if entity @s[scores={Dialog=15}] run teleport @s 725.5 20 28.8 90 0
execute if entity @s[scores={Dialog=16}] run teleport @s 725.5 20 28.9 90 0
execute if entity @s[scores={Dialog=17}] run teleport @s 725.5 20 29.0 90 0
execute if entity @s[scores={Dialog=18}] run teleport @s 725.5 20 29.0 90 0
execute if entity @s[scores={Dialog=19}] run teleport @s 725.5 20 29.0 90 0
execute if entity @s[scores={Dialog=20}] run teleport @s 725.5 20 29.0 90 0
execute if entity @s[scores={Dialog=21}] run teleport @s 725.5 20 29.0 90 0
execute if entity @s[scores={Dialog=22}] run teleport @s 725.5 20 29.0 90 0
execute if entity @s[scores={Dialog=23}] run teleport @s 725.5 20 29.0 90 0
execute if entity @s[scores={Dialog=24}] run teleport @s 725.5 20 29.0 90 0
execute if entity @s[scores={Dialog=25}] run teleport @s 725.5 20 29.0 90 0
execute if entity @s[scores={Dialog=26}] run teleport @s 725.5 20 29.0 90 0
execute if entity @s[scores={Dialog=27}] run teleport @s 725.5 20 29.0 90 0
tag @s[scores={Dialog=28..37}] add walking 
execute if entity @s[scores={Dialog=28}] run teleport @s 725.5 20 29.1 90 0
execute if entity @s[scores={Dialog=29}] run teleport @s 725.5 20 29.2 90 0
execute if entity @s[scores={Dialog=30}] run teleport @s 725.5 20 29.3 87.75 0
execute if entity @s[scores={Dialog=31}] run teleport @s 725.5 20 29.4 85.5 0
execute if entity @s[scores={Dialog=32}] run teleport @s 725.5 20 29.5 83.25 0
execute if entity @s[scores={Dialog=33}] run teleport @s 725.5 20 29.6 81 0
execute if entity @s[scores={Dialog=34}] run teleport @s 725.5 20 29.7 78.75 0
execute if entity @s[scores={Dialog=35}] run teleport @s 725.5 20 29.8 76.5 0
execute if entity @s[scores={Dialog=36}] run teleport @s 725.5 20 29.9 74.25 0
execute if entity @s[scores={Dialog=37}] run teleport @s 725.5 20 30.0 72 0
execute if entity @s[scores={Dialog=38}] run teleport @s 725.5 20 30.0 69.75 0
execute if entity @s[scores={Dialog=39}] run teleport @s 725.5 20 30.0 67.5 0
execute if entity @s[scores={Dialog=40}] run teleport @s 725.5 20 30.0 65.25 0
execute if entity @s[scores={Dialog=41}] run teleport @s 725.5 20 30.0 63 0
execute if entity @s[scores={Dialog=42}] run teleport @s 725.5 20 30.0 60.75 0
execute if entity @s[scores={Dialog=43}] run teleport @s 725.5 20 30.0 58.5 0
execute if entity @s[scores={Dialog=44}] run teleport @s 725.5 20 30.0 56.25 0
execute if entity @s[scores={Dialog=45}] run teleport @s 725.5 20 30.0 54 0
execute if entity @s[scores={Dialog=46}] run teleport @s 725.5 20 30.0 51.75 0
execute if entity @s[scores={Dialog=47}] run teleport @s 725.5 20 30.0 49.5 0
tag @s[scores={Dialog=48..57}] add walking 
execute if entity @s[scores={Dialog=48}] run teleport @s 725.5 20 30.1 47.25 0
execute if entity @s[scores={Dialog=49}] run teleport @s 725.5 20 30.2 45 0
execute if entity @s[scores={Dialog=50}] run teleport @s 725.5 20 30.3 42.75 0
execute if entity @s[scores={Dialog=51}] run teleport @s 725.5 20 30.4 40.5 0
execute if entity @s[scores={Dialog=52}] run teleport @s 725.5 20 30.5 38.25 0
execute if entity @s[scores={Dialog=53}] run teleport @s 725.5 20 30.6 36 0
execute if entity @s[scores={Dialog=54}] run teleport @s 725.5 20 30.7 33.75 0
execute if entity @s[scores={Dialog=55}] run teleport @s 725.5 20 30.8 31.5 0
execute if entity @s[scores={Dialog=56}] run teleport @s 725.5 20 30.9 29.25 0
execute if entity @s[scores={Dialog=57}] run teleport @s 725.5 20 31.0 27 0
execute if entity @s[scores={Dialog=58}] run teleport @s 725.5 20 31.0 24.75 0
execute if entity @s[scores={Dialog=59}] run teleport @s 725.5 20 31.0 22.5 0
execute if entity @s[scores={Dialog=60}] run teleport @s 725.5 20 31.0 20.25 0
execute if entity @s[scores={Dialog=61}] run teleport @s 725.5 20 31.0 18 0
execute if entity @s[scores={Dialog=62}] run teleport @s 725.5 20 31.0 15.75 0
execute if entity @s[scores={Dialog=63}] run teleport @s 725.5 20 31.0 13.5 0
execute if entity @s[scores={Dialog=64}] run teleport @s 725.5 20 31.0 11.25 0
execute if entity @s[scores={Dialog=65}] run teleport @s 725.5 20 31.0 9 0
execute if entity @s[scores={Dialog=66}] run teleport @s 725.5 20 31.0 6.75 0
execute if entity @s[scores={Dialog=67}] run teleport @s 725.5 20 31.0 4.5 0
tag @s[scores={Dialog=68..71}] add walking 
execute if entity @s[scores={Dialog=68}] run teleport @s 725.5 20 31.1 2.25 0
execute if entity @s[scores={Dialog=69}] run teleport @s 725.5 20 31.2 0 0
execute if entity @s[scores={Dialog=70}] run teleport @s 725.5 20 31.3 0 0
execute if entity @s[scores={Dialog=71..81}] run teleport @s 725.5 20 31.4 0 0
execute if entity @s[scores={Dialog=72}] positioned 718 20 35 run function luigis_mansion:spawn_entities/e_gadd
execute if entity @s[scores={Dialog=72}] positioned 718 20 35 run tag @e[distance=..0.1,tag=e_gadd] add dialog
execute if entity @s[scores={Dialog=72}] positioned 718 20 35 run tag @e[distance=..0.1,tag=e_gadd_head] add dialog
execute if entity @s[scores={Dialog=72}] positioned 725 20 34.9 run function luigis_mansion:spawn_entities/ghost/forced_spawn/gold_ghost
execute if entity @s[scores={Dialog=72}] positioned 725 20 34.9 run scoreboard players set @e[distance=..0.1,tag=gold_ghost] SpawnTime 20
execute if entity @s[scores={Dialog=72}] positioned 725 20 34.9 run tag @e[distance=..0.1,tag=gold_ghost] add dialog
execute if entity @s[scores={Dialog=72}] run teleport @s 725.5 20 31.4 facing entity @e[tag=gold_ghost,tag=dialog,limit=1] feet
execute if entity @s[scores={Dialog=72}] run teleport @e[tag=gold_ghost,tag=dialog,limit=1] 725 20 34.9 -180 0
execute if entity @s[scores={Dialog=72}] as @a[tag=same_room] at @e[tag=ghost,tag=dialog,limit=1] run function luigis_mansion:entities/player/scare/bash
scoreboard players set @s[scores={Dialog=72}] ScareType 3
execute if entity @s[scores={Dialog=72..190}] run scoreboard players set @a[tag=same_room,scores={ScareTime=..20}] ScareTime 21
execute if entity @s[scores={Dialog=92..149}] at @e[tag=ghost,tag=dialog,limit=1] positioned ^ ^ ^3.5 rotated ~-180 ~ run function luigis_mansion:entities/player/scared_bashed_force_move
execute if entity @s[scores={Dialog=92..149}] as @e[tag=ghost,tag=dialog,limit=1] at @s run teleport @s ^ ^ ^0.11 ~ ~
execute if entity @s[scores={Dialog=98}] as @e[tag=e_gadd,tag=dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 718 20 31
execute if entity @s[scores={Dialog=98}] run tag @e[tag=e_gadd,tag=dialog,limit=1] add walk
execute if entity @s[scores={Dialog=98}] run scoreboard players set @e[tag=e_gadd_head,tag=dialog,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=99..129}] as @e[tag=e_gadd,tag=dialog,limit=1] at @s run teleport @s ^ ^ ^0.13
execute if entity @s[scores={Dialog=130}] as @e[tag=e_gadd,tag=dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 722 20 29
execute if entity @s[scores={Dialog=131..150}] as @e[tag=e_gadd,tag=dialog,limit=1] at @s run teleport @s ^ ^ ^0.125
execute if entity @s[scores={Dialog=150}] run tag @e[tag=e_gadd,tag=dialog,limit=1] remove walk
execute if entity @s[scores={Dialog=150}] run tag @e[tag=e_gadd,tag=dialog,limit=1] add poltergust
execute if entity @s[scores={Dialog=150}] run scoreboard players set @e[tag=e_gadd_head,tag=dialog,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=150..459}] at @e[tag=e_gadd,tag=dialog,limit=1] positioned ~ ~0.5 ~ positioned ^ ^ ^0.5 as @e[tag=gold_ghost,tag=dialog,limit=1] facing entity @s feet run function luigis_mansion:items/poltergust_3000/vacuuming/e_gadd
execute if entity @s[scores={Dialog=150}] run scoreboard players set @e[tag=gold_ghost,tag=dialog,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=150}] run tag @e[tag=gold_ghost,tag=dialog,limit=1] add hurt
scoreboard players set @s[scores={Dialog=150}] ScareType 2
execute if entity @s[scores={Dialog=150}] at @e[tag=gold_ghost,tag=dialog,limit=1] run playsound luigis_mansion:entity.gold_ghost.hurt hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=170}] at @e[tag=e_gadd,tag=dialog,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.soy_soh_ooh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=233}] at @e[tag=e_gadd,tag=dialog,limit=1] run playsound luigis_mansion:entity.e_gadd.dragged neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=220}] run tag @e[tag=gold_ghost,tag=dialog,limit=1] add fleeing
execute if entity @s[scores={Dialog=220}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s run playsound luigis_mansion:entity.gold_ghost.cutscene_flee hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=220}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 720 20.3 28
execute if entity @s[scores={Dialog=221..250}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s run teleport @s ^ ^ ^0.2
execute if entity @s[scores={Dialog=251}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 718 20.3 32
execute if entity @s[scores={Dialog=240}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s run playsound luigis_mansion:entity.gold_ghost.cutscene_flee hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=252..271}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s run teleport @s ^ ^ ^0.2
execute if entity @s[scores={Dialog=272}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 720 20.3 35
execute if entity @s[scores={Dialog=273..292}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s run teleport @s ^ ^ ^0.2
execute if entity @s[scores={Dialog=293}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 723 20.3 35
execute if entity @s[scores={Dialog=294..323}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s facing 723 20.3 35 run teleport @s ^ ^ ^0.1
execute if entity @s[scores={Dialog=317}] run scoreboard players set @e[tag=gold_ghost,tag=dialog,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=317}] run tag @e[tag=gold_ghost,tag=dialog,limit=1] remove fleeing
execute if entity @s[scores={Dialog=317}] run tag @e[tag=gold_ghost,tag=dialog,limit=1] remove hurt
execute if entity @s[scores={Dialog=317..319}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s run teleport @s ~ ~ ~ ~60 ~
execute if entity @s[scores={Dialog=320}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s run playsound luigis_mansion:entity.gold_ghost.cutscene_pull hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=340}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s run playsound luigis_mansion:entity.gold_ghost.cutscene_pull hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=324..343}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s facing 725 20.3 32 rotated ~ 0 run teleport @s ^ ^ ^0.2
execute if entity @s[scores={Dialog=344..373}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s facing 723 20.3 26 rotated ~ 0 run teleport @s ^ ^ ^0.2
execute if entity @s[scores={Dialog=374..432}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s facing 719 20.3 26 rotated ~ 0 run teleport @s ^ ^ ^0.077
execute if entity @s[scores={Dialog=320..401}] as @e[tag=gold_ghost,tag=dialog,limit=1] at @s run teleport @s ~ ~ ~ facing entity @e[tag=e_gadd,tag=dialog,limit=1] feet
execute if entity @s[scores={Dialog=391}] run tag @e[tag=gold_ghost,tag=dialog,limit=1] add attack
execute if entity @s[scores={Dialog=391..494}] run tag @e[tag=gold_ghost,tag=dialog,limit=1] remove complain
execute if entity @s[scores={Dialog=391}] run tag @e[tag=gold_ghost,tag=dialog,limit=1] add laugh
execute if entity @s[scores={Dialog=391..593}] as @e[tag=gold_ghost,tag=dialog,tag=!attack,tag=!vanish,limit=1] at @s run teleport @s ~ ~ ~ facing entity @e[tag=e_gadd,tag=dialog,limit=1] feet
execute if entity @s[scores={Dialog=258}] run tag @e[tag=e_gadd,tag=dialog,limit=1] add walk_backwards
execute if entity @s[scores={Dialog=258}] run scoreboard players set @e[tag=e_gadd_head,tag=dialog,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=258..287}] as @e[tag=e_gadd,tag=dialog,limit=1] at @s facing 718 20 31 rotated ~ 0 run teleport @s ^ ^ ^0.13
execute if entity @s[scores={Dialog=288..317}] as @e[tag=e_gadd,tag=dialog,limit=1] at @s facing 718 20 35 rotated ~ 0 run teleport @s ^ ^ ^0.13
execute if entity @s[scores={Dialog=317}] run tag @e[tag=e_gadd,tag=dialog,limit=1] remove walk_backwards
execute if entity @s[scores={Dialog=317}] run tag @e[tag=e_gadd,tag=dialog,limit=1] add dragged
execute if entity @s[scores={Dialog=317}] run scoreboard players set @e[tag=e_gadd_head,tag=dialog,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=318..347}] as @e[tag=e_gadd,tag=dialog,limit=1] at @s facing 723 20 35 rotated ~ 0 run teleport @s ^ ^ ^0.125
execute if entity @s[scores={Dialog=348..367}] as @e[tag=e_gadd,tag=dialog,limit=1] at @s facing 725 20 32 rotated ~ 0 run teleport @s ^ ^ ^0.2
execute if entity @s[scores={Dialog=367..396}] as @e[tag=e_gadd,tag=dialog,limit=1] at @s facing 723 20 26 rotated ~ 0 run teleport @s ^ ^ ^0.2
execute if entity @s[scores={Dialog=397..432}] as @e[tag=e_gadd,tag=dialog,limit=1] at @s facing 719 20 26 rotated ~ 0 run teleport @s ^ ^ ^0.1
execute if entity @s[scores={Dialog=433}] run tag @e[tag=e_gadd,tag=dialog,limit=1] remove dragged
execute if entity @s[scores={Dialog=433}] run tag @e[tag=e_gadd,tag=dialog,limit=1] add hit
execute if entity @s[scores={Dialog=433}] at @e[tag=e_gadd,tag=dialog,limit=1] run playsound luigis_mansion:entity.e_gadd.hurt neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=433}] run scoreboard players set @e[tag=e_gadd_head,tag=dialog,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=433..452}] as @e[tag=e_gadd,tag=dialog,limit=1] at @s facing 725 20 26 rotated ~ 0 run teleport @s ^ ^ ^0.25
execute if entity @s[scores={Dialog=150..452}] as @e[tag=e_gadd,tag=dialog,limit=1] at @s run teleport @s ~ ~ ~ facing entity @e[tag=gold_ghost,tag=dialog,limit=1] feet
execute if entity @s[scores={Dialog=452}] run tag @e[tag=e_gadd,tag=dialog,limit=1] remove hit
execute if entity @s[scores={Dialog=452}] run tag @e[tag=e_gadd,tag=dialog,limit=1] add sitting
execute if entity @s[scores={Dialog=452}] run scoreboard players set @e[tag=e_gadd_head,tag=dialog,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=533}] at @e[tag=e_gadd,tag=dialog,limit=1] run playsound luigis_mansion:entity.e_gadd.complain neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=580}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.meet_e_gadd.1"}]}
execute if entity @s[scores={Dialog=580}] at @e[tag=e_gadd,tag=dialog,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.ehdeedee neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=649}] run tag @e[tag=e_gadd,tag=dialog,limit=1] remove sitting
execute if entity @s[scores={Dialog=649}] run tag @e[tag=e_gadd,tag=dialog,limit=1] add get_up
execute if entity @s[scores={Dialog=649}] run scoreboard players set @e[tag=e_gadd_head,tag=dialog,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=649}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.meet_e_gadd.2"}]}
execute if entity @s[scores={Dialog=649}] at @e[tag=e_gadd,tag=dialog,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.hoo_hoo_jeemee_jeemee_kehkeh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=669..824}] at @e[tag=e_gadd,tag=dialog,limit=1] facing entity @s feet run teleport @e[tag=e_gadd,tag=dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=669}] run tag @e[tag=e_gadd,tag=dialog,limit=1] remove get_up
execute if entity @s[scores={Dialog=669}] run tag @e[tag=e_gadd,tag=dialog,limit=1] add nod
execute if entity @s[scores={Dialog=669}] run scoreboard players set @e[tag=e_gadd_head,tag=dialog,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=765}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.meet_e_gadd.3"}]}
execute if entity @s[scores={Dialog=765}] at @e[tag=e_gadd,tag=dialog,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.gay_roon_ehdeedee_odoh_tahmentahkeh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=860}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.meet_e_gadd.4"}]}
execute if entity @s[scores={Dialog=860}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.meet_e_gadd.4.more"}]}
execute if entity @s[scores={Dialog=860}] at @e[tag=e_gadd,tag=dialog,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=926}] as @e[tag=e_gadd,tag=dialog,limit=1] at @s run teleport @s ~ ~ ~ facing 724 20 36
execute if entity @s[scores={Dialog=946}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.meet_e_gadd.5"}]}
execute if entity @s[scores={Dialog=946}] at @e[tag=e_gadd,tag=dialog,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.keeyehroo_suu_suku_suku neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=946..1187}] as @e[tag=e_gadd,tag=dialog,limit=1] at @s run teleport @s ~ ~ ~ ~0.309917 ~
execute if entity @s[scores={Dialog=1045}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.meet_e_gadd.6"}]}
execute if entity @s[scores={Dialog=1045}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.meet_e_gadd.6.more"}]}
execute if entity @s[scores={Dialog=1045}] at @e[tag=e_gadd,tag=dialog,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.oui_oydohroh_tahmentahkeh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1187}] run tag @e[tag=e_gadd,tag=dialog,limit=1] remove nod
execute if entity @s[scores={Dialog=1187}] run scoreboard players set @e[tag=e_gadd_head,tag=dialog,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=1187}] positioned 718 20 29 run function luigis_mansion:spawn_entities/ghost/forced_spawn/gold_ghost
execute if entity @s[scores={Dialog=1187}] positioned 718 20 29 run tag @e[distance=..0.1,tag=gold_ghost] add dialog
execute if entity @s[scores={Dialog=1187}] positioned 718 20 29 run tag @e[distance=..0.1,tag=gold_ghost] add beta_appear
execute if entity @s[scores={Dialog=1187}] positioned 718 20 29 as @e[distance=..0.1,tag=gold_ghost,tag=dialog] at @s facing entity @e[tag=e_gadd,tag=dialog,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1199}] positioned 718 20 26 run function luigis_mansion:spawn_entities/ghost/forced_spawn/gold_ghost
execute if entity @s[scores={Dialog=1199}] positioned 718 20 26 run tag @e[distance=..0.1,tag=gold_ghost] add dialog
execute if entity @s[scores={Dialog=1199}] positioned 718 20 26 run tag @e[distance=..0.1,tag=gold_ghost] add beta_appear
execute if entity @s[scores={Dialog=1199}] positioned 718 20 26 as @e[distance=..0.1,tag=gold_ghost,tag=dialog] at @s facing entity @e[tag=e_gadd,tag=dialog,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1212}] positioned 720 20 27 run function luigis_mansion:spawn_entities/ghost/forced_spawn/gold_ghost
execute if entity @s[scores={Dialog=1212}] positioned 720 20 27 run tag @e[distance=..0.1,tag=gold_ghost] add dialog
execute if entity @s[scores={Dialog=1212}] positioned 720 20 27 run tag @e[distance=..0.1,tag=gold_ghost] add beta_appear
execute if entity @s[scores={Dialog=1212}] positioned 720 20 27 as @e[distance=..0.1,tag=gold_ghost,tag=dialog] at @s facing entity @e[tag=e_gadd,tag=dialog,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1252}] as @e[tag=gold_ghost,tag=dialog] at @s run playsound luigis_mansion:entity.gold_ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1272}] as @e[tag=gold_ghost,tag=dialog] at @s run playsound luigis_mansion:entity.gold_ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1312}] as @e[tag=gold_ghost,tag=dialog] at @s run playsound luigis_mansion:entity.gold_ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1332}] as @e[tag=gold_ghost,tag=dialog] at @s run playsound luigis_mansion:entity.gold_ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1262}] run tag @e[tag=e_gadd,tag=dialog,limit=1] add shake
execute if entity @s[scores={Dialog=1262}] run scoreboard players set @e[tag=e_gadd_head,tag=dialog,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=1262}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.meet_e_gadd.7"}]}
execute if entity @s[scores={Dialog=1262}] at @e[tag=e_gadd,tag=dialog,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1262..1386}] as @e[tag=gold_ghost,tag=dialog] at @s facing entity @e[tag=e_gadd,tag=dialog,limit=1] feet run teleport @s ^ ^ ^0.025
execute if entity @s[scores={Dialog=1319}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.meet_e_gadd.8"}]}
execute if entity @s[scores={Dialog=1319}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.e_gadd","color":"green"},{"translate":"luigis_mansion:dialog.meet_e_gadd.8.more"}]}
execute if entity @s[scores={Dialog=1319}] at @e[tag=e_gadd,tag=dialog,limit=1] run playsound luigis_mansion:entity.e_gadd.talk.tatta_tatta_tatta neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1387}] run teleport @e[tag=dialog,limit=1] ~ ~-100 ~
execute if entity @s[scores={Dialog=1388}] run tag @e[tag=dialog] add remove_from_existence
execute if entity @s[scores={Dialog=1388}] as @a[scores={MusicType=-1}] run function luigis_mansion:other/music/set/silence
execute if entity @s[scores={Dialog=1388}] run data modify storage luigis_mansion:data {} merge value {found_e_gadd:1b}
execute if entity @s[scores={Dialog=1388}] as @a run function luigis_mansion:room/underground_lab/warp_to
tag @s[scores={Dialog=1388}] remove meet_e_gadd
scoreboard players set @s[scores={Dialog=1388}] Dialog 0

tag @e[tag=gold_ghost,tag=hidden,tag=!spawn,tag=dialog,limit=1] add dead
tag @e[tag=dialog] remove stunable