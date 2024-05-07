import app from './src/app.js';

// app.listen(3000, () => {
//     console.log('Server is running on http://localhost:3000');
//     });

const StartServer =()=>{
    const port = process.env.PORT || 3000;

    app.listen(port, () => {
        console.log(`Server is running on http://localhost:${port}`);
    });
}

StartServer();

