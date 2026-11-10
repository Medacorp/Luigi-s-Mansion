data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"boss_clear"},progress:0,room:73,player:0}
execute store result storage luigis_mansion:data dialogs[-1].player int 1 run scoreboard players get @e[tag=caught_portrait_ghost,limit=1] ID
scoreboard players reset #chauncey_battle Wave