package LuaExt

import (
	LuxModel "Lux/Model"
	"reflect"
	"time"

	"github.com/yuin/gluamapper"
	lua "github.com/yuin/gopher-lua"
)

//之後研究
// func PreloadFile(ls *lua.LState, path, name string) error {
// 	fmod, err := ls.LoadFile(path)
// 	if err != nil {
// 		return err
// 	}
// 	preload := ls.GetField(ls.GetField(ls.Get(EnvironIndex), "package"), "preload")
// 	if _, ok := preload.(*lua.LTable); !ok {
// 		ls.RaiseError("package.preload must be a table")
// 	}
// 	ls.SetField(preload, name, fmod)
// 	return nil
// }

// MapToTable converts a Go map to a Lua table
func MapToTable(m map[string]interface{}) *lua.LTable {
	// Create the main table
	resultTable := &lua.LTable{}

	// Loop through the map
	for key, element := range m {
		switch element.(type) {
		case float64:
			resultTable.RawSetString(key, lua.LNumber(element.(float64)))
		case int64:
			resultTable.RawSetString(key, lua.LNumber(element.(int64)))
		case string:
			resultTable.RawSetString(key, lua.LString(element.(string)))
		case bool:
			resultTable.RawSetString(key, lua.LBool(element.(bool)))
		case []byte:
			resultTable.RawSetString(key, lua.LString(string(element.([]byte))))
		case map[string]interface{}:
			// Recursively convert nested maps
			tble := MapToTable(element.(map[string]interface{}))
			resultTable.RawSetString(key, tble)
		case time.Time:
			// Convert time to Unix timestamp
			resultTable.RawSetString(key, lua.LNumber(element.(time.Time).Unix()))
		case []map[string]interface{}:
			// Create a slice table for nested maps
			sliceTable := &lua.LTable{}
			for _, s := range element.([]map[string]interface{}) {
				tble := MapToTable(s)
				sliceTable.Append(tble)
			}
			resultTable.RawSetString(key, sliceTable)
		case []interface{}:
			// Create a slice table for other types
			sliceTable := &lua.LTable{}
			for _, s := range element.([]interface{}) {
				switch s.(type) {
				case map[string]interface{}:
					t := MapToTable(s.(map[string]interface{}))
					sliceTable.Append(t)
				case float64:
					sliceTable.Append(lua.LNumber(s.(float64)))
				case string:
					sliceTable.Append(lua.LString(s.(string)))
				case bool:
					sliceTable.Append(lua.LBool(s.(bool)))
				}
			}
			resultTable.RawSetString(key, sliceTable)
		}
	}

	return resultTable
}

/*
轉型使用擴展函式
目前只支援struct 跟 array
*/
func LuaToArry[T any](res lua.LValue) []T {
	tb := res.(*lua.LTable)
	//fmt.Println("LuaTo Type=", reflect.TypeFor[T]())

	objT := reflect.TypeFor[T]()
	var l []T
	tb.ForEach(func(i lua.LValue, v lua.LValue) {
		//fmt.Println("set i->", i, " v->", v)
		o := reflect.New(objT).Elem().Interface()
		gluamapper.Map(v.(*lua.LTable), &o)
		l = append(l, o.(T))
	})

	return l
}

func LuaToObj[T LuxModel.ILuaData](gear string, res *lua.LState) T {
	var o T

	tb := res.GetGlobal(o.Flag(gear)).(*lua.LTable)
	//fmt.Println("LuaTo Type=", reflect.TypeFor[T]().Kind())

	//fmt.Println("LuaToObj str->", tb.String())

	gluamapper.Map(tb, &o)

	return o
}

func LuaTableToObj[T any](v lua.LValue) T {
	var o T

	tb := v.(*lua.LTable)
	//fmt.Println("LuaTo Type=", reflect.TypeFor[T]().Kind())

	//fmt.Println("LuaToObj str->", tb.String())

	gluamapper.Map(tb, &o)

	return o
}

func InitLua(path string) (L *lua.LState, err error) {
	L = lua.NewState(lua.Options{
		IncludeGoStackTrace: true,
		SkipOpenLibs:        false,
	})
	if e := L.DoFile(path); e != nil {
		err = e
	}
	return
}
func InitLuaSource(source string) (L *lua.LState, err error) {
	L = lua.NewState(lua.Options{
		IncludeGoStackTrace: true,
		SkipOpenLibs:        false,
	})
	if e := L.DoString(source); e != nil {
		err = e
	}

	return
}

// // MapToTable converts a Go map to a lua table
// func MapToTable(m map[string]interface{}) *lua.LTable {
// 	// Main table pointer
// 	resultTable := &lua.LTable{}

// 	// Loop map
// 	for key, element := range m {

// 		switch element.(type) {
// 		case float64:
// 			resultTable.RawSetString(key, lua.LNumber(element.(float64)))
// 		case int64:
// 			resultTable.RawSetString(key, lua.LNumber(element.(int64)))
// 		case string:
// 			resultTable.RawSetString(key, lua.LString(element.(string)))
// 		case bool:
// 			resultTable.RawSetString(key, lua.LBool(element.(bool)))
// 		case []byte:
// 			resultTable.RawSetString(key, lua.LString(string(element.([]byte))))
// 		case map[string]interface{}:

// 			// Get table from map
// 			tble := MapToTable(element.(map[string]interface{}))

// 			resultTable.RawSetString(key, tble)

// 		case time.Time:
// 			resultTable.RawSetString(key, lua.LNumber(element.(time.Time).Unix()))

// 		case []map[string]interface{}:

// 			// Create slice table
// 			sliceTable := &lua.LTable{}

// 			// Loop element
// 			for _, s := range element.([]map[string]interface{}) {

// 				// Get table from map
// 				tble := MapToTable(s)

// 				sliceTable.Append(tble)
// 			}

// 			// Set slice table
// 			resultTable.RawSetString(key, sliceTable)

// 		case []interface{}:

// 			// Create slice table
// 			sliceTable := &lua.LTable{}

// 			// Loop interface slice
// 			for _, s := range element.([]interface{}) {

// 				// Switch interface type
// 				switch s.(type) {
// 				case map[string]interface{}:

// 					// Convert map to table
// 					t := MapToTable(s.(map[string]interface{}))

// 					// Append result
// 					sliceTable.Append(t)

// 				case float64:

// 					// Append result as number
// 					sliceTable.Append(lua.LNumber(s.(float64)))

// 				case string:

// 					// Append result as string
// 					sliceTable.Append(lua.LString(s.(string)))

// 				case bool:

// 					// Append result as bool
// 					sliceTable.Append(lua.LBool(s.(bool)))
// 				}
// 			}

// 			// Append to main table
// 			resultTable.RawSetString(key, sliceTable)
// 		}
// 	}

// 	return resultTable
// }
