data modify storage luigis_mansion:data dialogs set value [{name:{namespace:"3ds_remake",id:"portrait_battle/clear"},progress:0,player:0}]
execute store result storage luigis_mansion:data dialogs[-1].player int 1 run scoreboard players get @e[tag=caught_portrait_ghost,limit=1] ID
data modify storage luigis_mansion:data entity set value {tags:["portrait_ghost"]}
function luigis_mansion:spawn_entities/ghost/empty_marker