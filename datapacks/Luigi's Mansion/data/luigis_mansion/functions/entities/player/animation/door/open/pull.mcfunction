scoreboard players add @s AnimationProg 1
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s HomeRot
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
kill @e[tag=home,limit=1]
execute if entity @s[scores={AnimationProg=10,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.open_door.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=10,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.open_door.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProg=10,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.open_door.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=10,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.open_door.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProg=5..34}] Walk 1
execute at @s run teleport @s[scores={AnimationProg=5..14}] ^ ^ ^-0.1
execute at @s run teleport @s[scores={AnimationProg=15..34}] ^ ^ ^0.1
execute if entity @s[scores={AnimationProg=29}] run function #luigis_mansion:entities/door/go_through
execute at @s[distance=..0.7] run teleport @s[scores={AnimationProg=29}] ^ ^ ^2.1
execute if entity @s[scores={AnimationProg=29..32}] if entity @e[tag=!open_door,tag=door,tag=frame,distance=..0.7] run function luigis_mansion:entities/door/force_animation
scoreboard players set @s Sound 10
scoreboard players set @s Invulnerable 1000
tag @s[scores={IdleTime=-1}] remove left_door
execute unless entity @a[tag=!spectator,distance=0.1..,limit=1] run scoreboard players set #freeze_timer Selected 1
scoreboard players set @s[scores={IdleTime=-1}] Invulnerable 0
scoreboard players reset @s[scores={IdleTime=-1}] AnimationProg