minetest.register_on_dignode(function(pos, node, digger)
    local falling_nodes = {
        "default:sand", "default:gravel", "default:snow", "default:snowblock",
        "default:clay", "default:desert_sand", "default:silver_sand",
    }
    if table.index_of(falling_nodes, node.name) then
        minetest.node_dig(pos, node, digger)
    end
end)
