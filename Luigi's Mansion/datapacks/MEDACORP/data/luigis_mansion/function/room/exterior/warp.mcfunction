scoreboard players set @s Room 0
$execute unless dimension $(namespace):exterior/$(id) if data storage luigis_mansion:data current_state run function luigis_mansion:entities/luigi/move/execute {execute:"in $(namespace):exterior/$(id)",teleport:"795.0 75 2.0 90 0"}
$execute unless dimension $(namespace):exterior/$(id) if data storage luigis_mansion:data current_state run function luigis_mansion:entities/player/camera/execute {execute:"in $(namespace):exterior/$(id)",teleport:"795.0 75 2.0 90 0"}
$execute unless dimension $(namespace):exterior/$(id) unless data storage luigis_mansion:data current_state in $(namespace):exterior/$(id) run teleport @s 795.0 75 2.0 90 0
$execute unless dimension $(namespace):exterior/$(id) run function luigis_mansion:entities/player/camera/reset
$execute unless dimension $(namespace):exterior/$(id) run function luigis_mansion:other/music/set/silence