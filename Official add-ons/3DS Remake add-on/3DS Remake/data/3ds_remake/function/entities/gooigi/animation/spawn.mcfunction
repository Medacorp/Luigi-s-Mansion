function luigis_mansion:entities/luigi/animation/shared/freeze_player {rotated:"~ ~"}
scoreboard players add @s[scores={DeathTime=..19}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
execute if entity @s[scores={Shrunk=1..}] run function luigis_mansion:items/poison_mushroom/wear_off
execute if entity @s[scores={DeathTime=1}] run playsound 3ds_remake:entity.gooigi.spawn player @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={DeathTime=20}] remove spawn_animation
scoreboard players reset @s[scores={DeathTime=20}] DeathTime