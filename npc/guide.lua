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
                Guide = {
                    Title = "Welcome to floating sky BazaAr place",
                    Description = 'This is a guide to help you navigate the floating sky BazaAr place. You are currently exploring the art gallery. Moving behind me you\'ll find you\'r way out of the art gallery and into the main island.',
                }
            })
        })
    end
)