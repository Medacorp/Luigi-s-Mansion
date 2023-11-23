execute if data storage luigis_mansion:data entity{appear_type:"normal"} run tag @e[tag=this_entity,limit=1] remove beta_appear
execute if data storage luigis_mansion:data entity{appear_type:"normal"} run tag @e[tag=this_entity,limit=1] remove no_appear
execute if data storage luigis_mansion:data entity{appear_type:"beta"} run tag @e[tag=this_entity,limit=1] add beta_appear
execute if data storage luigis_mansion:data entity{appear_type:"beta"} run tag @e[tag=this_entity,limit=1] remove no_appear
execute if data storage luigis_mansion:data entity{appear_type:"none"} run tag @e[tag=this_entity,limit=1] add no_appear
execute if data storage luigis_mansion:data entity{appear_type:"none"} run tag @e[tag=this_entity,limit=1] remove beta_appear