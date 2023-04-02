const validation = require("../helpers/validation")
const bcrypt = require('bcryptjs');
const jwt = require("jsonwebtoken");
const model = require("../config/models/index");
const { today } = require("../helpers/date");


let controller = {}

controller.register = async (req, res) => {

    const nim = req.body.nim
    const foto = req.file !== undefined ? req.body.foto = req.file.path : ''
    const nama = req.body.nama
    const tempat_lahir = req.body.tempat_lahir
    const tanggal_lahir = req.body.tanggal_lahir
    const jenis_kelamin = req.body.jenis_kelamin
    const alamat = req.body.alamat
    const fakultas_id = req.body.fakultas_id
    const prodi_id = req.body.prodi_id
    const bidang_id = req.body.bidang_id
    const no_telp = req.body.no_telp
    const email = req.body.email
    const password = req.body.password


    console.log(req.body);


    //validation Data Check Before create new user
    const validationError = validation.registerValidationCalonAnggota(req.body).error
    if (validationError) return res.status(400).json({ message: validationError.details[0].message })

    const checkNim = await model.AnggotaModel.findOne({ where: { nim: nim } });
    if (checkNim !== null) {
        res.status(400).json({
            status: "failed",
            message: "NIM Sudah Digunakan"
        })

    } else {
        //hash password
        const salt = await bcrypt.genSalt(10)
        const hashingPassword = await bcrypt.hash(password, salt)

        const result = await model.AnggotaModel.create({
            nim,
            foto,
            nama,
            tempat_lahir,
            tanggal_lahir,
            jenis_kelamin,
            alamat,
            fakultas_id,
            prodi_id,
            bidang_id,
            no_telp,
            email,
            password: hashingPassword,
            tanggal_mendaftar: Date.now(),
            active: 0
        })

        res.json({
            status: "success",
            message: "User Succesfully added",
            result
        })
    }

};

controller.login = async (req, res) => {
    res.setHeader('Content-Type', 'application/json');

    const nim = req.body.nim
    const password = req.body.password

    //validation Data Check
    const validationError = validation.loginValidation(req.body).error
    if (validationError) return res.status(400).json({ status: "failed", message: validationError.details[0].message })

    const anggota = await model.AnggotaModel.findOne({ where: { nim: nim } })
    const pengurus = await model.PengurusModel.findOne({ where: { nim: nim } })
    const alumni = await model.AlumniModel.findOne({ where: { nim: nim } })



    if (anggota !== null) {
        if (anggota.active == true) {
            // //check password
            const validPassword = await bcrypt.compare(password, anggota.password)
            if (!validPassword) return res.status(400).json({ status: "failed", message: "Email or password wrong!" })

            //create an assign a token
            const token = jwt.sign({ nim: anggota.nim, nama: anggota.nama, bidang_id: anggota.bidang_id, status: "anggota" }, process.env.TOKEN_SECRET)
            res.header("auth-token", token)

            res.json({
                status: "success",
                messsage: "logged In",
                token: token,
                nim: anggota.nim,
                name: anggota.nama,
                tipe: "anggota",
            });
        } else {
            res.status(400).json({ status: "failed", message: "Maaf akun mu belum aktif, silahkan hubungi pengurus ORBIT" })
        }


    } else if (pengurus !== null) {
        // //check password
        const validPassword = await bcrypt.compare(password, pengurus.password)
        if (!validPassword) return res.status(400).json({ message: "Email or password wrong!" })

        //create an assign a token
        const token = jwt.sign({ nim: pengurus.nim, nama: pengurus.nama, bidang_id: pengurus.bidang_id, status: "pengurus" }, process.env.TOKEN_SECRET)
        res.header("auth-token", token)

        res.json({
            status: "success",
            messsage: "logged In",
            token: token,
            nim: pengurus.nim,
            name: pengurus.nama,
            tipe: "pengurus",
        });
    } else if (alumni !== null) {
        // //check password
        const validPassword = await bcrypt.compare(password, alumni.password)
        if (!validPassword) return res.status(400).json({ message: "Email or password wrong!" })

        //create an assign a token
        const token = jwt.sign({ nim: alumni.nim, nama: alumni.nama, bidang_id: "-", status: "alumni" }, process.env.TOKEN_SECRET)
        res.header("auth-token", token)

        res.json({
            status: "success",
            messsage: "logged In",
            token: token,
            nim: alumni.nim,
            name: alumni.nama,
            tipe: "alumni",
        });
    } else {
        res.status(400).json({ status: "failed", message: "NIM or password wrong!" })
    }

};

module.exports = controller;