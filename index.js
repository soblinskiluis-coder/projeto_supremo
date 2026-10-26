const express = require("express")
const app = express()
app.use(express.json())
const port = 3000 
const db = require("./db")

app.get("/aula", async (req,res) => { 
    //abrir o arquivo
    try {
    const resultado = await db.pool.query("SELET * FROM aula")
    res.status(200).json(resultado[0])
} catch (erro){ 
    res.status(500).json({erro: erro.menssage})}
   
})
 // ler od dados
    // retornar os dados na resposta 

app.listen(port, ()=>{
     console.log("API rodando na porta" + port)
})