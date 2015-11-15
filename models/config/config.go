package config
import (
	"webo/models/s"
	"encoding/json"
)



type Config struct {
	Name 		string
	Label 		string
	Configs 	interface{}
}

type ConfigMap [string]Config


func init(){
	ConfigMap[s.Category] = json.Unmarshal()
}