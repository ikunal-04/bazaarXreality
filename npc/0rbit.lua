local json = require('json')

CHAT_TARGET = '7_J2DJWqQW7eqR3Mr08gzTsYrgetdRjo_SqsDgTdfT4'

Handlers.add(
    'Schema',
    Handlers.utils.hasMatchingTag('Action', 'Schema'),
    function (msg)
        print('Schema')
        Send({
            Target = msg.From,
            Tags = { Type = 'Schema' },
            Data =  json.encode({
                Orbit = {
                    Title = "0rbit Llama",
                    Description = 'This is the 0rbit dumdumz asset collection. You can find more information about it on the bazaar (https://ao-bazar.arweave.net/#/collection/XTfxTApHs240JSUijR_4pjBUAEOXK8f_cDvmzUJ7uUY/assets/) and can trade it.',
                }
            })
        })
    end
)