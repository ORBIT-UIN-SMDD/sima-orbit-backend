const firebaseAdmin = require("../app/firebaseAdmin");
const model = require("../config/models");

let controller = {}

controller.post = async function (req, res) {

    // const pengumuman_id = req.body.pengumuman_id
    // const pengumuman_judul = req.body.pengumuman_judul
    // const pengumuman_deskripsi = req.body.pengumuman_deskripsi
    // const pengumuman_tanggal = req.body.pengumuman_tanggal
    // const pengumuman_pembuat = req.body.pengumuman_pembuat

    // const alumni = await model.PengumumanModel.create({
    //     pengumuman_id,
    //     pengumuman_judul,
    //     pengumuman_deskripsi,
    //     pengumuman_tanggal,
    //     pengumuman_pembuat

    // })

    const message = {
        notification: {
            title: 'Title of your notification',
            body: 'Body of your notification'
        },
        topic: "versi1",
    };

    firebaseAdmin.messaging().send(message)
        .then((response) => {
            console.log('Successfully sent message:', response);
            res.json({
                status: "success",
                message
            })
        })
        .catch((error) => {
            console.log('Error sending message:', error);
        });



};

module.exports = controller;