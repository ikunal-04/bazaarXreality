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
                Bloobs = {
                    Title = "Bloobs Llama",
                    Description = 'This is the Blooobs asset collection. You can find more information about it on the bazaar (https://ao-bazar.arweave.net/#/collection/GXuJXNHETvHV9GzuQuzaF1HidQJdkOGbCJpSwhwVbs4/assets/) and can trade it.',
                }
            })
        })
    end
)