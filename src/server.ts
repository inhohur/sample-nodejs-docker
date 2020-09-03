import * as express from "express"

const app = express();

app.get("/", (req: express.Request, res:express.Response) => {
    res.send("Hello from sample-nodejs-docker\n");
})

app.listen(80, () => {
    console.log("started listening to port 80");
})