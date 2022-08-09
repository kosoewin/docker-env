const express = require('express');
const fs = require("fs");
const app = express();
const path = require("path");
const PORT = process.env.PORT || 3000;

app.get("/video", (req, res) => {
    const videoPath = path.join("./video","Raymond.mp4");
    fs.stat(videoPath, (err, stats) => {
        if (err) {
            console.error("An error occurred");
            res.sendStatus(500);
            return;
        }
        res.writeHead(200, {
            "Content-Length": stats.size,
            "Content-Type": "video/mp4",
        });
        fs.createReadStream(videoPath).pipe(res);
    });
});
app.listen(PORT, () => {
    console.log(`Video Streaming  app listening on port ${PORT}!`);
});

