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
                Pixel = {
                    Title = "Pixel Llama",
                    Description = 'This is the Pixel XiYou asset collection. You can find more information about it on the bazaar (https://ao-bazar.arweave.net/#/collection/FSQ1tVuLpy5AQYyO0AeoHJK1tLqEY6m51kbUEoetIE0/assets/) and can trade it.',
                }
            })
        })
    end
)