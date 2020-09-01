/****************************************************************************
** Meta object code from reading C++ file 'MapCloudDisplay.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/rtabmap_ros/src/rviz/MapCloudDisplay.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'MapCloudDisplay.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_rtabmap_ros__MapCloudDisplay_t {
    QByteArrayData data[15];
    char stringdata0[254];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_rtabmap_ros__MapCloudDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_rtabmap_ros__MapCloudDisplay_t qt_meta_stringdata_rtabmap_ros__MapCloudDisplay = {
    {
QT_MOC_LITERAL(0, 0, 28), // "rtabmap_ros::MapCloudDisplay"
QT_MOC_LITERAL(1, 29, 16), // "causeRetransform"
QT_MOC_LITERAL(2, 46, 0), // ""
QT_MOC_LITERAL(3, 47, 11), // "updateStyle"
QT_MOC_LITERAL(4, 59, 19), // "updateBillboardSize"
QT_MOC_LITERAL(5, 79, 11), // "updateAlpha"
QT_MOC_LITERAL(6, 91, 20), // "updateXyzTransformer"
QT_MOC_LITERAL(7, 112, 22), // "updateColorTransformer"
QT_MOC_LITERAL(8, 135, 24), // "setXyzTransformerOptions"
QT_MOC_LITERAL(9, 160, 13), // "EnumProperty*"
QT_MOC_LITERAL(10, 174, 4), // "prop"
QT_MOC_LITERAL(11, 179, 26), // "setColorTransformerOptions"
QT_MOC_LITERAL(12, 206, 21), // "updateCloudParameters"
QT_MOC_LITERAL(13, 228, 11), // "downloadMap"
QT_MOC_LITERAL(14, 240, 13) // "downloadGraph"

    },
    "rtabmap_ros::MapCloudDisplay\0"
    "causeRetransform\0\0updateStyle\0"
    "updateBillboardSize\0updateAlpha\0"
    "updateXyzTransformer\0updateColorTransformer\0"
    "setXyzTransformerOptions\0EnumProperty*\0"
    "prop\0setColorTransformerOptions\0"
    "updateCloudParameters\0downloadMap\0"
    "downloadGraph"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_rtabmap_ros__MapCloudDisplay[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   69,    2, 0x0a /* Public */,
       3,    0,   70,    2, 0x08 /* Private */,
       4,    0,   71,    2, 0x08 /* Private */,
       5,    0,   72,    2, 0x08 /* Private */,
       6,    0,   73,    2, 0x08 /* Private */,
       7,    0,   74,    2, 0x08 /* Private */,
       8,    1,   75,    2, 0x08 /* Private */,
      11,    1,   78,    2, 0x08 /* Private */,
      12,    0,   81,    2, 0x08 /* Private */,
      13,    0,   82,    2, 0x08 /* Private */,
      14,    0,   83,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 9,   10,
    QMetaType::Void, 0x80000000 | 9,   10,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void rtabmap_ros::MapCloudDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MapCloudDisplay *_t = static_cast<MapCloudDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->causeRetransform(); break;
        case 1: _t->updateStyle(); break;
        case 2: _t->updateBillboardSize(); break;
        case 3: _t->updateAlpha(); break;
        case 4: _t->updateXyzTransformer(); break;
        case 5: _t->updateColorTransformer(); break;
        case 6: _t->setXyzTransformerOptions((*reinterpret_cast< EnumProperty*(*)>(_a[1]))); break;
        case 7: _t->setColorTransformerOptions((*reinterpret_cast< EnumProperty*(*)>(_a[1]))); break;
        case 8: _t->updateCloudParameters(); break;
        case 9: _t->downloadMap(); break;
        case 10: _t->downloadGraph(); break;
        default: ;
        }
    }
}

const QMetaObject rtabmap_ros::MapCloudDisplay::staticMetaObject = {
    { &rviz::MessageFilterDisplay<rtabmap_ros::MapData>::staticMetaObject, qt_meta_stringdata_rtabmap_ros__MapCloudDisplay.data,
      qt_meta_data_rtabmap_ros__MapCloudDisplay,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *rtabmap_ros::MapCloudDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *rtabmap_ros::MapCloudDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_rtabmap_ros__MapCloudDisplay.stringdata0))
        return static_cast<void*>(this);
    return rviz::MessageFilterDisplay<rtabmap_ros::MapData>::qt_metacast(_clname);
}

int rtabmap_ros::MapCloudDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::MessageFilterDisplay<rtabmap_ros::MapData>::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 11)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 11;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
