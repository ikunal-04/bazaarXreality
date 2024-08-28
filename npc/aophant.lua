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
                Aophant = {
                    Title = "Eleet Llama",
                    Description = 'This is the Eleet Hacker Group asset collection. You can find more information about it on the bazaar (https://ao-bazar.arweave.net/#/collection/4FOMQ_pburTkSrUDanlLt_aJJ91VWaaQw15hObcxaKY) and can trade it.',
                }
            })
        })
    end
)