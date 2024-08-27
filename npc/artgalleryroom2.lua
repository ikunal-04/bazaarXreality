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
                Fee = {
                    Title = "Fee Structure of BazAR",
                    Description = 'Unlike traditional marketplaces, BazAR doesn\'t charge any fees. Instead, there\'s a small 0.5% fee captured by the UCM protocol.',
                }
            })
        })
    end
)