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
                    Description = 'This is the bloooobs llama, you can see the bloobs here. You can also trade the bloobs on the BazaAr. You can also get the bloobs from the BazaAr. You can also trade the bloobs on the BazaAr.',
                }
            })
        })
    end
)