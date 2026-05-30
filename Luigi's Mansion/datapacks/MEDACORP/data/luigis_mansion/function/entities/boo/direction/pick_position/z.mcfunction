$data modify entity @s data.boo_target.z set value $(min)
$execute store result entity @s data.boo_target.z int 1 run random value $(min)..$(max)