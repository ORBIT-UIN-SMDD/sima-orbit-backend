//for Firebase Admin
var admin = require("firebase-admin");
var serviceAccount = require("../sima-orbit-firebase-adminsdk-qv5yi-691f48b4a3.json");

module.exports = admin.initializeApp({
    credential: admin.credential.cert(serviceAccount)
});