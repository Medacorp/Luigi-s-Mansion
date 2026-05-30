summon minecraft:armor_stand ~ ~-1.43875 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.scan_area"},Tags:["furniture","requires_hitbox","no_reflection","this_entity"],Marker:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"empty"},NoGravity:1b,Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.43875 ~ ~ 0
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture