$data modify entity @s data.boo_target set from entity @s data.warp_options[$(value)]
execute if data entity @s data.boo_target.x.min run function luigis_mansion:entities/boo/direction/pick_position/x with entity @s data.boo_target.x
execute if data entity @s data.boo_target.y.min run function luigis_mansion:entities/boo/direction/pick_position/y with entity @s data.boo_target.y
execute if data entity @s data.boo_target.z.min run function luigis_mansion:entities/boo/direction/pick_position/z with entity @s data.boo_target.z