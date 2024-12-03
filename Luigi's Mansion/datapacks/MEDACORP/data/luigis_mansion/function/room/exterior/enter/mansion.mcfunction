tag @s add reset_rotation
execute in luigis_mansion:exterior/mansion run teleport @s 781 89.9375 8.0 90 0
execute if entity @s[tag=!spectator] run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"exterior/leaving_the_lab"},room:0,progress:0,player:0}
execute if entity @s[tag=!spectator] store result storage luigis_mansion:data dialogs[-1].player int 1 run scoreboard players get @s ID