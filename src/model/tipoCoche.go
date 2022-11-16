package model

type TipoCoche struct {
}

// tipo_coche

func (T *TipoCoche) TableName() string {
	return "tipo_coche"
}
