execute store result score #temp GhostNr run data get storage luigis_mansion:data dialogs[0].bowser
execute as @e[tag=ghost,tag=same_room] if score @s GhostNr = #temp GhostNr run tag @s add this_bowser
scoreboard players reset #temp GhostNr

scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1..59 as @a[tag=same_room] at @e[tag=this_bowser,limit=1] run function luigis_mansion:entities/player/camera/teleport {teleport:"~3 ~6 ~ 90 60"}
execute if score #dialog Dialog matches 60 as @a[tag=same_room] run function luigis_mansion:entities/player/camera/reset
execute if score #dialog Dialog matches 60 run scoreboard players set #dialog Dialog -1

tag @e[tag=this_bowser,limit=1] remove this_bowser