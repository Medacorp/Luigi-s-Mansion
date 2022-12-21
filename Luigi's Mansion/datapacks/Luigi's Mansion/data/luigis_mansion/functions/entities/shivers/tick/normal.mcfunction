execute if entity @s[scores={PathStep=1..2},tag=visible,tag=!vanish] run function luigis_mansion:entities/shivers/turn_invisible
execute if entity @s[scores={PathStep=3..},tag=!visible,tag=!vanish] run function luigis_mansion:entities/shivers/turn_visible
execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s PathStep 1
teleport @s[scores={PathStep=1}] ~ ~ ~ facing 682 11.6 -14
scoreboard players set @s[x=682.5,y=11.6,z=-13.5,distance=..0.7,scores={PathStep=1}] PathStep 2
teleport @s[scores={PathStep=2}] ~ ~ ~ facing 682 11.6 2
scoreboard players set @s[x=682.5,y=11.6,z=2.5,distance=..0.7,scores={PathStep=2}] PathStep 1
scoreboard players add @s[scores={PathStep=3..43}] PathStep 1
data modify entity @s[tag=burning,scores={PathStep=1..2}] ArmorItems[3].tag.scan_message set value {sender:"me",message:'{"translate":"luigis_mansion:message.shivers.scan.2"}'}
scoreboard players set @s[tag=burning,scores={PathStep=1..2}] PathStep 3
scoreboard players set @s[scores={PathStep=3}] AnimationProg 0
tag @s[scores={PathStep=3}] add look_around
execute if entity @s[scores={PathStep=3}] unless data storage luigis_mansion:data current_state.current_data.technical_data{shivers_spoke:1b} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.shivers","color":"green"},{"translate":"luigis_mansion:message.shivers.fire"}]}
execute if entity @s[scores={PathStep=3}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {shivers_spoke:1b}
execute if entity @s[scores={PathStep=3}] run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 10000 
execute if entity @s[scores={PathStep=3}] as @a[tag=same_room,scores={Music=..30}] unless entity @s[scores={HealthMusic=1..}] run scoreboard players set @s Music 30
tag @s[scores={PathStep=23}] remove look_around
tag @s[scores={PathStep=23}] add panic
execute if entity @s[scores={PathStep=23}] run playsound luigis_mansion:entity.shivers.realize hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={PathStep=23}] Sound 50
tag @s[scores={PathStep=43}] remove panic
tag @s[scores={PathStep=43}] add run
teleport @s[scores={PathStep=44}] ~ ~ ~ facing 682 11.6 -19
scoreboard players set @s[x=682.5,y=11.6,z=-18.5,distance=..0.7,scores={PathStep=44}] PathStep 45
teleport @s[scores={PathStep=45}] ~ ~ ~ facing 716 11.6 -19
scoreboard players set @s[x=716.5,y=11.6,z=-18.5,distance=..0.7,scores={PathStep=45}] PathStep 46
teleport @s[scores={PathStep=46}] ~ ~ ~ facing 716 11.6 -31
scoreboard players set @s[x=716.5,y=11.6,z=-30.5,distance=..0.7,scores={PathStep=46}] PathStep 47
teleport @s[scores={PathStep=47}] ~ ~ ~ facing 716 11.6 24
scoreboard players set @s[x=716.5,y=11.6,z=24.5,distance=..0.7,scores={PathStep=47}] PathStep 48
teleport @s[x=716.5,y=11.6,z=24.5,distance=..0.7] 716 11.6 58
execute at @s run teleport @s[scores={PathStep=48}] ~ ~ ~ facing 716 11.6 65
scoreboard players set @s[x=716.5,y=11.6,z=65.5,distance=..0.7,scores={PathStep=48}] PathStep 49
teleport @s[scores={PathStep=49}] ~ ~ ~ facing 719 11.6 65
scoreboard players set @s[x=719.5,y=11.6,z=65.5,distance=..0.7,scores={PathStep=49}] PathStep 50
teleport @s[x=719.5,y=11.6,z=65.5,distance=..0.7] 738 11.6 61
execute at @s run teleport @s[scores={PathStep=50}] ~ ~ ~ facing 740 11.6 61
scoreboard players set @s[x=740.5,y=11.6,z=61.5,distance=..0.7,scores={PathStep=50}] PathStep 51
teleport @s[scores={PathStep=51}] ~ ~ ~ facing 742 11.6 69
scoreboard players set @s[x=742.5,y=11.6,z=69.5,distance=..0.7,scores={PathStep=51}] PathStep 52
teleport @s[scores={PathStep=52}] ~ ~ ~ facing 745 11.6 67
execute if entity @s[scores={PathStep=53..},tag=!vanish] run scoreboard players add @s PathStep 1
scoreboard players set @s[x=745.5,y=11.6,z=67.5,distance=..0.7,scores={PathStep=52}] PathStep 53
execute at @s[scores={PathStep=..52},tag=!vanish] unless entity @s[scores={PathStep=3..43}] run function luigis_mansion:entities/shivers/move_forward
scoreboard players set @s[scores={PathStep=53}] AnimationProg 0
tag @s[scores={PathStep=53}] remove run
tag @s[scores={PathStep=53}] add look_around
tag @s[scores={PathStep=73}] remove look_around
execute if entity @s[scores={PathStep=73}] run playsound luigis_mansion:entity.shivers.calm_down hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={PathStep=73}] add sit_down
tag @s[scores={PathStep=93}] remove sit_down
execute if entity @s[scores={PathStep=73..93}] run scoreboard players set #temp Move 5
execute at @s[scores={PathStep=73..93},tag=!vanish] facing 745 11.6 66 run function luigis_mansion:entities/shivers/move_forward
tag @s[scores={PathStep=93}] add burn
scoreboard players set @s[scores={PathStep=173}] AnimationProg 0
tag @s[scores={PathStep=173}] remove burn
tag @s[scores={PathStep=173}] add look_around
tag @s[scores={PathStep=233}] remove look_around
scoreboard players set #temp Move 10
scoreboard players set @s[scores={PathStep=93},tag=!vanish] VulnerableTime 80
tag @s[scores={PathStep=233}] add vanish
data modify entity @s[scores={PathStep=233}] ArmorItems[3].tag.scan_message set value {sender:"me",message:'{"translate":"luigis_mansion:message.shivers.scan.1"}'}
tag @s[scores={PathStep=233}] remove burning
scoreboard players set @s[scores={PathStep=233}] PathStep 1

execute if entity @s[scores={PathStep=43..52,Sound=0},tag=run,tag=!vanish] run playsound luigis_mansion:entity.shivers.panic hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={PathStep=43..52,Sound=0},tag=run,tag=!vanish] Sound 40
execute if entity @s[scores={PathStep=93..172,Sound=0},tag=burn,tag=!vanish] run playsound luigis_mansion:entity.shivers.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={PathStep=93..172,Sound=0},tag=burn,tag=!vanish] Sound 10

execute at @s[tag=look_around] run function luigis_mansion:animations/shivers/look_around
execute at @s[tag=panic] run function luigis_mansion:animations/shivers/panic
execute at @s[tag=run] run function luigis_mansion:animations/shivers/run
execute at @s[tag=sit_down] run function luigis_mansion:animations/shivers/sit_down
execute at @s[tag=burn,tag=!vanish] run function luigis_mansion:animations/shivers/burn
execute at @s[tag=!burn,tag=!vanish,tag=!look_around,tag=!panic,tag=!run,tag=!sit_down] run function luigis_mansion:animations/shivers/idle
execute at @s[tag=visible,tag=!vanish] as @e[tag=this_model,tag=right_arm] at @s run function luigis_mansion:entities/shivers/candle_flame

execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run tag @s add remove_from_existence
execute if data storage luigis_mansion:data current_state.current_data.rooms.butlers_room{cleared:1b} run tag @s add remove_from_existence