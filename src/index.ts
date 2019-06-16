import * as express from 'express';

const PORT = 8080;

const app: express.Express = express();

app.get('/', (req, res) => {
    res.send('It works');
});

app.get('/ping', (req, res) => {
    res.send("pong!");
});

app.get('/error', (req, res) => {
    res.status(500).send('Internal Server Error');
});

app.listen(PORT);

console.log(`Running on localhost:${PORT}`);
