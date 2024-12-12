function luigis_mansion:entities/luigi/animation/shared/freeze_player {rotated:"~ ~"}
scoreboard players add @s[scores={DeathTime=..20}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
tag @s[scores={DeathTime=1}] remove vacuuming_ghost
execute if entity @s[scores={DeathTime=1}] run function luigis_mansion:entities/luigi/make_sound/simple {sound:"3ds_remake:entity.gooigi.death"}
execute if entity @s[scores={DeathTime=20}] as @a[tag=this_player,limit=1] run function 3ds_remake:entities/gooigi/turn_player_spectator
tag @s[scores={DeathTime=20}] remove death_animation
scoreboard players reset @s[scores={DeathTime=20}] DeathTime
execute if entity @s[scores={Shrunk=1..}] run function luigis_mansion:items/poison_mushroom/wear_off