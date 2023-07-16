data modify storage luigis_mansion:data entity{id:"gumboo",name:'{"translate":"luigis_mansion:entity.gumboo"}',can_attack:1b,health:1,room:0,speed:0,loot:{}}
data modify storage luigis_mansion:data entity.health set from storage luigis_mansion:data current_state.current_data.boos[{name:"gumboo"}].health
data modify storage luigis_mansion:data entity.room set from storage luigis_mansion:data current_state.current_data.boos[{name:"gumboo"}].room
data modify storage luigis_mansion:data entity.speed set from storage luigis_mansion:data current_state.current_data.boos[{name:"gumboo"}].speed
data modify storage luigis_mansion:data entity.loot set from storage luigis_mansion:data current_state.current_data.boos[{name:"gumboo"}].loot
data modify storage luigis_mansion:data entity.damage set from storage luigis_mansion:data current_state.current_data.boos[{name:"gumboo"}].damage
function luigis_mansion:spawn_entities/ghost/boo