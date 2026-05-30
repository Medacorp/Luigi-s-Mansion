data modify storage luigis_mansion:data entity set value {boo:{namespace:"luigis_mansion",id:"null"},name:{type:"translatable",translate:"luigis_mansion:entity.boo"}}
data modify storage luigis_mansion:data entity.name set from entity @s CustomName
data modify storage luigis_mansion:data entity.boo set from entity @s data.boo
function luigis_mansion:spawn_entities/ghost/hidden_boo
tag @s add remove_from_existence
tag @s remove cannot_be_removed
tag @s add warped