const express = require('express');
const application = new express();
const PORT = 4000;

application.get('/', (req, resp) => {
	resp.send(`Hello World, Node server is running on PORT ${PORT}`);
});

application.listen(PORT, () => {
	console.log(`Node server is running on ${PORT}.`);
});
