execute if entity @s[tag=!burning,tag=visible] run function luigis_mansion:entities/shivers/turn_invisible
execute if entity @s[tag=burning,tag=!visible] run function luigis_mansion:entities/shivers/turn_visible

execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 682 11 -14
scoreboard players set @s[x=682.5,y=11,z=-13.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 682 11 2
scoreboard players set @s[x=682.5,y=11,z=2.5,distance=..0.7,scores={PathStep=2}] PathStep 1
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
teleport @s[scores={PathStep=44}] ~ ~ ~ facing 682 11 -19
scoreboard players set @s[x=682.5,y=11,z=-18.5,distance=..0.7,scores={PathStep=44}] PathStep 45
teleport @s[scores={PathStep=45}] ~ ~ ~ facing 716 11 -19
scoreboard players set @s[x=716.5,y=11,z=-18.5,distance=..0.7,scores={PathStep=45}] PathStep 46
teleport @s[scores={PathStep=46}] ~ ~ ~ facing 716 11 -31
scoreboard players set @s[x=716.5,y=11,z=-30.5,distance=..0.7,scores={PathStep=46}] PathStep 47
teleport @s[scores={PathStep=47}] ~ ~ ~ facing 716 11 24
scoreboard players set @s[x=716.5,y=11,z=24.5,distance=..0.7,scores={PathStep=47}] PathStep 48
teleport @s[x=716.5,y=11,z=24.5,distance=..0.7] 716 11 58
execute at @s run teleport @s[scores={PathStep=48}] ~ ~ ~ facing 716 11 65
scoreboard players set @s[x=716.5,y=11,z=65.5,distance=..0.7,scores={PathStep=48}] PathStep 49
teleport @s[scores={PathStep=49}] ~ ~ ~ facing 719 11 65
scoreboard players set @s[x=719.5,y=11,z=65.5,distance=..0.7,scores={PathStep=49}] PathStep 50
teleport @s[x=719.5,y=11,z=65.5,distance=..0.7] 738 11 61
execute at @s run teleport @s[scores={PathStep=50}] ~ ~ ~ facing 740 11 61
scoreboard players set @s[x=740.5,y=11,z=61.5,distance=..0.7,scores={PathStep=50}] PathStep 51
teleport @s[scores={PathStep=51}] ~ ~ ~ facing 742 11 69
scoreboard players set @s[x=742.5,y=11,z=69.5,distance=..0.7,scores={PathStep=51}] PathStep 52
teleport @s[scores={PathStep=52}] ~ ~ ~ facing 745 11 67
execute if entity @s[scores={PathStep=53..}] run scoreboard players add @s PathStep 1
scoreboard players set @s[x=745.5,y=11,z=67.5,distance=..0.7,scores={PathStep=52}] PathStep 53
execute at @s[scores={PathStep=..52}] unless entity @s[scores={PathStep=3..43}] run function luigis_mansion:entities/shivers/move_forward
scoreboard players set @s[scores={PathStep=53}] AnimationProg 0
tag @s[scores={PathStep=53}] remove run
tag @s[scores={PathStep=53}] add look_around
tag @s[scores={PathStep=73}] remove look_around
tag @s[scores={PathStep=73}] add sit_down
tag @s[scores={PathStep=93}] remove sit_down
execute if entity @s[scores={PathStep=73..93}] run scoreboard players set #temp Move 1
execute at @s[scores={PathStep=73..93}] facing 745 11 66 run function luigis_mansion:entities/shivers/move_forward
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

teleport @s[tag=disappear,scores={PathStep=..93}] 682 11 0
teleport @s[tag=disappear,scores={PathStep=93..}] 738 11 61
scoreboard players set @s[tag=disappear,scores={PathStep=93..}] PathStep 50
execute if entity @a[tag=blackout,limit=1] run tag @s add remove_from_existence
execute if data storage luigis_mansion:data current_state.current_data.rooms.butlers_room{cleared:1b} run tag @s add remove_from_existence