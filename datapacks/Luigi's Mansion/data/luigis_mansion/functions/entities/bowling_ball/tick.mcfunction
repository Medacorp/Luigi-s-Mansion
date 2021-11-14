execute at @s run teleport @s ~ ~1 ~
scoreboard players set #temp Move 8
execute store result score @s HomeRot run data get entity @s Pose.Head[0] 1
execute if entity @s[tag=!held] store result entity @s Pose.Head[0] float 1 run scoreboard players add @s HomeRot 10
execute at @s[tag=!held] run function luigis_mansion:entities/bowling_ball/move_forward
execute at @s[tag=!held] as @e[distance=..1,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute at @s[tag=!held] run effect give @a[distance=..1,tag=!spectator] minecraft:instant_damage 1 0 true
execute at @s[tag=!held] run scoreboard players set @a[distance=..1,tag=!spectator] ForcedDamage 4
execute at @s[tag=!held] if entity @a[distance=..1,tag=!spectator,limit=1] run tag @s add dead
execute at @s[tag=!held] if entity @a[distance=..1,tag=!spectator,limit=1] run playsound luigis_mansion:entity.bowling_ball.clap hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Sound=0},tag=!held] run playsound luigis_mansion:entity.bowling_ball.roll hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=!held] Sound 20
execute at @s[tag=drop] run teleport @s ~ ~-0.2 ~
execute at @s[tag=drop] unless block ~ ~1 ~ #luigis_mansion:ghosts_ignore run tag @s add dead
execute at @s[tag=dead,scores={Owner=-2147483648..}] run scoreboard players operation #temp GhostNr = @s Owner
execute at @s[tag=dead,scores={Owner=-2147483648..}] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run scoreboard players set @s AnimationProg 0
execute at @s[tag=dead,scores={Owner=-2147483648..}] if entity @a[distance=..1,tag=!spectator,limit=1] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run tag @s add laugh
execute at @s[tag=dead,scores={Owner=-2147483648..}] unless entity @a[distance=..1,tag=!spectator,limit=1] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run tag @s add complain
scoreboard players reset #temp GhostNr
execute at @s run teleport @s ~ ~-1 ~
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall