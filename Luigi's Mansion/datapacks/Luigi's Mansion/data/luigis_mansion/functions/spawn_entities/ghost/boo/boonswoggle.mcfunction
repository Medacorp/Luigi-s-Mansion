data modify storage luigis_mansion:data entity{id:"boonswoggle",name:'{"translate":"luigis_mansion:entity.boonswoggle"}',can_attack:0b,health:1,room:0,speed:0,loot:{}}
data modify storage luigis_mansion:data entity.health set from storage luigis_mansion:data current_state.current_data.boos[{name:"boonswoggle"}].health
data modify storage luigis_mansion:data entity.room set from storage luigis_mansion:data current_state.current_data.boos[{name:"boonswoggle"}].room
data modify storage luigis_mansion:data entity.speed set from storage luigis_mansion:data current_state.current_data.boos[{name:"boonswoggle"}].speed
data modify storage luigis_mansion:data entity.loot set from storage luigis_mansion:data current_state.current_data.boos[{name:"boonswoggle"}].loot
function luigis_mansion:spawn_entities/ghost/boo