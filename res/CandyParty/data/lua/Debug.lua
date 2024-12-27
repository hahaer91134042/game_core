--����quick�еĹ��ߣ����þ��Ǵ�ӡLua��ǿ���table�Ľṹ�� ��table��Ƕ�ײ㼶�Ƚ϶��ʱ��������߷ǳ����㣬�����бر��Ĺ��ߡ�
--����ʹ�÷�����local debug = require("debug")
--��������������debug.dump(dataTable, "dataTable", 3)  �������Ϳ����ڿ���̨��������Ľ���ˣ��ǳ�Ư�������νṹ
--module("debug", package.seeall)

-- For lua5.3
-- ����ģ������ʹ��"Debug"����Ϊlua5.3�Դ���debug�⣬�������г�ͻ
--local name = ...
--local base = _ENV
local M = {}
setmetatable(M, {__index = _G})
--_G[name] = M
--package.loaded[name] = M --return modname�Ĺ���
--_ENV[name] = M --��ǰ�汾setfenv(1,M)
_ENV = M


local g_Debug_Flag = true

-- ��־����
LogLevel =
{
    GENERIC =             0,
    ERROR =               1,
    WARNING =             2,
    INFO =                3,
    VERBOSE =             4,
}

function logex(level, msg)
    if g_Debug_Flag == false then
        return
    end
	print(msg)
    --DebugLog(level, msg) -- a registered c api
end

function log(msg)
	return logex(LogLevel.GENERIC, msg)
end

---
--@function  dump()
--@param value table ��Ҫ��ӡ��
--@param description string ����
--@param nesting int tableǶ�ײ㼶
--@end

function dump(value, description, nesting)
    if g_Debug_Flag == false then
        return
    end

    --Ĭ�ϴ�ӡ�㼶3
    if type(nesting) ~= "number" then
        nesting = 3
    end

    local lookupTable = {}
    local result =  {}

    local function _v(v)
        if type(v) == "string" then
            v = "\"" .. v .. "\""
        end
        return tostring(v)
    end

    local function _dump(value, description, indent, nest, keylen)
        description = description or "<var>"
        spc = ""
        if type(keylen) == "number" then
            spc = string.rep(" ",keylen - string.len(_v(description)))
        end

        if type(value) ~= "table" then
            result[#result + 1] = string.format("%s%s%s = %s", indent, _v(description), spc, _v(value))
        elseif lookupTable[value] then
            result[#result + 1] = string.format("%s%s%s = *REF*", indent, description, spc)
        else
            lookupTable[value] = true
            if nest > nesting then
                result[#result + 1] = string.format("%s%s = *MAX NESTING*", indent, description)
            else
                result[#result + 1] = string.format("%s%s = {" , indent, _v(description))
                local indent2 = indent .. "    "
                local keys = {}
                local keylen = 0
                local values = {}
                for k, v in pairs(value) do
                    keys[#keys + 1] = k
                    local vk = _v(k)
                    local vk1 = string.len(vk)
                    if vk1 > keylen then
                        keylen = vk1
                    end
                    values[k] = v
                end
                table.sort(keys,function(a, b)
                    if type(a) == "number" and type(b) == "number" then
                        return a < b
                    else
                        return tostring(a) < tostring(b)
                    end
                end)

                for i, k in pairs(keys) do
                    _dump(values[k], k, indent2,nest + 1,keylen)
                end
                result[#result + 1] = string.format("%s}", indent)
            end
        end
    end
    _dump(value,description, "- ", 1)

    for i, line in pairs(result) do
        print(line)
    end

end

return M