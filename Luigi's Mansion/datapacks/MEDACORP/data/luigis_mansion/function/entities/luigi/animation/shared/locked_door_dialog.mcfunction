data modify storage luigis_mansion:data dialogs prepend value {name:{namespace:"luigis_mansion",id:"door/locked"},progress:0,room:0,trying_player:0}
execute store result storage luigis_mansion:data dialogs[0].room int 1 run scoreboard players get @s Room
execute store result storage luigis_mansion:data dialogs[0].trying_player int 1 run scoreboard players get @s ID