data modify storage luigis_mansion:data entity merge value {id:"underboo",name:'{"translate":"luigis_mansion:entity.underboo"}',can_attack:1b,health:1,room:0,speed:0,loot:{}}
data modify storage luigis_mansion:data entity.health set from storage luigis_mansion:data current_state.current_data.boos[{name:"underboo"}].health
data modify storage luigis_mansion:data entity.room set from storage luigis_mansion:data current_state.current_data.boos[{name:"underboo"}].room
data modify storage luigis_mansion:data entity.speed set from storage luigis_mansion:data current_state.current_data.boos[{name:"underboo"}].speed
data modify storage luigis_mansion:data entity.loot set from storage luigis_mansion:data current_state.current_data.boos[{name:"underboo"}].loot
data modify storage luigis_mansion:data entity.damage set from storage luigis_mansion:data current_state.current_data.boos[{name:"underboo"}].damage
function luigis_mansion:spawn_entities/ghost/boo