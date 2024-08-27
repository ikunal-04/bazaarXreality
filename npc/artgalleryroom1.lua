local json = require('json')

CHAT_TARGET = '5OS0KUNpgAfeAyPViK_VC_Y7Y2TxAujxihwY254hrzQ'

Handlers.add(
    'Schema',
    Handlers.utils.hasMatchingTag('Action', 'Schema'),
    function (msg)
        print('Schema')
        Send({
            Target = msg.From,
            Tags = { Type = 'Schema' },
            Data =  json.encode({
                About = {
                    Title = "About BazAR",
                    Description = 'BazAR is a decentralized marketplace built on the permaweb, allowing creators and collectors to trade all kinds of digital content.',
                }
            })
        })
    end
)