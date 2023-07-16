scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run function luigis_mansion:entities/player/animation/set/look
tag @s[scores={Dialog=21}] add stop_model
execute if entity @s[scores={Dialog=23}] run scoreboard players set @a[tag=same_room,gamemode=!spectator] Music 340
execute if entity @s[scores={Dialog=23}] run playsound luigis_mansion:music.observatory_moon music @a[tag=same_room,gamemode=!spectator] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=22}] run summon minecraft:marker 643 21 104 {Tags:["observatory_facing"],Rotation:[-180.0f,0.0f]}
teleport @s[scores={Dialog=1..21}] 643 20 95 0 0
execute if entity @s[scores={Dialog=22}] run setblock 643 20 104 minecraft:barrier
execute if entity @s[scores={Dialog=300}] run setblock 643 20 104 minecraft:air
execute at @e[type=minecraft:marker,tag=observatory_facing] run teleport @s[scores={Dialog=22..221}] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=22..68}] as @e[type=minecraft:marker,tag=observatory_facing] at @s run teleport @s ~ ~ ~ ~ ~-0.6
execute if entity @s[scores={Dialog=69..116}] as @e[type=minecraft:marker,tag=observatory_facing] at @s run teleport @s ~ ~ ~ ~0.3 ~-0.6
execute if entity @s[scores={Dialog=117..163}] as @e[type=minecraft:marker,tag=observatory_facing] at @s run teleport @s ~ ~ ~ ~0.3 ~
execute if entity @s[scores={Dialog=164..211}] as @e[type=minecraft:marker,tag=observatory_facing] at @s run teleport @s ~ ~ ~ ~0.3 ~0.6
execute if entity @s[scores={Dialog=212..221}] as @e[type=minecraft:marker,tag=observatory_facing] at @s run teleport @s ~ ~ ~ ~2.99 ~2.82
execute if entity @s[scores={Dialog=221}] run tag @e[type=minecraft:marker,tag=observatory_facing] add remove_from_existence
teleport @s[scores={Dialog=222..299}] 643 21 104 72.8 3.8
execute at @s run teleport @s[scores={Dialog=234}] ^ ^ ^-0.1
execute at @s run teleport @s[scores={Dialog=235}] ^ ^ ^-0.2
execute at @s run teleport @s[scores={Dialog=236}] ^ ^ ^-0.3
execute at @s run teleport @s[scores={Dialog=237}] ^ ^ ^-0.4
execute at @s run teleport @s[scores={Dialog=238}] ^ ^ ^-0.5
execute at @s run teleport @s[scores={Dialog=239}] ^ ^ ^-0.4
execute at @s run teleport @s[scores={Dialog=240}] ^ ^ ^-0.3
execute at @s run teleport @s[scores={Dialog=241}] ^ ^ ^-0.2
execute at @s run teleport @s[scores={Dialog=242}] ^ ^ ^-0.1
execute at @s run teleport @s[scores={Dialog=243}] ^ ^ ^0
execute at @s run teleport @s[scores={Dialog=244}] ^ ^ ^0.1
execute at @s run teleport @s[scores={Dialog=245}] ^ ^ ^0.2
execute at @s run teleport @s[scores={Dialog=246}] ^ ^ ^0.3
execute at @s run teleport @s[scores={Dialog=247}] ^ ^ ^0.5
execute at @s run teleport @s[scores={Dialog=248}] ^ ^ ^0.7
execute at @s run teleport @s[scores={Dialog=249}] ^ ^ ^0.9
execute at @s run teleport @s[scores={Dialog=250}] ^ ^ ^1.1
execute at @s run teleport @s[scores={Dialog=251}] ^ ^ ^1.3
execute at @s run teleport @s[scores={Dialog=252}] ^ ^ ^1.5
execute at @s run teleport @s[scores={Dialog=253}] ^ ^ ^1.7
execute at @s run teleport @s[scores={Dialog=254}] ^ ^ ^1.9
execute at @s run teleport @s[scores={Dialog=255}] ^ ^ ^2.1
execute at @s run teleport @s[scores={Dialog=256}] ^ ^ ^2.3
execute at @s run teleport @s[scores={Dialog=257}] ^ ^ ^2.5
execute at @s run teleport @s[scores={Dialog=258}] ^ ^ ^2.7
execute at @s run teleport @s[scores={Dialog=259}] ^ ^ ^2.9
execute at @s run teleport @s[scores={Dialog=260}] ^ ^ ^3
execute at @s run teleport @s[scores={Dialog=261}] ^ ^ ^3.1
execute at @s run teleport @s[scores={Dialog=262..299}] ^ ^ ^3.2
execute at @s[scores={Dialog=22..299}] run particle minecraft:end_rod ~ ~ ~ 5 5 5 0 5 force @s
teleport @s[scores={Dialog=300..340}] 643 20 95 0 0
execute store result score @s PositionX run data get entity @s Pos[0] 100
execute store result score @s PositionY run data get entity @s Pos[1] 100
execute store result score @s PositionZ run data get entity @s Pos[2] 100
execute if entity @s[scores={Dialog=300}] run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room,gamemode=!spectator] ~ ~ ~ 1000
tag @s[scores={Dialog=340}] remove observatory_dialog
execute if entity @s[scores={Dialog=340}] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=340}] run function luigis_mansion:room/hidden/observatory/destroy
tag @s[scores={Dialog=340}] remove stop_model
scoreboard players set @s[scores={Dialog=340}] Dialog 0