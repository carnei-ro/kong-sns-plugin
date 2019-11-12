--[[xml='<?xml version="1.0"?><SendMessageResponse xmlns="http://queue.amazonaws.com/doc/2012-11-05/"><SendMessageResult><MessageId>11f27472-3033-4b34-b204-d7be806689e4</MessageId><MD5OfMessageBody>03eda425a3227865e43fd2b67e46147c</MD5OfMessageBody></SendMessageResult><ResponseMetadata><RequestId>5f6d858b-9fb1-5034-978c-d0baeb5e6c32</RequestId></ResponseMetadata></SendMessageResponse>'

local MessageId, MD5OfMessageBody
string.gsub(xml,"MessageId>(.*)</MessageId", function(a) MessageId=a end)
string.gsub(xml,"MD5OfMessageBody>(.*)</MD5OfMessageBody", function(a) MD5OfMessageBody=a end)
print(MessageId)


m=string.gsub(xml,"MessageId>(.*)</MessageId", print)]]--

--[[local write = require 'pl.pretty'.write
local cjson = require 'cjson'

local body, err, mimetype = kong.request.get_body()

if body then
	ngx.say('body type: ' .. type(body))
	ngx.say('body: '.. write(body))
	ngx.say('body json: ' .. cjson.encode(body))
end 
if err then ngx.say('err type: ' .. type(err)) ngx.say('err: ' .. err) end
if mimetype then ngx.say('mimetype type: ' .. type(mimetype)) ngx.say('mimetype: '.. mimetype) end]]--

local conf={
    aws_region='sa-east-1',
    aws_account_id='123456789012',
    topic_name='my_topic',
    }
local fmt               = string.format
local tonumber          = tonumber
local concat            = table.concat
ngx.say(concat({"arn%3Aaws%3Asns%3A", conf.aws_region, "%3A", conf.aws_account_id,"%3A",conf.topic_name}))
ngx.say(ngx.unescape_uri(concat({"arn%3Aaws%3Asns%3A", conf.aws_region, "%3A", conf.aws_account_id,"%3A",conf.topic_name})))

ngx.exit(200)
