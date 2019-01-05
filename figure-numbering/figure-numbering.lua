local nextNumber = 1
local prefix = "Figure"

function Image(block)
    if block.caption[1] then
        currentCaption = block.caption[1].text
        newCaption = string.format("%s %d: %s", prefix, nextNumber, currentCaption)
        block.caption[1].text = newCaption
        nextNumber = nextNumber + 1
    end

    return block
end