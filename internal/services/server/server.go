package server

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

type Server struct {
	// db
	engine *gin.Engine
}

func (s Server) createGood(c *gin.Context) {

}

func (s Server) updateGood(c *gin.Context) {

}

func (s Server) removeGood(c *gin.Context) {

}

func (s Server) listGoods(c *gin.Context) {

}

func (s Server) reprioritizeGood(c *gin.Context) {

}

func NewServer() *Server {
	server := &Server{}
	engine := gin.Default()
	
	engine.GET("/goods/list", server.listGoods)
	engine.POST("/good/create", server.createGood)
	engine.PATCH("/good/update", server.updateGood)
	engine.PATCH("/good/reprioritize", server.listGoods)
	engine.DELETE("/good/remove", server.removeGood)
	
	server.engine = engine
	return server
}