scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=bogmire_body] if score @s GhostNr = #temp GhostNr run tag @s add this_model
execute as @e[tag=bogmire_shadow_blob] if score @s GhostNr = #temp GhostNr run tag @s add this_model

execute at @s run teleport @s ~ ~0.5 ~
execute at @s as @e[tag=this_model] run teleport @s ~ ~0.5 ~

execute if entity @s[tag=dying,scores={HurtTime=1}] run tag @e[tag=black_bogmire] add remove_from_existence
execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.bogmire.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run function luigis_mansion:entities/bogmire/drop_loot
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~
execute if entity @s[tag=dead] as @a run function luigis_mansion:entities/ghost/boss_damage
execute if entity @s[tag=dead] if score #temp Damage matches ..19 run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.bogmire.rank set value 2b
execute if entity @s[tag=dead] if score #temp Damage matches 20..49 run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.bogmire.rank set value 1b
execute if entity @s[tag=dead] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.bogmire.health int 1 run scoreboard players set @s Health 0
execute if entity @s[tag=dead] run advancement grant @a only luigis_mansion:portrait_ghosts/bogmire
execute if entity @s[tag=dead] run scoreboard players reset #temp Damage
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.bogmire.health int 1 run scoreboard players operation @s LastHealth = @s Health

execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound luigis_mansion:entity.bogmire.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.bogmire.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 40

execute at @s[tag=!fight] run function #luigis_mansion:entities/bogmire/intro
execute at @s[tag=fight,tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0}] run function #luigis_mansion:entities/bogmire/fight

tag @s[tag=vanish,tag=fight] add disappear
execute at @s[tag=vanish,tag=!fight] run function luigis_mansion:entities/bogmire/vanish
execute at @s[tag=appear] run function luigis_mansion:entities/bogmire/appear
execute at @s[tag=shadow_hit] run function luigis_mansion:animations/bogmire/hurt
execute at @s[tag=vanish_flee] run function luigis_mansion:animations/bogmire/flee
execute at @s[tag=!hurt,tag=!fleeing,tag=!appear,tag=!vanish] run function luigis_mansion:animations/bogmire/idle
execute at @s[tag=fleeing] run function luigis_mansion:animations/bogmire/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/bogmire/hurt
tag @s[tag=hurt] remove shadow_hit
tag @s[tag=hurt] remove big_shadow
execute if entity @s[tag=shadow_hit,tag=!big_shadow] run item replace entity @e[tag=bogmire_shadow_blob,tag=this_model,limit=1] armor.head with minecraft:diamond_pickaxe{Unbreakable:1,Damage:4,CustomModelData:5}
execute if entity @s[tag=shadow_hit,tag=big_shadow] run item replace entity @e[tag=bogmire_shadow_blob,tag=this_model,limit=1] armor.head with minecraft:diamond_pickaxe{Unbreakable:1,Damage:4,CustomModelData:39}
execute if entity @s[tag=!shadow_hit] run item replace entity @e[tag=bogmire_shadow_blob,tag=this_model,limit=1] armor.head with minecraft:air

execute unless entity @s[tag=!dead,tag=!remove_from_existence] run teleport @e[tag=this_model] ~ -100 ~
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_model] add dead

execute at @s run teleport @s ~ ~-0.5 ~
execute as @e[tag=this_model] at @s run teleport @s ~ ~-0.5 ~

scoreboard players reset #temp GhostNr
tag @e[tag=this_model] remove this_model
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall