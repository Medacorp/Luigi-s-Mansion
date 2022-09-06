summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotX
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
kill @e[tag=home,limit=1]
scoreboard players add @s[scores={DeathTime=..20}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
tag @s[scores={DeathTime=1}] remove vacuuming_ghost
execute if entity @s[scores={DeathTime=1,Shrunk=0}] run playsound luigis_mansion_3ds_remake:entity.gooigi.death player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={DeathTime=1,Shrunk=1..}] run playsound luigis_mansion_3ds_remake:entity.gooigi.death player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={DeathTime=20}] run function luigis_mansion_3ds_remake:entities/player/gooigi_turn_spectator
tag @s[scores={DeathTime=20}] remove death_animation
scoreboard players reset @s[scores={DeathTime=20}] DeathTime
execute if entity @s[scores={Shrunk=1..}] run function luigis_mansion:items/poison_mushroom/readd_inventory
scoreboard players set @s Shrunk 0