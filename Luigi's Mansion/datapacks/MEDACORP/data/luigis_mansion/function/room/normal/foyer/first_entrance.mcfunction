data modify storage luigis_mansion:data dialogs prepend value {name:{namespace:"luigis_mansion",id:"normal/first_entrance"},room:1,progress:0,player:0}
execute store result storage luigis_mansion:data dialogs[0].player int 1 run scoreboard players get @s ID
tag @s remove first_entrance