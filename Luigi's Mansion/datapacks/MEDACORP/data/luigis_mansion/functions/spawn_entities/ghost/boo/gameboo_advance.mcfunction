data modify storage luigis_mansion:data entity{id:"gameboo_advance",name:'{"translate":"luigis_mansion:entity.gameboo_advance"}',can_attack:1b,health:1,room:0,speed:0,loot:{}}
data modify storage luigis_mansion:data entity.health set from storage luigis_mansion:data current_state.current_data.boos[{name:"gameboo_advance"}].health
data modify storage luigis_mansion:data entity.room set from storage luigis_mansion:data current_state.current_data.boos[{name:"gameboo_advance"}].room
data modify storage luigis_mansion:data entity.speed set from storage luigis_mansion:data current_state.current_data.boos[{name:"gameboo_advance"}].speed
data modify storage luigis_mansion:data entity.loot set from storage luigis_mansion:data current_state.current_data.boos[{name:"gameboo_advance"}].loot
data modify storage luigis_mansion:data entity.damage set from storage luigis_mansion:data current_state.current_data.boos[{name:"gameboo_advance"}].damage
function luigis_mansion:spawn_entities/ghost/boo