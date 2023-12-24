summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s RotationY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 1 run scoreboard players get @s RotationX
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
kill @e[tag=home,limit=1]
scoreboard players set @s[scores={DeathTime=61..}] DeathTime 61
scoreboard players remove @s[scores={DeathTime=1..}] DeathTime 1
tag @s remove death_animation
tag @s[scores={DeathTime=0}] remove revive_animation
execute if entity @s[scores={DeathTime=0}] run function luigis_mansion:other/music/set/force/silence
execute if entity @s[scores={DeathTime=20}] run playsound luigis_mansion:entity.player.revive player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={DeathTime=60}] run function luigis_mansion:other/revive_message
scoreboard players set @s[scores={DeathTime=0}] Health 100
scoreboard players reset @s[scores={DeathTime=0}] DeathTime