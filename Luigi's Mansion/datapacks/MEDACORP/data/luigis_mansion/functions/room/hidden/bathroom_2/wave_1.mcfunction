data modify storage luigis_mansion:data entity set value {mansion:{namespace:"luigis_mansion",id:"hidden"},scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.miss_petunia.scan"}'}}
execute positioned 651 21 -8 rotated -180 0 run function luigis_mansion:spawn_entities/portrait_ghost/miss_petunia
execute positioned 655.0 21 -8 rotated -180 0 run function luigis_mansion:spawn_entities/showering_shadow
scoreboard players set #bathroom_2 Wave 1