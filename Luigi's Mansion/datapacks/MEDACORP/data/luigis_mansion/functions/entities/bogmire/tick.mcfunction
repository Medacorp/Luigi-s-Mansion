scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_model

execute at @s run teleport @s ~ ~0.5 ~
execute at @s as @e[tag=this_model] run teleport @s ~ ~0.5 ~

execute if entity @s[tag=dying,scores={DeathTime=1}] run tag @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"black_bogmire"}}]}] add remove_from_existence
execute if entity @s[tag=dying,scores={DeathTime=1}] run playsound luigis_mansion:entity.bogmire.succumb hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dying,scores={DeathTime=1}] if data entity @s ArmorItems[3].tag.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot
execute if entity @s[tag=dead] run function luigis_mansion:entities/bogmire/at_death
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.bogmire.health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.bogmire.top_vacuum_damage int 1 run scoreboard players get @s TopVacuumDamage

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] run playsound luigis_mansion:entity.bogmire.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!dying] run playsound luigis_mansion:entity.bogmire.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing,tag=!dying] Sound 40
execute if entity @s[scores={Sound=0},tag=!hurt,tag=!fleeing,tag=visible] run playsound luigis_mansion:entity.bogmire.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=!hurt,tag=!fleeing,tag=visible] Sound 30

execute if entity @s[tag=!fleeing,tag=!hurt,tag=!vanish,scores={StunTime=0}] run function #luigis_mansion:entities/bogmire/tick

execute at @s[tag=vanish] run function luigis_mansion:entities/bogmire/vanish
execute at @s[tag=fleeing,tag=!second_flee_state] run function luigis_mansion:animations/bogmire/flee
execute at @s[tag=fleeing,tag=second_flee_state] run function luigis_mansion:entities/bogmire/second_flee_state
execute at @s[tag=!fleeing,tag=hurt] run tag @e[tag=bogmires_shadow] add dead
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/bogmire/hurt
tag @s[tag=hurt] remove shadow_hit
tag @s[tag=hurt] remove big_shadow
execute if entity @s[tag=shadow_hit,tag=!big_shadow] run item replace entity @e[tag=bogmire_shadow_blob,tag=this_model,limit=1] armor.head with minecraft:diamond_pickaxe{Unbreakable:1,Damage:4,CustomModelData:5}
execute if entity @s[tag=shadow_hit,tag=big_shadow] run item replace entity @e[tag=bogmire_shadow_blob,tag=this_model,limit=1] armor.head with minecraft:diamond_pickaxe{Unbreakable:1,Damage:4,CustomModelData:39}
execute if entity @s[tag=!shadow_hit] run item replace entity @e[tag=bogmire_shadow_blob,tag=this_model,limit=1] armor.head with minecraft:air

execute at @s run teleport @s ~ ~-0.5 ~
execute as @e[tag=this_model] at @s run teleport @s ~ ~-0.5 ~

scoreboard players reset #temp GhostNr
tag @e[tag=this_model] add found_owner
tag @e[tag=this_model] remove this_model
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall