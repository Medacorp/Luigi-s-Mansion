data modify storage luigis_mansion:data entity merge value {id:"kung_boo",name:'{"translate":"luigis_mansion:entity.kung_boo"}',can_attack:0b,health:1,room:0,speed:0,loot:{}}
data modify storage luigis_mansion:data entity.health set from storage luigis_mansion:data current_state.current_data.boos[{name:"kung_boo"}].health
data modify storage luigis_mansion:data entity.room set from storage luigis_mansion:data current_state.current_data.boos[{name:"kung_boo"}].room
data modify storage luigis_mansion:data entity.speed set from storage luigis_mansion:data current_state.current_data.boos[{name:"kung_boo"}].speed
data modify storage luigis_mansion:data entity.loot set from storage luigis_mansion:data current_state.current_data.boos[{name:"kung_boo"}].loot
data modify storage luigis_mansion:data entity.damage set from storage luigis_mansion:data current_state.current_data.boos[{name:"kung_boo"}].damage
function luigis_mansion:spawn_entities/ghost/boo