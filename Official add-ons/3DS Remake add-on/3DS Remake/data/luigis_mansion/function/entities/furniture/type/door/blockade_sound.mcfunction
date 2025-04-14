tag @s remove trigger_blockade_cutscene
execute if entity @s[tag=blockade,tag=!had_blockade,tag=!applied_dialog_effects] unless entity @e[tag=trigger_blockade_cutscene,tag=door] run data modify storage luigis_mansion:data dialogs prepend value {name:{namespace:"3ds_remake",id:"blockade_spawns"},progress:0,room:0}
execute if entity @s[tag=blockade,tag=!had_blockade,tag=!applied_dialog_effects] unless entity @e[tag=trigger_blockade_cutscene,tag=door] store result storage luigis_mansion:data dialogs[0].room int 1 run scoreboard players get @s Room
execute if entity @s[tag=blockade,tag=!had_blockade,tag=!applied_dialog_effects] run tag @s add trigger_blockade_cutscene
tag @s[tag=blockade,tag=!had_blockade,tag=!applied_dialog_effects] remove blockade
execute if entity @s[tag=blockade,tag=!had_blockade,tag=applied_dialog_effects] run playsound luigis_mansion:furniture.blockade.spawn block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!blockade,tag=!area_blockade,tag=had_blockade] run playsound luigis_mansion:furniture.blockade.disappear block @a[tag=same_room] ~ ~ ~ 1