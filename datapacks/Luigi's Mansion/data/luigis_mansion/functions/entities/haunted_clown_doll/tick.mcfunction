execute if entity @s[tag=dead] run function luigis_mansion:entities/haunted_clown_doll/drop_loot
execute if entity @s[tag=dead] run function luigis_mansion:entities/haunted_object/collision

scoreboard players add @s[tag=enabled] WaitTime 1
execute if entity @s[scores={WaitTime=60..,Sound=0},tag=!moving] run playsound luigis_mansion:entity.haunted_clown_doll.spawn hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={WaitTime=60..,Sound=0},tag=!moving] Sound 4
execute if entity @s[scores={WaitTime=99}] run function luigis_mansion:entities/haunted_object/select_object_to_move
execute if entity @s[scores={WaitTime=99},tag=moving] run tp @s ~ ~0.45 ~
execute if entity @s[scores={WaitTime=100..},tag=moving] run function luigis_mansion:entities/haunted_object/move
execute at @s[scores={WaitTime=60..},tag=!moving] run function luigis_mansion:animations/haunted_object/shake
execute at @s[scores={WaitTime=100..},tag=moving] run function luigis_mansion:animations/haunted_object/move_sideways