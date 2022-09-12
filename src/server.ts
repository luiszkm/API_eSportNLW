import express from 'express';	

const app = express();


app.get('/ads', (req, res) => {
  
  return res.json([
    { name: "aaa"},
    { name: "aaa"},
    { name: "aaa"},
  ])
})
app.listen(3333)