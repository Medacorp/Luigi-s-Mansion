scoreboard players set @s TargetTime 0
data remove entity @s data.target_pos
tag @s remove reached_target
summon minecraft:marker ~ ~ ~ {Tags:["target_pos","remove_from_existence"]}
data modify entity @e[tag=target_pos,limit=1] Pos set from entity @e[tag=target,limit=1,sort=nearest] Pos
execute if entity @s[tag=!ground_bound] facing entity @e[tag=target_pos,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=ground_bound] facing entity @e[tag=target_pos,limit=1] feet run teleport @s ~ ~ ~ ~ 0
execute at @s run function luigis_mansion:entities/ghost/move_forward
execute if score #temp Move matches -1 at @s if block ~ ~2 ~ #luigis_mansion:ghosts_ignore run teleport @s[tag=!ground_bound,tag=!vacuumable,tag=!flipped_gravity] ~ ~0.1 ~
execute if score #temp Move matches -1 at @s if block ~ ~2 ~ #luigis_mansion:ghosts_ignore run teleport @s[tag=!ground_bound,tag=!vacuumable,tag=flipped_gravity] ~ ~-0.1 ~
execute if score #temp Move matches -1 at @s if block ~ ~1 ~ #luigis_mansion:ghosts_ignore run teleport @s[tag=!ground_bound,tag=vacuumable,tag=!flipped_gravity] ~ ~0.1 ~
execute if score #temp Move matches -1 at @s if block ~ ~1 ~ #luigis_mansion:ghosts_ignore run teleport @s[tag=!ground_bound,tag=vacuumable,tag=flipped_gravity] ~ ~-0.1 ~
kill @e[tag=target_pos,limit=1]