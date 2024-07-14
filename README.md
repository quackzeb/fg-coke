# fg_coke
I'm new to coding, made a simple coke script for qbcore. here it is - hopefully it helps someone.

# Preview


# Dependencies
- [ox_target](https://github.com/overextended/ox_target/releases/tag/v1.16.0)
- [ox_inventory](https://github.com/overextended/ox_inventory/releases/tag/v2.40.2)
- [ox_lib](https://github.com/overextended/ox_lib/releases/tag/v3.23.1)

I highly recommend installing the latest releases.

# Images
In the folder "images"

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