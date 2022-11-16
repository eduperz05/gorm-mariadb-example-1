package model

type Coche struct {
}

func (c *Coche) TableName() string {
	return "coche"
}
