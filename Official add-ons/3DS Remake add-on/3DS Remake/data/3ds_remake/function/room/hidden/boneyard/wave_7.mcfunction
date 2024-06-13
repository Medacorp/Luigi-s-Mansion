data modify storage luigis_mansion:data entity set value {room:28,tags:["spooky_bone"]}
execute at @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"mr_bones"}}},scores={Room=28},tag=dying] run function luigis_mansion:spawn_entities/bone
scoreboard players set #boneyard Wave 7