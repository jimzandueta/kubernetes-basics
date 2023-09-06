import express from 'express';

const app = express();
const PORT = 8080;

app.get('/', (req, res) => {
    res.send('Hello, Kubernetes with TypeScript!');
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
