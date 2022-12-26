scoreboard players add @s ActionTime 1
teleport @s[scores={ActionTime=1}] ~ 40 ~
data modify entity @s[scores={ActionTime=1}] ArmorItems[3].tag.CustomModelData set value 88
execute if entity @s[scores={ActionTime=1}] run scoreboard players set @s AnimationProg 0
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.bowser.reattach_head hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={ActionTime=1..40}] run function luigis_mansion:animations/bowser/grab_head_backwards
scoreboard players set @s[scores={ActionTime=41}] AnimationProg 0
execute if entity @s[scores={ActionTime=41..140}] run function luigis_mansion:animations/bowser/headless_run
execute if entity @s[scores={ActionTime=40}] facing entity @p[tag=same_room,tag=!spectator,tag=player] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set #temp Move 50
execute if entity @s[y_rotation=-90..90] positioned ~ ~ ~2 unless block ~ ~ ~ minecraft:clay unless block ~ ~ ~ minecraft:air at @s run function luigis_mansion:entities/bowser/headless_run_turn/z
execute if entity @s[y_rotation=90..-90] positioned ~ ~ ~-2 unless block ~ ~ ~ minecraft:clay unless block ~ ~ ~ minecraft:air at @s run function luigis_mansion:entities/bowser/headless_run_turn/z
execute if entity @s[y_rotation=-180..0] positioned ~2 ~ ~ unless block ~ ~ ~ minecraft:clay unless block ~ ~ ~ minecraft:air at @s run function luigis_mansion:entities/bowser/headless_run_turn/x
execute if entity @s[y_rotation=0..180] positioned ~-2 ~ ~ unless block ~ ~ ~ minecraft:clay unless block ~ ~ ~ minecraft:air at @s run function luigis_mansion:entities/bowser/headless_run_turn/x
execute at @s[scores={ActionTime=40..139}] run function luigis_mansion:entities/bowser/move_forward
execute if entity @s[scores={ActionTime=140}] facing entity @p[tag=same_room,tag=!spectator,tag=player] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s[scores={ActionTime=141}] AnimationProg 0
execute if entity @s[scores={ActionTime=140}] run playsound luigis_mansion:entity.bowser.correct_head hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={ActionTime=141..180}] run function luigis_mansion:animations/bowser/correct_head
tag @s[scores={ActionTime=180}] remove headless_run
scoreboard players set @s[scores={ActionTime=180}] AnimationProg 0
scoreboard players reset @s[scores={ActionTime=180}] ActionTime
execute positioned ^ ^-2 ^-1 as @e[distance=..3,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute positioned ^ ^-2 ^-1 if entity @s[tag=!dead,tag=!captured,tag=!removed_from_existence] as @a[distance=..3,scores={Invulnerable=0},tag=!spectator,tag=!vacuumed] positioned ^ ^-2 ^-1 run function luigis_mansion:entities/bowser/stomped_on
execute positioned ^ ^ ^-2 as @e[distance=..3,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute positioned ^ ^ ^-2 if entity @s[tag=!dead,tag=!captured,tag=!removed_from_existence] as @a[distance=..3,scores={Invulnerable=0},tag=!spectator,tag=!vacuumed] positioned ^ ^ ^-2 run function luigis_mansion:entities/bowser/stomped_on