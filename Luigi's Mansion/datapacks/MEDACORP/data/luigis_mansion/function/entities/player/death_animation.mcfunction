summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s RotationY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 1 run scoreboard players get @s RotationX
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
kill @e[tag=home,limit=1]
scoreboard players add @s[scores={DeathTime=..120}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
tag @s[scores={DeathTime=1}] remove vacuuming_ghost
execute if entity @s[scores={DeathTime=1}] run playsound luigis_mansion:entity.player.death player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={DeathTime=120}] run function luigis_mansion:entities/player/turn_into_spectator
scoreboard players set @s[scores={DeathTime=120}] Offline -1
tag @s[scores={DeathTime=120}] remove death_animation
scoreboard players reset @s[scores={DeathTime=120}] DeathTime
execute if entity @s[scores={Shrunk=1..}] run function luigis_mansion:items/poison_mushroom/readd_inventory
scoreboard players set @s Shrunk 0