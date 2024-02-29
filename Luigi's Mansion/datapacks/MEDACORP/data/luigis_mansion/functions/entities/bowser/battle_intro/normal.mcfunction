scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..529}] unless entity @s[scores={Dialog=220..340}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute at @s[scores={Dialog=177..220}] run teleport @s ~ ~-1 ~
execute if entity @s[scores={Dialog=220}] run playsound luigis_mansion:entity.bowser.land hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=..220}] as @a[tag=same_room,tag=looking_at_map] at @s run function luigis_mansion:selection_menu/game_boy_horror/map/exit
execute if entity @s[scores={Dialog=220}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=220}] as @a[tag=same_room] at @s positioned ^ ^ ^1 run function luigis_mansion:entities/player/animation/set/scare/bash_no_move
tag @s add me
execute if entity @s[scores={Dialog=220..329}] unless score #mirrored Selected matches 1 as @a[tag=same_room,scores={IdleTime=-21}] at @s positioned ^ ^ ^1 unless entity @e[tag=me,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=me,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=me,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=me,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=me,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=me,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=me,distance=..3,limit=1] at @s rotated ~5 0 positioned ^ ^ ^-0.1 run function luigis_mansion:entities/player/animation/scare/bash_force_move
execute if entity @s[scores={Dialog=220..329}] if score #mirrored Selected matches 1 as @a[tag=same_room,scores={IdleTime=-21}] at @s positioned ^ ^ ^1 unless entity @e[tag=me,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=me,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=me,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=me,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=me,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=me,distance=..3,limit=1] positioned ^ ^ ^1 unless entity @e[tag=me,distance=..3,limit=1] at @s rotated ~-5 0 positioned ^ ^ ^-0.1 run function luigis_mansion:entities/player/animation/scare/bash_force_move
execute if entity @s[scores={Dialog=220..329}] as @a[tag=same_room,scores={IdleTime=-21},distance=..9] at @s positioned ^ ^ ^5 if entity @e[tag=me,distance=..5,limit=1] at @s facing entity @e[tag=me,limit=1] feet rotated ~ 0 positioned ^ ^ ^-0.1 run function luigis_mansion:entities/player/animation/scare/bash_force_move
tag @s remove me
execute if entity @s[scores={Dialog=220..329}] run scoreboard players set @a[tag=same_room,limit=1,scores={IdleTime=-21}] IdleTime -22
teleport @s[scores={Dialog=220}] ~ 37 ~
data modify entity @s[scores={Dialog=220}] data.animation set value {namespace:"luigis_mansion",id:"roar"}
data modify entity @s[scores={Dialog=220..250}] data.initial_animation_progress set value 0
data modify entity @s[scores={Dialog=290}] data.animation set value {namespace:"luigis_mansion",id:"attach_head"}
tag @s[scores={Dialog=370}] add breathe_fire
tag @s[scores={Dialog=530}] add intro_done
tag @s[scores={Dialog=530}] add can_decapitate
execute if entity @s[scores={Dialog=530}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
scoreboard players reset @s[scores={Dialog=530}] Dialog