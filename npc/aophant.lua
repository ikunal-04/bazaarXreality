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
                    Title = "Goat Llama",
                    Description = 'This is the goat llama, you can see the goat here. You can also trade the goat on the BazaAr. You can also get the goat from the BazaAr. You can also trade the goat on the BazaAr.',
                }
            })
        })
    end
)