data modify storage luigis_mansion:data entity set value {room:29,tags:["no_dialog_freeze"]}
execute positioned 651 103 47 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/bogmire
scoreboard players set #graveyard Wave 5
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"bogmire"},progress:0,room:29}