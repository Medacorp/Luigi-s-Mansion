data modify storage luigis_mansion:data entity merge value {id:"boo_la_la",name:'{"translate":"luigis_mansion:entity.boo_la_la"}',can_attack:1b,health:1,room:0,speed:0,loot:{}}
data modify storage luigis_mansion:data entity.health set from storage luigis_mansion:data current_state.current_data.boos[{name:"boo_la_la"}].health
data modify storage luigis_mansion:data entity.room set from storage luigis_mansion:data current_state.current_data.boos[{name:"boo_la_la"}].room
data modify storage luigis_mansion:data entity.speed set from storage luigis_mansion:data current_state.current_data.boos[{name:"boo_la_la"}].speed
data modify storage luigis_mansion:data entity.loot set from storage luigis_mansion:data current_state.current_data.boos[{name:"boo_la_la"}].loot
data modify storage luigis_mansion:data entity.damage set from storage luigis_mansion:data current_state.current_data.boos[{name:"boo_la_la"}].damage
function luigis_mansion:spawn_entities/ghost/boo