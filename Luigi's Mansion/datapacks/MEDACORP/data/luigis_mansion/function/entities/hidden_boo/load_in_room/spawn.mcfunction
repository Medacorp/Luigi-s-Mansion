data modify storage luigis_mansion:data entity set value {}
data modify storage luigis_mansion:data entity.boo set from storage luigis_mansion:data boos[-1].name
execute store result storage luigis_mansion:data entity.room int 1 run scoreboard players get #temp Room
$execute unless entity @e[tag=!trap,nbt={data:{entity:{namespace:"luigis_mansion",id:"hidden_boo"},boo:{namespace:"$(namespace)",id:"$(id)"}}}] unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"boo"},boo:{namespace:"$(namespace)",id:"$(id)"}}}] run function $(namespace):entities/boo/get_name/$(id)
execute if data storage luigis_mansion:data entity.name run function luigis_mansion:spawn_entities/ghost/hidden_boo