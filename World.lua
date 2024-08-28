--#region Model

RealityInfo = {
    Dimensions = 2,
    Name = 'Floating Bazaar',
    ['Render-With'] = '2D-Tile-0',
}

RealityParameters = {
    ['2D-Tile-0'] = {
        Version = 0,
        Spawn = { 17, 49 },
        -- This is a tileset themed to Llama Land main island
        Tileset = {
            Type = 'Fixed',
            Format = 'PNG',
            TxId = 'ShVUMpeKIoO6XHvj2EUG7etWcRZwXNVFI8LdOD00VAs',
            -- TxId = 'xC1L5p0dU_sBb19R8oT29MnT0zr-7D7F4W6q6NNt7jA', -- TxId of the tileset in PNG format
        },
        -- This is a tilemap of sample small island
        Tilemap = {
            Type = 'Fixed',
            Format = 'TMJ',
            TxId = 'nAui9Y_riT91GnU-OmWih4sJrkzmBesH_rr8fg4RIPU',
            -- TxId = '3C6MhBygtQiYNxR_0lYW98H8_Y5D9rSyBZFnNFD0NpM', -- TxId of the tilemap in TMJ format
            -- Since we are already setting the spawn in the middle, we don't need this
            -- Offset = { -10, -10 },
        },
    },
    ['Audio-0'] = {
        Bgm = {
            Type = 'Fixed',
            Format = 'WEBM',
            TxId = '59_JWuZ_aa3UPmZ9jEEILAe5_61EzieN0rFLHUw-ra8',
        }
    }
}

RealityEntitiesStatic = {
    ['0rbit'] = {
        Position = { 23, 45 },
        Type = 'Avatar',
        Metadata = {
            -- SpriteTxId = '0WFjH89wzK8XAA1aLPzBBEUQ1uKpQe9Oz_pj8x1Wxpc',
            -- SpriteTxId = 'jXfJFUiFG4ojMg9YIgvxTefcvntW2GiBWw4kaow8poo',
            SpriteTxId = 'y3j1x6UdIXAl7Qy9MjNxDB9uEczA0aG5YpaH96KCEtI',
            Interaction = {
                Type = 'Warp',
                Size = { 4, 4 },
                Position = { 39.5, 23.5 },
                Target = "SMuZFxmXMfWJiF54pv0a5hCFWu-Ef2CpmxCwgzCmu-Y",
            },
        }
    },
    ['Pixel'] = {
        Position = { 35.5, 45 },
        Type = 'Avatar',
        Metadata = {
            -- SpriteTxId = '0WFjH89wzK8XAA1aLPzBBEUQ1uKpQe9Oz_pj8x1Wxpc',
            -- SpriteTxId = '59suAlT3irKkqHncrkSYA9LIuDnN79frOgby9oWo43g',
            SpriteTxId = 'jztkHoNzS5ZHfBqxM4pnJDr3_AiFLYxjXyNoDKk_rXQ',
            Interaction = {
                Type = 'Warp',
                Size = { 4, 4 },
                Position = { 36, 45 },
                Target = "SMuZFxmXMfWJiF54pv0a5hCFWu-Ef2CpmxCwgzCmu-Y",
            },
        }
    },
    ['AOphant'] = {
        Position = { 42, 45 },
        Type = 'Avatar',
        Metadata = {
            -- SpriteTxId = '0WFjH89wzK8XAA1aLPzBBEUQ1uKpQe9Oz_pj8x1Wxpc',
            SpriteTxId = 'MhvYkeWv_dPxkSg-Z4CGu-6ex9XTx5XUpcP8tMCA6Ew',
            -- SpriteTxId = 'kMxHGdMdeKOvlCvvHDJh3x__FiGZ8ZgIkE7JmdUzjUg',
            Interaction = {
                Type = 'Warp',
                Size = { 4, 4 },
                Position = { 45, 45 },
                Target = "SMuZFxmXMfWJiF54pv0a5hCFWu-Ef2CpmxCwgzCmu-Y",
            },
        }
    },
    ['ElepANT'] = {
        Position = { 45, 45 },
        Type = 'Avatar',
        Metadata = {
            -- SpriteTxId = 'elKKvPs_Y-ml9x9p9Ilt_SErdJoQy7nhN0MTWolTsAo',
            -- SpriteTxId = 'MhvYkeWv_dPxkSg-Z4CGu-6ex9XTx5XUpcP8tMCA6Ew',
            SpriteTxId = 'kMxHGdMdeKOvlCvvHDJh3x__FiGZ8ZgIkE7JmdUzjUg',
            Interaction = {
                Type = 'Warp',
                Size = { 4, 4 },
                Position = { 45, 45 },
                Target = "SMuZFxmXMfWJiF54pv0a5hCFWu-Ef2CpmxCwgzCmu-Y",
            },
        }
    },
    ['Eleet'] = {
        Position = { 47.5, 45 },
        Type = 'Avatar',
        Metadata = {
            SpriteTxId = 'elKKvPs_Y-ml9x9p9Ilt_SErdJoQy7nhN0MTWolTsAo',
            -- SpriteTxId = 'MhvYkeWv_dPxkSg-Z4CGu-6ex9XTx5XUpcP8tMCA6Ew',
            -- SpriteTxId = 'kMxHGdMdeKOvlCvvHDJh3x__FiGZ8ZgIkE7JmdUzjUg',
            Interaction = {
                Type = 'Warp',
                Size = { 4, 4 },
                Position = { 45, 45 },
                Target = "SMuZFxmXMfWJiF54pv0a5hCFWu-Ef2CpmxCwgzCmu-Y",
            },
        }
    },
    ['Bloooobs'] = {
        Position = { 29.5, 45 },
        Type = 'Avatar',
        Metadata = {
            -- SpriteTxId = '0WFjH89wzK8XAA1aLPzBBEUQ1uKpQe9Oz_pj8x1Wxpc',
            SpriteTxId = '59suAlT3irKkqHncrkSYA9LIuDnN79frOgby9oWo43g',
            -- SpriteTxId = 'jztkHoNzS5ZHfBqxM4pnJDr3_AiFLYxjXyNoDKk_rXQ',
            Interaction = {
                Type = 'Warp',
                Size = { 4, 4 },
                Position = { 36, 45 },
                Target = "SMuZFxmXMfWJiF54pv0a5hCFWu-Ef2CpmxCwgzCmu-Y",
            },
        }
    },
    ['WarpToArtGallery1'] = {
        Position = { 50, 48.5 },
        Type = 'Hidden',
        Metadata = {
            -- SpriteTxId = '0WFjH89wzK8XAA1aLPzBBEUQ1uKpQe9Oz_pj8x1Wxpc',
            -- SpriteTxId = 'jXfJFUiFG4ojMg9YIgvxTefcvntW2GiBWw4kaow8poo',
            -- SpriteTxId = 'gGzwitPXKg_Z-jBAwzzpYt947TCmZin9o7-d6LYgClA',
            Interaction = {
                Type = 'Warp',
                Size = { 2, 3 },
                -- Position = { 25, 18 },
                Target = "5OS0KUNpgAfeAyPViK_VC_Y7Y2TxAujxihwY254hrzQ",
            },
        }
    },
    ['WarpToArtGallery2'] = {
        Position = { 50, 49.5 },
        Type = 'Hidden',
        Metadata = {
            -- SpriteTxId = '0WFjH89wzK8XAA1aLPzBBEUQ1uKpQe9Oz_pj8x1Wxpc',
            -- SpriteTxId = 'jXfJFUiFG4ojMg9YIgvxTefcvntW2GiBWw4kaow8poo',
            -- SpriteTxId = 'gGzwitPXKg_Z-jBAwzzpYt947TCmZin9o7-d6LYgClA',
            Interaction = {
                Type = 'Warp',
                Size = { 2, 3 },
                Position = { 25, 18 },
                Target = "5OS0KUNpgAfeAyPViK_VC_Y7Y2TxAujxihwY254hrzQ",
            },
        }
    },
    ['WarpToArtGallery3'] = {
        Position = {50, 50.5 },
        Type = 'Hidden',
        Metadata = {
            -- SpriteTxId = '0WFjH89wzK8XAA1aLPzBBEUQ1uKpQe9Oz_pj8x1Wxpc',
            -- SpriteTxId = 'jXfJFUiFG4ojMg9YIgvxTefcvntW2GiBWw4kaow8poo',
            -- SpriteTxId = 'gGzwitPXKg_Z-jBAwzzpYt947TCmZin9o7-d6LYgClA',
            Interaction = {
                Type = 'Warp',
                Size = { 2, 3 },
                -- Position = { 25, 18 },
                Target = "5OS0KUNpgAfeAyPViK_VC_Y7Y2TxAujxihwY254hrzQ",
            },
        }
    },
    ['WarpToEntrance'] = {
        Position = {15, 49 },
        Type = 'Hidden',
        Metadata = {
            -- SpriteTxId = '0WFjH89wzK8XAA1aLPzBBEUQ1uKpQe9Oz_pj8x1Wxpc',
            -- SpriteTxId = 'jXfJFUiFG4ojMg9YIgvxTefcvntW2GiBWw4kaow8poo',
            -- SpriteTxId = 'gGzwitPXKg_Z-jBAwzzpYt947TCmZin9o7-d6LYgClA',
            Interaction = {
                Type = 'Warp',
                Size = { 2, 3 },
                -- Position = { 25, 18 },
                Target = "vlfHBk8angJO6E3CsaRpqFSvlNd_rwMQfQp1-gqjU3E",
            },
        }
    },

    ['vKo6mZzQSDY818s_wc6Byg57MLgur6Zn9Wc75JauxZw'] = {
        Position = { 19.75, 49.25 },
        Type = 'Avatar',
        Metadata = {
            DisplayName = 'Guide LLama',
            SkinNumber = 3,
            Interaction = {
                Type = 'SchemaForm',
                Id = 'Guide'
            },
        },
    },
    ['n8KCVSFhXhOWQtEtYdjzI9bjn5uTucUS1ljX7ST4Zmk'] = {
        Position = { 25.5, 47.25 },
        Type = 'Avatar',
        Metadata = {
            DisplayName = '0rbit Dumdumz',
            SkinNumber = 5,
            Interaction = {
                Type = 'SchemaForm',
                Id = 'Orbit'
            },
        },
    },
    ['1jz6FvLP3GGocDi1mjj3iuB6VFi0dUBokNnMjgwM_50'] = {
        Position = { 31, 47.25 },
        Type = 'Avatar',
        Metadata = {
            DisplayName = 'Bloooobs Llama',
            SkinNumber = 5,
            Interaction = {
                Type = 'SchemaForm',
                Id = 'Bloobs'
            },
        },
    },
    ['QbPtYOaQX3cqIWK0-6lc7d5WOnK4yfLJgz0s9EguH_I'] = {
        Position = { 38, 47.25 },
        Type = 'Avatar',
        Metadata = {
            DisplayName = 'Pixel Llama',
            SkinNumber = 5,
            Interaction = {
                Type = 'SchemaForm',
                Id = 'Pixel'
            },
        },
    },
    ['BvfvFHkVLQHiePeZiGUgYMiI2HsXXjkL0z_nQ9rchHY'] = {
        Position = { 49, 47.25 },
        Type = 'Avatar',
        Metadata = {
            DisplayName = 'Eleet Hacker Group Llama',
            SkinNumber = 5,
            Interaction = {
                Type = 'SchemaForm',
                Id = 'Aophant'
            },
        },
    },
    ['mdb3oWQM78UMaUoHN0BsSfNI0mCbaeX5iuEfWrNtuKg'] = {
        Position = { 44.5, 51.5 },
        Type = 'Avatar',
        Metadata = {
            DisplayName = 'Info Llama',
            SkinNumber = 5,
            Interaction = {
                Type = 'SchemaForm',
                Id = 'Info'
            },
        },
    },
}

--#endregion

return print("Loaded Reality Template")
