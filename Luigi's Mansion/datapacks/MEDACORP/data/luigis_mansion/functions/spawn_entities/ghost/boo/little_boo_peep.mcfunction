data modify storage luigis_mansion:data entity merge value {id:"little_boo_peep",name:'{"type":"translatable","translate":"luigis_mansion:entity.little_boo_peep"}',can_attack:0b,health:1,room:0,speed:0,loot:{}}
data modify storage luigis_mansion:data entity.health set from storage luigis_mansion:data current_state.current_data.boos[{name:"little_boo_peep"}].health
data modify storage luigis_mansion:data entity.room set from storage luigis_mansion:data current_state.current_data.boos[{name:"little_boo_peep"}].room
data modify storage luigis_mansion:data entity.speed set from storage luigis_mansion:data current_state.current_data.boos[{name:"little_boo_peep"}].speed
data modify storage luigis_mansion:data entity.loot set from storage luigis_mansion:data current_state.current_data.boos[{name:"little_boo_peep"}].loot
data modify storage luigis_mansion:data entity.damage set from storage luigis_mansion:data current_state.current_data.boos[{name:"little_boo_peep"}].damage
function luigis_mansion:spawn_entities/ghost/boo