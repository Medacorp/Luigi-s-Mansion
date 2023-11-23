data modify storage luigis_mansion:data entity merge value {id:"boo_b_hatch",name:'{"translate":"luigis_mansion:entity.boo_b_hatch"}',can_attack:1b,health:1,room:0,speed:0,loot:{}}
data modify storage luigis_mansion:data entity.health set from storage luigis_mansion:data current_state.current_data.boos[{name:"boo_b_hatch"}].health
data modify storage luigis_mansion:data entity.room set from storage luigis_mansion:data current_state.current_data.boos[{name:"boo_b_hatch"}].room
data modify storage luigis_mansion:data entity.speed set from storage luigis_mansion:data current_state.current_data.boos[{name:"boo_b_hatch"}].speed
data modify storage luigis_mansion:data entity.loot set from storage luigis_mansion:data current_state.current_data.boos[{name:"boo_b_hatch"}].loot
data modify storage luigis_mansion:data entity.damage set from storage luigis_mansion:data current_state.current_data.boos[{name:"boo_b_hatch"}].damage
function luigis_mansion:spawn_entities/ghost/boo