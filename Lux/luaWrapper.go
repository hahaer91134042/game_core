package Lux

import lua "github.com/yuin/gopher-lua"

/*
方便操作套件的類別
*/
type luaWrapper struct {
	state *lua.LState
}

func (c *luaWrapper) loadPath(path string, funs ...func(error)) (err error) {
	if e := c.state.DoFile(path); e != nil {
		err = e
	}
	return
}
func (c *luaWrapper) loadRaw(source string, funs ...func(error)) (err error) {
	if e := c.state.DoString(source); e != nil {
		err = e
	}
	return
}

func (c *luaWrapper) getValue(name string) lua.LValue {
	return c.state.GetGlobal(name)
}

func (c *luaWrapper) callFunc(p lua.P, param ...lua.LValue) (v lua.LValue) {
	c.state.CallByParam(p, param...)
	v = c.state.Get(-1)
	defer c.state.Pop(1)
	return
}

func createNewLua() *luaWrapper {
	return &luaWrapper{
		state: lua.NewState(defLuaCfg),
	}
}
