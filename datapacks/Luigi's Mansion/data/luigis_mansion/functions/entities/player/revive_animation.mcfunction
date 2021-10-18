summon minecraft:marker ~ ~ ~ {Tags:["home"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotX
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
kill @e[tag=home,limit=1]
scoreboard players set @s[scores={DeathTime=61..}] DeathTime 61
scoreboard players remove @s[scores={DeathTime=1..}] DeathTime 1
tag @s remove death_animation
tag @s[scores={DeathTime=0}] remove revive_animation
execute if entity @s[scores={DeathTime=0}] run function luigis_mansion:other/music/set/silence
scoreboard players set @s[scores={DeathTime=0}] Health 100
scoreboard players reset @s[scores={DeathTime=0}] DeathTime