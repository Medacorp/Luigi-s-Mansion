execute if entity @s[tag=in_vacuum,tag=shaken_by_vacuum] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"rocking_horse"}
execute if entity @s[tag=in_dust,tag=shaken_by_dust] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"rocking_horse"}
execute if entity @s[tag=in_fire,tag=shaken_by_fire] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"rocking_horse"}
execute if entity @s[tag=in_water,tag=shaken_by_water] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"rocking_horse"}
execute if entity @s[tag=in_ice,tag=shaken_by_ice] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"rocking_horse"}
function luigis_mansion:entities/furniture/type/generic