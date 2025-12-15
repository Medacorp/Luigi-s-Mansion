data modify storage luigis_mansion:data entity set value {room:43,room_search:{non_players:1b},scan_result:{namespace:"luigis_mansion",id:"scan/entity/miss_petunia"},affected_by:["ice"]}
execute positioned 651 21 23 rotated 0 0 run function luigis_mansion:spawn_entities/portrait_ghost/miss_petunia
data modify storage luigis_mansion:data entity set value {room:43}
execute positioned 654.7 21 23 rotated 0 0 run function luigis_mansion:spawn_entities/showering_shadow
scoreboard players set #bathroom_2 Wave 1