execute if entity @s[tag=dead,tag=normal_death] run playsound luigis_mansion:entity.haunted_music_sheet.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead,tag=element_death] run playsound luigis_mansion:entity.haunted_music_sheet.element_death hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run loot spawn ~ ~ ~ loot luigis_mansion:entities/vacuumable/haunted_object/haunted_music_sheet
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.2 0.2 1 10
execute if entity @s[tag=dead] store result entity @s Pos[0] double 0.01 run scoreboard players get @s HomeX
execute if entity @s[tag=dead] store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute if entity @s[tag=dead] store result entity @s Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute if entity @s[tag=dead] store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRotX
execute if entity @s[tag=dead] store result entity @s Rotation[1] float 1 run scoreboard players get @s HomeRotY
execute if entity @s[tag=dead] store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @s HomeRotY
execute if entity @s[tag=dead] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players get @s HomeRotY
execute if entity @s[tag=dead] run scoreboard players set @s WaitTime -60
execute if entity @e[tag=melody_pianissima,limit=1] run data modify entity @s[tag=dead] ArmorItems[3].tag.attacked_by set value []
execute if entity @e[tag=melody_pianissima,limit=1] run tag @s[tag=dead] remove normal_death
execute if entity @e[tag=melody_pianissima,limit=1] run tag @s[tag=dead] remove dead

scoreboard players set #temp Move 5
scoreboard players add @s[scores={WaitTime=..-1}] WaitTime 1
execute unless entity @e[tag=melody_pianissima,scores={VulnerableTime=1..},tag=!vanish,limit=1] run scoreboard players add @s[scores={WaitTime=0..}] WaitTime 1
teleport @s[scores={WaitTime=1}] ~ ~1 ~
execute at @s[scores={WaitTime=1..59}] run function luigis_mansion:entities/haunted_music_sheet/hover
execute at @s[scores={WaitTime=60..}] run function luigis_mansion:entities/haunted_music_sheet/attack
execute at @s[scores={WaitTime=1..}] run function luigis_mansion:animations/haunted_object/flap