scoreboard players add @s AnimationProgress 1
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s HomeRotation
execute at @e[tag=home,limit=1] run tp @s[scores={AnimationProgress=..259}] ~ ~ ~ ~ 40
execute at @e[tag=home,limit=1] run tp @s[scores={AnimationProgress=260}] ~ ~ ~ ~ 0
kill @e[tag=home,limit=1]
tag @s[scores={AnimationProgress=1}] add reset_rotation
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:item.key.grab block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=80}] run playsound luigis_mansion:item.key.use block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s Sound 10
scoreboard players set @s Invulnerable 1000
tag @s add pause_dialog
tag @s[scores={AnimationProgress=260}] remove reset_rotation
scoreboard players set @s[scores={AnimationProgress=260}] Invulnerable 0
execute unless entity @a[tag=!spectator,distance=0.1..,limit=1] run scoreboard players set #freeze_timer Selected 1
execute if entity @s[scores={AnimationProgress=260}] run function luigis_mansion:entities/player/animation/set/door/open/push