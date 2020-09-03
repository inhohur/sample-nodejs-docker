"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express = require("express");
const app = express();
app.get("/", (req, res) => {
    res.send("hello world!");
});
app.listen(80, () => {
    console.log("started listening to port 80");
});
