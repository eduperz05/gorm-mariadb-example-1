package model

type Alquiler struct {
}

func (a *Alquiler) TableName() string {
	return "alquiler"
}
