const router = require("express").Router()
const tokenValidate = require("../helpers/verify_token")
const { today } = require("../helpers/date");


//MULTER - File Upload
const multer = require('multer')
var storage = multer.diskStorage(
    {
        destination: '../profile/anggota',
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

router.get('/', (req, res) => {
    res.redirect('https://orbituinbkt.com');
});

router.post('/login', controller.auth.login);
router.post('/register', upload.single('foto'), controller.auth.register);

router.get('/profile', tokenValidate, controller.profile.show);
router.put('/profile/edit', tokenValidate, controller.profile.edit);

router.get('/fakultas', controller.fakultas);
router.get('/prodi', controller.prodi);
router.get('/bidang', controller.bidang);

router.post('/pengumuman/post', controller.pengumuman.post);
router.get('/pengumuman', tokenValidate, controller.pengumuman.show);

router.get('/penugasan', tokenValidate, controller.penugasan.show);

router.get('/agenda', tokenValidate, controller.agenda.show);

router.get('/kompetensi', tokenValidate, controller.kompetensi.show);


module.exports = router