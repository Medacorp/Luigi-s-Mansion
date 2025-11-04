$function $(namespace):entities/boo/countdown_warp/mansion/$(id)
execute if entity @s[tag=transform_to_hidden_boo] run data modify storage luigis_mansion:data entity set value {boo:{namespace:"luigis_mansion",id:"null"},name:{type:"translatable",translate:"luigis_mansion:entity.boo"},tags:["cannot_be_removed","countdown"]}
execute if entity @s[tag=transform_to_hidden_boo] run data modify storage luigis_mansion:data entity.name set from entity @s CustomName
execute if entity @s[tag=transform_to_hidden_boo] run data modify storage luigis_mansion:data entity.boo set from entity @s data.boo
execute at @s[tag=transform_to_hidden_boo] run function luigis_mansion:spawn_entities/ghost/hidden_boo
tag @s[tag=can_hide] add remove_from_existence