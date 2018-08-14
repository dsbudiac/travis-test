import * as express from 'express';

let app = express();

app.listen(3000);
app.all('*', (req, res) => res.send('oh hai'));