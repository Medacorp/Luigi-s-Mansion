function luigis_mansion:entities/luigi/move/teleport {teleport:"695 20 78"}
data modify storage luigis_mansion:data dialogs prepend value {name:{namespace:"luigis_mansion",id:"fall_through_chimney"},progress:0,room:66,player:0}
execute store result storage luigis_mansion:data dialogs[0].player int 1 run scoreboard players get @s ID