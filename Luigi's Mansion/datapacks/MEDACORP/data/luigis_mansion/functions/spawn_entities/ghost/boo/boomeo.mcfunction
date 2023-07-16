data modify storage luigis_mansion:data entity{id:"boomeo",name:'{"translate":"luigis_mansion:entity.boomeo"}',can_attack:0b,health:1,room:0,speed:0,loot:{}}
data modify storage luigis_mansion:data entity.health set from storage luigis_mansion:data current_state.current_data.boos[{name:"boomeo"}].health
data modify storage luigis_mansion:data entity.room set from storage luigis_mansion:data current_state.current_data.boos[{name:"boomeo"}].room
data modify storage luigis_mansion:data entity.speed set from storage luigis_mansion:data current_state.current_data.boos[{name:"boomeo"}].speed
data modify storage luigis_mansion:data entity.loot set from storage luigis_mansion:data current_state.current_data.boos[{name:"boomeo"}].loot
data modify storage luigis_mansion:data entity.damage set from storage luigis_mansion:data current_state.current_data.boos[{name:"boomeo"}].damage
function luigis_mansion:spawn_entities/ghost/boo