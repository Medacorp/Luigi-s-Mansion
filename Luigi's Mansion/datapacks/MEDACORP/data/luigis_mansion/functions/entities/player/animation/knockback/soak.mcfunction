execute if entity @s[scores={IdleTime=-40,Sound=0,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_scare.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-40,Sound=0,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_scare.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={IdleTime=-40,Sound=0,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_scare.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-40,Sound=0,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_scare.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=-40,Sound=0}] Sound 30
execute if entity @s[scores={IdleTime=-10,Sound=0,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_soak.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-10,Sound=0,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_soak.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={IdleTime=-10,Sound=0,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_soak.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-10,Sound=0,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_soak.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=-10,Sound=0}] Sound 20
summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s RotationY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 1 run scoreboard players get @s RotationX
execute at @e[tag=home,limit=1] run tp @s ~ 0 ~ ~ ~
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
kill @e[tag=home,limit=1]

tag @s remove vacuuming_ghost