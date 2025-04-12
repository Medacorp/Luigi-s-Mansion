execute store result score #temp GhostNr run data get storage luigis_mansion:data dialogs[0].bowser
execute as @e[tag=ghost,tag=same_room] if score @s GhostNr = #temp GhostNr run tag @s add this_bowser
scoreboard players reset #temp GhostNr

tag @e[tag=same_room,tag=no_ai_dialog] remove no_ai
tag @e[tag=same_room,tag=no_ai_dialog] remove no_ai_dialog
tag @e[tag=same_room,tag=freeze_animation_dialog] remove freeze_animation
tag @e[tag=same_room,tag=freeze_animation_dialog] remove freeze_animation_dialog
tag @e[tag=same_room,tag=applied_dialog_effects] remove applied_dialog_effects
tag @e[tag=same_room,tag=!player,tag=!this_bowser] remove same_room

execute unless entity @e[tag=this_bowser,tag=same_room,limit=1] run scoreboard players set #dialog Dialog 60

scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1..59 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/execute {execute:"at @e[tag=this_bowser,limit=1]",teleport:"~3 ~7.75 ~ 90 60"}
execute if score #dialog Dialog matches 60 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 60 run scoreboard players set #dialog Dialog -1

tag @e[tag=this_bowser,limit=1] remove this_bowser