data modify storage luigis_mansion:data entity merge value {boo:{namespace:"luigis_mansion",id:"null"},name:'{"type":"translatable","translate":"luigis_mansion:entity.boo"}',say_message:0b,can_attack:0b,damage:{},health:1,loot:{},speed:0}
data modify storage luigis_mansion:data entity.boo set from entity @s data.boo
data modify storage luigis_mansion:data entity.name set from entity @s CustomName
data modify storage luigis_mansion:data entity.mansion set from entity @s data.mansion
execute if entity @s[scores={SpawnTime=1..}] run data modify storage luigis_mansion:data entity.say_message set value 1b
$data modify storage luigis_mansion:data entity.can_attack set from storage luigis_mansion:data current_state.current_data.boos[{name:{namespace:"$(namespace)",id:"$(id)"}}].can_attack
$data modify storage luigis_mansion:data entity.damage set from storage luigis_mansion:data current_state.current_data.boos[{name:{namespace:"$(namespace)",id:"$(id)"}}].damage
$data modify storage luigis_mansion:data entity.health set from storage luigis_mansion:data current_state.current_data.boos[{name:{namespace:"$(namespace)",id:"$(id)"}}].health
$data modify storage luigis_mansion:data entity.loot set from storage luigis_mansion:data current_state.current_data.boos[{name:{namespace:"$(namespace)",id:"$(id)"}}].loot
$data modify storage luigis_mansion:data entity.speed set from storage luigis_mansion:data current_state.current_data.boos[{name:{namespace:"$(namespace)",id:"$(id)"}}].speed
function luigis_mansion:spawn_entities/ghost/boo
function 3ds_remake:entities/boo/stop_tracking