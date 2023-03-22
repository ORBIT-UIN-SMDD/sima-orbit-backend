const Joi = require("joi");

//Register Validation
const registerValidationCalonAnggota = (reqBody) => {
    const Schema = Joi.object({
        nim: Joi.number().min(5).required(),
        foto: Joi.string(),
        nama: Joi.string().min(2).required(),
        tempat_lahir: Joi.string().min(2).required(),
        tanggal_lahir: Joi.date().min(2).required(),
        jenis_kelamin: Joi.number().max(1).required(),
        alamat: Joi.string().min(2).required(),
        fakultas_id: Joi.number().required(),
        prodi_id: Joi.number().required(),
        bidang_id: Joi.number().required(),
        no_telp: Joi.string().min(2).required(),
        email: Joi.string().min(6).required().email(),
        password: Joi.string().min(6).required()
    })
    return Schema.validate(reqBody)
};

//login Validation
const loginValidation = (reqBody) => {
    const Schema = Joi.object({
        nim: Joi.string().min(6).required().alphanum(),
        password: Joi.string().min(6).required()
    })
    return Schema.validate({ nim: reqBody.nim, password: reqBody.password })
};

module.exports = {
    registerValidationCalonAnggota,
    loginValidation
}