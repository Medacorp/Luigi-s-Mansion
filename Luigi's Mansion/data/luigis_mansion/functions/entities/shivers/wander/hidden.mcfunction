execute if entity @s[tag=!burning,tag=visible] run function luigis_mansion:entities/shivers/turn_invisible
execute if entity @s[tag=burning,tag=!visible] run function luigis_mansion:entities/shivers/turn_visible
execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 682 11 29
scoreboard players set @s[x=66.25,y=11,z=29.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 682 11 13
scoreboard players set @s[x=682.5,y=11,z=13.5,distance=..0.7,scores={PathStep=2}] PathStep 1
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
teleport @s[scores={PathStep=44}] ~ ~ ~ facing 682 11 34
scoreboard players set @s[x=682.5,y=11,z=34.5,distance=..0.7,scores={PathStep=44}] PathStep 45
teleport @s[scores={PathStep=45}] ~ ~ ~ facing 716 11 34
scoreboard players set @s[x=716.5,y=11,z=34.5,distance=..0.7,scores={PathStep=45}] PathStep 46
teleport @s[scores={PathStep=46}] ~ ~ ~ facing 716 11 46
scoreboard players set @s[x=716.5,y=11,z=46.5,distance=..0.7,scores={PathStep=46}] PathStep 47
teleport @s[scores={PathStep=47}] ~ ~ ~ facing 716 11 -17
scoreboard players set @s[x=716.5,y=11,z=-8.5,distance=..0.7,scores={PathStep=47}] PathStep 48
teleport @s[x=716.0,y=11,z=-9.0,dx=0,dy=1,dz=0] 726 11 -44

execute at @s run teleport @s[scores={PathStep=48}] ~ ~ ~ facing 702 102 -30
scoreboard players set @s[x=702.5,y=102,z=-29.5,distance=..0.7,scores={PathStep=48}] PathStep 49
teleport @s[scores={PathStep=49}] ~ ~ ~ facing 708 102 -30
scoreboard players set @s[x=708.5,y=102,z=-29.5,distance=..0.7,scores={PathStep=49}] PathStep 50
#teleport to butlers room door
execute at @s run teleport @s[scores={PathStep=50}] ~ ~ ~ facing 710 102 -38
scoreboard players set @s[x=708.5,y=102,z=-29.5,distance=..0.7,scores={PathStep=50}] PathStep 51
teleport @s[scores={PathStep=51}] ~ ~ ~ facing 710 102 -38
scoreboard players set @s[x=710.5,y=102,z=-37.5,distance=..0.7,scores={PathStep=51}] PathStep 52
execute at @s run teleport @s[scores={PathStep=52}] ~ ~ ~ facing 713 102 -36
execute if entity @s[scores={PathStep=53..}] run scoreboard players add @s PathStep 1
scoreboard players set @s[x=713.5,y=102,z=-35.5,distance=..0.7,scores={PathStep=52}] PathStep 53
execute at @s[scores={PathStep=..52}] unless entity @s[scores={PathStep=3..43}] run function luigis_mansion:entities/shivers/move_forward
scoreboard players set @s[scores={PathStep=53}] AnimationProg 0
tag @s[scores={PathStep=53}] remove run
tag @s[scores={PathStep=53}] add look_around
tag @s[scores={PathStep=73}] remove look_around
tag @s[scores={PathStep=73}] add sit_down
tag @s[scores={PathStep=93}] remove sit_down
execute at @s[scores={PathStep=73..93}] run scoreboard players set #temp Move 1
execute at @s[scores={PathStep=73..93}] facing 713 102 -35 run function luigis_mansion:entities/shivers/move_forward
tag @s[scores={PathStep=93}] add burn
scoreboard players set @s[scores={PathStep=173}] AnimationProg 0
tag @s[scores={PathStep=173}] remove burn
tag @s[scores={PathStep=173}] add look_around
tag @s[scores={PathStep=233}] remove look_around
scoreboard players set #temp Move 2
execute if entity @s[scores={PathStep=93}] run scoreboard players set @s VulnerableTime 80
tag @s[scores={PathStep=233}] add vanish
tag @s[scores={PathStep=233}] remove burning
execute if entity @s[scores={PathStep=233}] run scoreboard players set @s PathStep 1

teleport @s[tag=disappear,scores={PathStep=..93}] 668 102 13
# change to laundry room-butlers room door
teleport @s[tag=disappear,scores={PathStep=93..}] 702 102 -32
scoreboard players set @s[tag=disappear,scores={PathStep=93..}] PathStep 50
execute if entity @a[tag=blackout,limit=1] run tag @s add remove_from_existence
execute if data storage luigis_mansion:data current_state.current_data.rooms.butlers_room{cleared:1b} run tag @s add remove_from_existence