scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=shivers_body] if score @s GhostNr = #temp GhostNr run tag @s add this_shivers_body

execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.shivers.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run loot spawn ~ ~ ~ loot luigis_mansion:entities/ghost/shivers
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~
execute if entity @s[tag=dead] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.shivers.health int 1 run scoreboard players set @s Health 0
execute if entity @s[tag=dead] run advancement grant @a only luigis_mansion:portrait_ghosts/shivers
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.shivers.health int 1 run scoreboard players operation @s LastHealth = @s Health

execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound luigis_mansion:entity.shivers.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.shivers.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 40

execute if entity @s[tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0}] run function #luigis_mansion:entities/shivers/wander

execute if entity @s[tag=vanish] run function luigis_mansion:entities/shivers/vanish
execute at @s[tag=look_around] run function luigis_mansion:animations/shivers/look_around
execute at @s[tag=panic] run function luigis_mansion:animations/shivers/panic
execute at @s[tag=run] run function luigis_mansion:animations/shivers/run
execute at @s[tag=sit_down] run function luigis_mansion:animations/shivers/sit_down
execute at @s[tag=burn,tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:animations/shivers/burn
execute at @s[tag=!hurt,tag=!fleeing,tag=!burn,tag=!vanish,tag=!look_around,tag=!panic,tag=!run,tag=!sit_down,scores={StunTime=0}] run function luigis_mansion:animations/shivers/idle
execute at @s[tag=fleeing] run function luigis_mansion:animations/shivers/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/shivers/hurt

execute unless entity @s[tag=!dead,tag=!remove_from_existence] run teleport @e[tag=this_shivers_body] ~ -100 ~
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_shivers_body] add dead

scoreboard players reset #temp GhostNr
tag @e[tag=this_shivers_body,limit=1] remove this_shivers_body