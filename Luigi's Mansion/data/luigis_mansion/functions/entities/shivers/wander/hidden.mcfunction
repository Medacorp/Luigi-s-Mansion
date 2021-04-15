execute if entity @s[tag=!burning,tag=visible] run function luigis_mansion:entities/shivers/turn_invisible
execute if entity @s[tag=burning,tag=!visible] run function luigis_mansion:entities/shivers/turn_visible

execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 668 102 16
scoreboard players set @s[x=668.5,y=102,z=16.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 668 102 0
scoreboard players set @s[x=668.5,y=102,z=0.5,distance=..0.7,scores={PathStep=2}] PathStep 1
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
teleport @s[scores={PathStep=44}] ~ ~ ~ facing 668 102 21
scoreboard players set @s[x=668.5,y=102,z=21.5,distance=..0.7,scores={PathStep=44}] PathStep 45
teleport @s[scores={PathStep=45}] ~ ~ ~ facing 702 102 21
scoreboard players set @s[x=702.5,y=102,z=21.5,distance=..0.7,scores={PathStep=45}] PathStep 46
teleport @s[scores={PathStep=46}] ~ ~ ~ facing 702 102 33
scoreboard players set @s[x=702.5,y=102,z=33.5,distance=..0.7,scores={PathStep=46}] PathStep 47
teleport @s[scores={PathStep=47}] ~ ~ ~ facing 702 102 -30
scoreboard players set @s[x=702.5,y=102,z=-29.5,distance=..0.7,scores={PathStep=47}] PathStep 48
teleport @s[scores={PathStep=48}] ~ ~ ~ facing 708 102 -30
scoreboard players set @s[x=708.5,y=102,z=-29.5,distance=..0.7,scores={PathStep=48}] PathStep 49
teleport @s[scores={PathStep=49}] ~ ~ ~ facing 710 102 -38
scoreboard players set @s[x=710.5,y=102,z=-37.5,distance=..0.7,scores={PathStep=49}] PathStep 50
teleport @s[scores={PathStep=50}] ~ ~ ~ facing 713 102 -36
execute if entity @s[scores={PathStep=51..}] run scoreboard players add @s PathStep 1
scoreboard players set @s[x=713.5,y=102,z=-35.5,distance=..0.7,scores={PathStep=50}] PathStep 51
execute at @s[scores={PathStep=..50}] unless entity @s[scores={PathStep=3..43}] run function luigis_mansion:entities/shivers/move_forward
scoreboard players set @s[scores={PathStep=51}] AnimationProg 0
tag @s[scores={PathStep=51}] remove run
tag @s[scores={PathStep=51}] add look_around
tag @s[scores={PathStep=71}] remove look_around
tag @s[scores={PathStep=71}] add sit_down
tag @s[scores={PathStep=91}] remove sit_down
execute at @s[scores={PathStep=71..91}] run scoreboard players set #temp Move 1
execute at @s[scores={PathStep=71..91}] facing 713 102 -35 run function luigis_mansion:entities/shivers/move_forward
tag @s[scores={PathStep=91}] add burn
scoreboard players set @s[scores={PathStep=171}] AnimationProg 0
tag @s[scores={PathStep=171}] remove burn
tag @s[scores={PathStep=171}] add look_around
tag @s[scores={PathStep=231}] remove look_around
scoreboard players set #temp Move 2
execute if entity @s[scores={PathStep=91}] run scoreboard players set @s VulnerableTime 80
tag @s[scores={PathStep=231}] add vanish
tag @s[scores={PathStep=231}] remove burning
execute if entity @s[scores={PathStep=231}] run scoreboard players set @s PathStep 1

teleport @s[tag=disappear,scores={PathStep=..92}] 668 102 13
# change to laundry room-butlers room door
teleport @s[tag=disappear,scores={PathStep=92..}] 702 102 -32
scoreboard players set @s[tag=disappear,scores={PathStep=92..}] PathStep 48
execute if entity @a[tag=blackout,limit=1] run tag @s add remove_from_existence
execute if data storage luigis_mansion:data current_state.current_data.rooms.butlers_room{cleared:1b} run tag @s add remove_from_existence