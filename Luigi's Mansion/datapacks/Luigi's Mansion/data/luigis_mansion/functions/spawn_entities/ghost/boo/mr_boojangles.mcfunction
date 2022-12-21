data modify storage luigis_mansion:data entity{id:"mr_boojangles",name:'{"translate":"luigis_mansion:entity.mr_boojangles"}',can_attack:0b,health:1,room:0,speed:0,loot:{}}
data modify storage luigis_mansion:data entity.health set from storage luigis_mansion:data current_state.current_data.boos[{name:"mr_boojangles"}].health
data modify storage luigis_mansion:data entity.room set from storage luigis_mansion:data current_state.current_data.boos[{name:"mr_boojangles"}].room
data modify storage luigis_mansion:data entity.speed set from storage luigis_mansion:data current_state.current_data.boos[{name:"mr_boojangles"}].speed
data modify storage luigis_mansion:data entity.loot set from storage luigis_mansion:data current_state.current_data.boos[{name:"mr_boojangles"}].loot
function luigis_mansion:spawn_entities/ghost/boo