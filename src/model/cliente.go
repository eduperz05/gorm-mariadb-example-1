package model

import "time"

type Cliente struct {
	DNI              string    `gorm:"column:DNI;type:varchar(9);primaryKey"`
	Apellidos        string    `gorm:"column:apellidos;type:varchar(50)"`
	Nombre           string    `gorm:"column:nombre;type:varchar(100)"`
	Datos            string    `gorm:"column:datos;type:varchar(100)"`
	Nacimiento       time.Time `gorm:"column:nacimiento;type:datetime"`
	ExpedicionCarnet time.Time `gorm:"column:expedicionCarnet;type:datetime"`
}

func (c *Cliente) TableName() string {
	return "cliente"
}
