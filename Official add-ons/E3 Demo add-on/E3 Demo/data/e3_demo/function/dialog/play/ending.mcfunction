#ending cannot be set to this due to the room being different from the ghost portrificationizer room
execute as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
scoreboard players set @a[tag=same_room] Room 0
tag @e[tag=e_gadd,tag=same_room,limit=1] remove cannot_be_removed
tag @e[tag=luigi,tag=same_room] add dead
data modify storage luigis_mansion:data dialogs[0] set value {name:{namespace:"luigis_mansion",id:"credits"},progress:0,room:0}