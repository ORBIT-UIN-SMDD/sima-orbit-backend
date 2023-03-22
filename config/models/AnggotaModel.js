const { DataTypes } = require('sequelize');
const db = require("../database/mysql");

const fakultas = require("./FakultasModel");
const prodi = require("./ProdiModel");
const bidang = require("./BidangModel");

const AnggotaModel = db.define('anggota', {
    // Model attributes are defined here
    nim: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true
    },
    foto: {
        type: DataTypes.STRING,
        allowNull: true
    },
    nama: {
        type: DataTypes.STRING,
        allowNull: false
    },
    tempat_lahir: {
        type: DataTypes.STRING,
        allowNull: false
    },
    tanggal_lahir: {
        type: DataTypes.DATE,
        allowNull: false
    },
    jenis_kelamin: {
        type: DataTypes.BOOLEAN,
        allowNull: false
    },
    alamat: {
        type: DataTypes.STRING,
        allowNull: true
    },
    fakultas_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    prodi_id: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    bidang_id: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    no_telp: {
        type: DataTypes.STRING,
        allowNull: false
    },
    email: {
        type: DataTypes.STRING,
        allowNull: false
    },
    password: {
        type: DataTypes.STRING,
        allowNull: false
    },
    tanggal_mendaftar: {
        type: DataTypes.DATE,
        allowNull: false
    },
    active: {
        type: DataTypes.BOOLEAN,
        allowNull: false
    }
}, {
    // Other model options go here
    freezeTableName: true,
    timestamps: false
});

AnggotaModel.hasOne(fakultas, { foreignKey: "fakultas_id" })
AnggotaModel.belongsTo(fakultas, { foreignKey: "fakultas_id" })

AnggotaModel.hasOne(bidang, { foreignKey: "bidang_id" })
AnggotaModel.belongsTo(bidang, { foreignKey: "bidang_id" })

AnggotaModel.hasOne(prodi, { foreignKey: "prodi_id" })
AnggotaModel.belongsTo(prodi, { foreignKey: "prodi_id" })

// console.log(User === db.models.User); // true

module.exports = AnggotaModel