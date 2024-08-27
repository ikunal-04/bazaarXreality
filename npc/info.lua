local json = require('json')

-- Configure this to the process ID of the world you want to send chat messages to
CHAT_TARGET = '7_J2DJWqQW7eqR3Mr08gzTsYrgetdRjo_SqsDgTdfT4'

_COLLECTIONS_REGISTERY = "TFWDmf8a3_nw43GCm_CuYlYoylHAjCcFGbgHfDaGcsg"

Handlers.add('Schema', Handlers.utils.hasMatchingTag('Action', 'Schema'),
    function(msg)
        print('Schema')
        local sender = msg.From
        Send({
            Target = msg.From,
            Tags = {
                Type = 'Schema'
            },
            Data = json.encode({
                Info = {
                    Title = "Explore more collections on bazAr",
                    Description =
                    "Do you want to get the collection of assets? You can get the collection of assets from the bazAr. You can also trade the assets on bazAr. You can also get the collection of assets from the bazAr. You can also trade the assets on bazAr.",
                    Schema = {
                        Tags = {
                            type = "object",
                            properties = {
                                Action = {
                                    type = "string",
                                    const = "SendReq"
                                },
                                ["X-Response"] = {
                                    type = "string",
                                    title = "Enter true/false:",
                                    minLength = 4,
                                    maxLength = 250,
                                }
                            }
                        }
                    }
                }
            })
        })
    end)

Handlers.add('SendReq',
    Handlers.utils.hasMatchingTag('Action', 'SendReq'),
    function(msg)
        local url = msg.Tags["X-Response"]:lower()
        if url ~= "true" then
            -- Send a response indicating that the URL is false and exit
            Send({
                Target = CHAT_TARGET,
                Tags = {
                    Action = 'ChatMessage',
                    ['Author-Name'] = 'Info Llama',
                },
                Data = json.encode("Sad :( Thought of showing you some cool assets on BAZAAr. But you said no. :("),
            })
            return
        end
        print('title' .. url)

        Send({
            Target = _COLLECTIONS_REGISTERY,
            Action = "Get-Collections",
        })
        local collectionsResponse = Inbox[#Inbox].Data
        local collections = json.decode(collectionsResponse)
        -- print("collectionsResponse" .. collectionsResponse)
        if not collections.Collections then
            print("No Collections found in the response")
            Send({
                Target = CHAT_TARGET,
                Tags = {
                    Action = 'ChatMessage',
                    ['Author-Name'] = 'Info Llama',
                },
                Data = json.encode("No collections found."),
            })
            return
        end

        -- Clear the existing thumbnails (in case of updates)
        COLLECTION_THUMBNAILS = {}

        for _, collection in ipairs(collections.Collections) do
            local name = collection.Name
            local thumbnail = collection.Thumbnail

            if name and thumbnail then
                COLLECTION_THUMBNAILS[name] = thumbnail
                -- print("Added thumbnail for collection: " .. name)
            else
                -- print("Skipped a collection due to missing name or thumbnail")
            end
        end
        print("COLLECTION_THUMBNAILS" .. json.encode(COLLECTION_THUMBNAILS))
        local thumbnailArray = {}

        for name, thumbnail in pairs(COLLECTION_THUMBNAILS) do
            local fullUrl = "https://arweave.net/" .. thumbnail
            table.insert(thumbnailArray, { name = name, thumbnail = fullUrl })
        end

        -- Shuffle the array (Fisher-Yates shuffle)
        for i = #thumbnailArray, 2, -1 do
            local j = math.random(i)
            thumbnailArray[i], thumbnailArray[j] = thumbnailArray[j], thumbnailArray[i]
        end

        -- Select the first 5 items (or less if there are fewer than 5)
        local selectedThumbnails = {}
        for i = 1, math.min(5, #thumbnailArray) do
            selectedThumbnails[thumbnailArray[i].name] = thumbnailArray[i].thumbnail
        end

        -- Send the selected thumbnails
        Send({
            Target = CHAT_TARGET,
            Tags = {
                Action = 'ChatMessage',
                ['Author-Name'] = 'Info Llama',
            },
            Data = json.encode(selectedThumbnails),
        })
        -- Print out all stored thumbnails
        -- print("\nStored Thumbnails:")
        -- for name, thumbnail in pairs(COLLECTION_THUMBNAILS) do
        --     print(name .. ": " .. thumbnail)
        -- end
        -- print(msg.Tags["X-Response"])
    end
)
