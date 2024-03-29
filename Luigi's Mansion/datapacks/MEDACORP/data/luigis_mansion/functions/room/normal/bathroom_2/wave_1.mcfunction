data modify storage luigis_mansion:data entity set value {room:43,mansion:{namespace:"luigis_mansion",id:"normal"},scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.miss_petunia.scan"}'}}
execute positioned 651 21 23 rotated 0 0 run function luigis_mansion:spawn_entities/portrait_ghost/miss_petunia
data modify storage luigis_mansion:data entity set value {room:43}
execute positioned 655.01 21 23 rotated 0 0 run function luigis_mansion:spawn_entities/showering_shadow
scoreboard players set #bathroom_2 Wave 1