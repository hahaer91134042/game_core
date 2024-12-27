package LuxExt

import (
	"math"
	"os"
	"os/signal"
	"syscall"
)

func KeepConsoleAlive() {
	quitChannel := make(chan os.Signal, 1)
	signal.Notify(quitChannel, syscall.SIGINT, syscall.SIGTERM)
	<-quitChannel
}

func Round(x float64, offset int) float64 {
	unit := float64(10 * offset)
	return math.Round(x*unit) / unit
}
