const router = require("express").Router()
const tokenValidate = require("../helpers/verify_token")
const { today } = require("../helpers/date");


//MULTER - File Upload
const multer = require('multer')
var storage = multer.diskStorage(
    {
        destination: './uploads/',
        filename: function (req, file, cb) {
            let extArray = file.mimetype.split("/");
            let extension = extArray[extArray.length - 1];
            cb(null, file.originalname + "." + extension);
            // cb(null, file.originalname);
        }
    }
);
const upload = multer({ storage })


//routes
const controller = require("../controller/index")

// router.get('/example', tokenValidate, controller.example.test);

router.post('/login', controller.auth.login);
router.post('/register', upload.single('foto'), controller.auth.register);

router.get('/profile', controller.profile.show);

router.get('/fakultas', controller.fakultas);
router.get('/prodi', controller.prodi);

router.post('/pengumuman/post', controller.pengumuman.post);

router.get('/penugasan', controller.penugasan.show);


module.exports = router