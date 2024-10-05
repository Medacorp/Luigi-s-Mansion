data modify storage luigis_mansion:data entity set value {room:62,scan_result:{namespace:"luigis_mansion",id:"scan/entity/green_clockwork_soldier"},drop_pearls:0b}
execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.clockwork_soldiers.green{health:0} positioned 687 120 17 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/clockwork_soldiers/green
data modify storage luigis_mansion:data entity set value {room:62,scan_result:{namespace:"luigis_mansion",id:"scan/entity/blue_clockwork_soldier"}}
execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.clockwork_soldiers.blue{health:0} positioned 688 120 8.0 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/clockwork_soldiers/blue
data modify storage luigis_mansion:data entity set value {room:62,scan_result:{namespace:"luigis_mansion",id:"scan/entity/pink_clockwork_soldier"},drop_pearls:0b}
execute unless data storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.clockwork_soldiers.pink{health:0} positioned 687 120 -2 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/clockwork_soldiers/pink
data remove storage luigis_mansion:data entity
scoreboard players set #clockwork_room Wave 1