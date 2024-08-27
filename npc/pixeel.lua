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
                    Description = 'This is the pixel llama, you can see the pixel here. You can also trade the pixel on the BazaAr. You can also get the pixel from the BazaAr. You can also trade the pixel on the BazaAr.',
                }
            })
        })
    end
)