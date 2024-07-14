# fg_coke
I'm new to coding, made a simple coke script for qbcore. here it is - hopefully it helps someone.

# Dependencies
- [ox_target](https://github.com/overextended/ox_target/releases/tag/v1.16.0)
- [ox_inventory](https://github.com/overextended/ox_inventory/releases/tag/v2.40.2)
- [ox_lib](https://github.com/overextended/ox_lib/releases/tag/v3.23.1)

I highly recommend installing the latest releases.

# Images
ox_inventory > web > images
![image](https://cdn.discordapp.com/attachments/1261505938477678634/1261917138285756476/coke_leaf.png?ex=6694b36b&is=669361eb&hm=5f51585966c7ec4c083c02a30b2911c4c692e4ceebad329d59b159b3c4b986cb&)

# Item 
ox_inventory > data > items.lua
```lua
	["coke_leaf"] = {
		label = "Coca leaves",
		weight = 15,
		stack = true,
		close = false,
		description = "Leaf from amazing plant",
		client = {
			image = "coca_leaf.png",
		}
	},
```
You should have that already in since you are using ox_inventory, but there it is if you dont.
