execute if entity @s[tag=normal_death] run playsound luigis_mansion:entity.boolossus.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=normal_death] run function luigis_mansion:entities/boolossus/drop_loot
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~
execute if entity @s[tag=normal_death] as @p[gamemode=!spectator] at @s run function luigis_mansion:items/poltergust_3000/ice_element
execute if entity @s[tag=normal_death] unless entity @e[tag=boolossus,tag=!dead,limit=1] run tag @e[tag=ice_elemental_ghost] add dead
execute if entity @s[tag=normal_death] unless entity @e[tag=boolossus,tag=!dead,limit=1] as @a run function luigis_mansion:entities/ghost/boss_damage
execute if entity @s[tag=normal_death] unless entity @e[tag=boolossus,tag=!dead,limit=1] if score #temp Damage matches ..9 run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus.rank set value 2b
execute if entity @s[tag=normal_death] unless entity @e[tag=boolossus,tag=!dead,limit=1] if score #temp Damage matches 10..49 run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus.rank set value 1b
execute if entity @s[tag=normal_death] unless entity @e[tag=boolossus,tag=!dead,limit=1] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus.health int 1 run scoreboard players set @s Health 0
execute if entity @s[tag=normal_death] unless entity @e[tag=boolossus,tag=!dead,limit=1] run advancement grant @a only luigis_mansion:portrait_ghosts/boolossus
execute if entity @s[tag=normal_death] unless entity @e[tag=boolossus,tag=!dead,limit=1] store result score #temp Boos run data get storage luigis_mansion:data current_state.current_data.boo_counter
execute if entity @s[tag=normal_death] unless entity @e[tag=boolossus,tag=!dead,limit=1] store result storage luigis_mansion:data current_state.current_data.boo_counter int 1 run scoreboard players add #temp Boos 15
execute if entity @s[tag=normal_death] unless entity @e[tag=boolossus,tag=!dead,limit=1] run scoreboard players reset #temp Boos
execute if entity @s[tag=normal_death] unless entity @e[tag=boolossus,tag=!dead,limit=1] run scoreboard players reset #temp Damage
execute if entity @s[tag=normal_death] unless entity @e[tag=boolossus,tag=!dead,limit=1] run data modify storage luigis_mansion:data current_state.current_data.rooms.balcony_2 merge value {cleared:1b}
execute if entity @s[tag=normal_death] unless entity @e[tag=boolossus,tag=!dead,limit=1] run scoreboard players reset #balcony_2 Ticking
execute if entity @s[tag=normal_death] unless entity @e[tag=boolossus,tag=!dead,limit=1] as @a run function #luigis_mansion:entities/boolossus/return

execute if entity @s[tag=battle] run function #luigis_mansion:entities/boolossus/fight
execute if entity @s[tag=!battle,tag=!split] run function #luigis_mansion:entities/boolossus/balcony

execute store result entity @s Pose.Head[0] float 0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.RightArm[1] float -0.01 run data get entity @s Rotation[1] 100
execute store result entity @s Pose.LeftArm[1] float 0.01 run data get entity @s Rotation[1] 100