execute if entity @s[scores={PathStep=1..2},tag=visible,tag=!vanish] run function luigis_mansion:entities/shivers/turn_invisible
execute if entity @s[scores={PathStep=3..},tag=!visible,tag=!vanish] run function luigis_mansion:entities/shivers/turn_visible
execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 682 11.6 29
scoreboard players set @s[x=682.5,y=11.6,z=29.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 682 11.6 13
scoreboard players set @s[x=682.5,y=11.6,z=13.5,distance=..0.7,scores={PathStep=2}] PathStep 1
scoreboard players add @s[scores={PathStep=3..43}] PathStep 1
scoreboard players set @s[tag=burning,scores={PathStep=1..2}] PathStep 3
scoreboard players set @s[scores={PathStep=3}] AnimationProg 0
tag @s[scores={PathStep=3}] add look_around
tag @s[scores={PathStep=23}] remove look_around
tag @s[scores={PathStep=23}] add panic
tag @s[scores={PathStep=43}] remove panic
tag @s[scores={PathStep=43}] add run
execute if entity @s[scores={PathStep=3}] unless data storage luigis_mansion:data current_state.current_data.technical_data{shivers_spoke:1b} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.shivers","color":"green"},{"translate":"luigis_mansion:message.shivers.fire"}]}
execute if entity @s[scores={PathStep=3}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {shivers_spoke:1b}
teleport @s[scores={PathStep=44}] ~ ~ ~ facing 682 11.6 34
scoreboard players set @s[x=682.5,y=11.6,z=34.5,distance=..0.7,scores={PathStep=44}] PathStep 45
teleport @s[scores={PathStep=45}] ~ ~ ~ facing 716 11.6 34
scoreboard players set @s[x=716.5,y=11.6,z=34.5,distance=..0.7,scores={PathStep=45}] PathStep 46
teleport @s[scores={PathStep=46}] ~ ~ ~ facing 716 11.6 46
scoreboard players set @s[x=716.5,y=11.6,z=46.5,distance=..0.7,scores={PathStep=46}] PathStep 47
teleport @s[scores={PathStep=47}] ~ ~ ~ facing 716 11.6 -9
scoreboard players set @s[x=716.5,y=11.6,z=-8.5,distance=..0.7,scores={PathStep=47}] PathStep 48
teleport @s[x=716.5,y=11.6,z=-8.5,distance=..0.7] 726 11.6 -43
execute at @s run teleport @s[scores={PathStep=48}] ~ ~ ~ facing 716 11.6 -50
scoreboard players set @s[x=716.5,y=11.6,z=-49.5,distance=..0.7,scores={PathStep=48}] PathStep 49
teleport @s[scores={PathStep=49}] ~ ~ ~ facing 719 11.6 -50
scoreboard players set @s[x=719.5,y=11.6,z=-49.5,distance=..0.7,scores={PathStep=49}] PathStep 50
teleport @s[x=719.5,y=11.6,z=-49.5,distance=..0.7] 738 11.6 -46
execute at @s run teleport @s[scores={PathStep=50}] ~ ~ ~ facing 740 11.6 -46
scoreboard players set @s[x=740.5,y=11.6,z=-45.5,distance=..0.7,scores={PathStep=50}] PathStep 51
teleport @s[scores={PathStep=51}] ~ ~ ~ facing 742 11.6 -54
scoreboard players set @s[x=742.5,y=11.6,z=-53.5,distance=..0.7,scores={PathStep=51}] PathStep 52
teleport @s[scores={PathStep=52}] ~ ~ ~ facing 745 11.6 -52
execute if entity @s[scores={PathStep=53..},tag=!vanish] run scoreboard players add @s PathStep 1
scoreboard players set @s[x=745.5,y=11.6,z=-51.5,distance=..0.7,scores={PathStep=52}] PathStep 53
execute at @s[scores={PathStep=..52},tag=!vanish] unless entity @s[scores={PathStep=3..43}] run function luigis_mansion:entities/shivers/move_forward
scoreboard players set @s[scores={PathStep=53}] AnimationProg 0
tag @s[scores={PathStep=53}] remove run
tag @s[scores={PathStep=53}] add look_around
tag @s[scores={PathStep=73}] remove look_around
tag @s[scores={PathStep=73}] add sit_down
tag @s[scores={PathStep=93}] remove sit_down
execute if entity @s[scores={PathStep=73..93}] run scoreboard players set #temp Move 1
execute at @s[scores={PathStep=73..93},tag=!vanish] facing 745 11.6 -51 run function luigis_mansion:entities/shivers/move_forward
tag @s[scores={PathStep=93}] add burn
scoreboard players set @s[scores={PathStep=173}] AnimationProg 0
tag @s[scores={PathStep=173}] remove burn
tag @s[scores={PathStep=173}] add look_around
tag @s[scores={PathStep=233}] remove look_around
scoreboard players set #temp Move 2
scoreboard players set @s[scores={PathStep=93}] VulnerableTime 80
tag @s[scores={PathStep=233}] add vanish
tag @s[scores={PathStep=233}] remove burning
scoreboard players set @s[scores={PathStep=233}] PathStep 1

execute at @s[tag=look_around] run function luigis_mansion:animations/shivers/look_around
execute at @s[tag=panic] run function luigis_mansion:animations/shivers/panic
execute at @s[tag=run] run function luigis_mansion:animations/shivers/run
execute at @s[tag=sit_down] run function luigis_mansion:animations/shivers/sit_down
execute at @s[tag=burn,tag=!vanish] run function luigis_mansion:animations/shivers/burn
execute at @s[tag=!burn,tag=!vanish,tag=!look_around,tag=!panic,tag=!run,tag=!sit_down] run function luigis_mansion:animations/shivers/idle

execute if entity @a[tag=blackout,limit=1] run tag @s add remove_from_existence
execute if data storage luigis_mansion:data current_state.current_data.rooms.butlers_room{cleared:1b} run tag @s add remove_from_existence