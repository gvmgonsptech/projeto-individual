var express = require("express");
var router = express.Router();

var avisoController = require("../controllers/avisoController");

router.get("/", function (req, res) {
    avisoController.testar(req, res);
});

router.get("/listar", function (req, res) {
    avisoController.listar(req, res);
});

router.get("/listar/:currentUser.id", function (req, res) {
    avisoController.listarPorUsuario(req, res);
});

router.get("/pesquisar/:descricao", function (req, res) {
    avisoController.pesquisarDescricao(req, res);
});

router.post("/publicar/:idUser", function (req, res) {
    avisoController.publicar(req, res);
});

router.put("/editar/:idComent", function (req, res) {
    avisoController.editar(req, res);
});

router.delete("/deletar/:idComent", function (req, res) {
    avisoController.deletar(req, res);
});

module.exports = router;