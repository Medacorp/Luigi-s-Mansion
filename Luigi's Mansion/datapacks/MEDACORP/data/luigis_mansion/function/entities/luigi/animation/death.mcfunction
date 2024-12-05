function luigis_mansion:entities/luigi/animation/shared/freeze_player {rotated:"~ ~"}
scoreboard players add @s[scores={DeathTime=..119}] DeathTime 1
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players add @s DeathTime 1
tag @s[scores={DeathTime=1}] remove vacuuming_ghost
execute if entity @s[scores={DeathTime=1}] run playsound luigis_mansion:entity.player.death player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={DeathTime=120}] as @a[tag=this_player,tag=!dead_player,limit=1] run function luigis_mansion:entities/player/turn_into_spectator
execute if entity @s[scores={Shrunk=1..}] run function luigis_mansion:items/poison_mushroom/wear_off