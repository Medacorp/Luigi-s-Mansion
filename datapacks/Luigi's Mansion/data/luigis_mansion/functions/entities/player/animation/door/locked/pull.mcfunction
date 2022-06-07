execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s HomeRot
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ 40
kill @e[tag=home,limit=1]
scoreboard players add @s AnimationProg 1
scoreboard players set @s Sound 5
scoreboard players set @s Invulnerable 1000
tag @s[scores={IdleTime=-1}] remove left_door
execute unless entity @a[tag=!spectator,distance=0.1..,limit=1] run scoreboard players set #freeze_timer Selected 1
scoreboard players set @s[scores={IdleTime=-1}] Invulnerable 0
scoreboard players reset @s[scores={IdleTime=-1}] AnimationProg