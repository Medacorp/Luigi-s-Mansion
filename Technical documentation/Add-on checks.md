All add-ons must run the following 2 commands in a function added in `#luigis_mansion:loaded_add_ons`.
`scoreboard players operation #<add-on> Loaded > * Loaded`
`scoreboard players add #<add-on> Loaded 1`

The value of the add-on's Loaded score will be equal to the pack load order.

If they need to rely on the load order of data packs, then they can use the following commands in a function added to `#luigis_mansion:post_loaded_add_ons`:
`execute unless score #<add-on> Loaded <condition> run datapack disable "file/<pack name>"`
`execute unless score #<add-on> Loaded <condition> run datapack enable "file/<pack name>" <place>`

This is, however, something should only be used to ensure it loads after another pack, not setting the load position. If 2 packs require to have the same loading position, the map will get stuck in a data loading loop.

To check for add-on compatibility issues, check if the other add-on is loaded (`execute if score #<other add-on> Loaded matches 1.. run ...`) and send the mandatory commands.

The pack can also do the same, but for dependencies, eg if the pack need the 3ds_remake add-on to exist to have a functioning add-on. (`execute unless score #<required add-on> Loaded matches 1.. run ...`)