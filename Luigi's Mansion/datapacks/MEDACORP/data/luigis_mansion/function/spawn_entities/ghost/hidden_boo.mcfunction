summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boo"}',Tags:["hidden_boo","same_room_players_only","same_room_select_furniture","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"hidden_boo"},boo:{namespace:"luigis_mansion",id:"null"}}}
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
scoreboard players set @e[tag=this_entity,limit=1] SpawnTime 0
data modify entity @e[tag=this_entity,limit=1] data.boo.namespace set from storage luigis_mansion:data entity.boo.namespace
data modify entity @e[tag=this_entity,limit=1] data.boo.id set from storage luigis_mansion:data entity.boo.id
data modify entity @e[tag=this_entity,limit=1] CustomName set from storage luigis_mansion:data entity.name
function luigis_mansion:spawn_entities/setup/mansion_behavior
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity