package main

import (
	"fmt"
	"log"
	"os"
	"time"

	"github.com/eduperz05/docker-golang-hot-reload/model"
	"github.com/gofiber/fiber/v2"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
)

type DBConfig struct {
	Host     string
	Port     int
	User     string
	DBName   string
	Password string
}

func DbURL(dbConfig *DBConfig) string {
	return fmt.Sprintf(
		"%s:%s@tcp(%s:%d)/%s?charset=utf8mb4&parseTime=True&loc=Local",
		dbConfig.User,
		dbConfig.Password,
		dbConfig.Host,
		dbConfig.Port,
		dbConfig.DBName,
	)
}

func main() {
	newLogger := logger.New(
		log.New(os.Stdout, "\r\n", log.LstdFlags),
		logger.Config{
			SlowThreshold: time.Second,
			LogLevel:      logger.Silent,
			Colorful:      true,
		},
	)

	config := &DBConfig{
		Host:     "mariadb",
		Port:     3306,
		User:     "root",
		DBName:   "alquilerCoches",
		Password: "12345",
	}
	db, err := gorm.Open(mysql.Open(DbURL(config)), &gorm.Config{
		Logger: newLogger,
	})
	db.Debug().AutoMigrate(model.Cliente{})

	if err != nil {
		log.Println("Error al conectar a la base de datos")
	}

	app := fiber.New()

	app.Get("/", func(c *fiber.Ctx) error {
		return c.SendString("Hello, World!")
	})

	log.Fatal(app.Listen(":3000"))
}
