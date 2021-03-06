/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTWINEXTRAS_H
#define QT5XHB_MACROS_QTWINEXTRAS_H

#define ISQTWIN(n)                                          _qt5xhb_isObjectDerivedFrom(n,"QtWin")
#define ISQWINCOLORIZATIONCHANGEEVENT(n)                    _qt5xhb_isObjectDerivedFrom(n,"QWinColorizationChangeEvent")
#define ISQWINCOMPOSITIONCHANGEEVENT(n)                     _qt5xhb_isObjectDerivedFrom(n,"QWinCompositionChangeEvent")
#define ISQWINEVENT(n)                                      _qt5xhb_isObjectDerivedFrom(n,"QWinEvent")
#define ISQWINJUMPLIST(n)                                   _qt5xhb_isObjectDerivedFrom(n,"QWinJumpList")
#define ISQWINJUMPLISTCATEGORY(n)                           _qt5xhb_isObjectDerivedFrom(n,"QWinJumpListCategory")
#define ISQWINJUMPLISTITEM(n)                               _qt5xhb_isObjectDerivedFrom(n,"QWinJumpListItem")
#define ISQWINTASKBARBUTTON(n)                              _qt5xhb_isObjectDerivedFrom(n,"QWinTaskbarButton")
#define ISQWINTASKBARPROGRESS(n)                            _qt5xhb_isObjectDerivedFrom(n,"QWinTaskbarProgress")
#define ISQWINTHUMBNAILTOOLBAR(n)                           _qt5xhb_isObjectDerivedFrom(n,"QWinThumbnailToolBar")
#define ISQWINTHUMBNAILTOOLBUTTON(n)                        _qt5xhb_isObjectDerivedFrom(n,"QWinThumbnailToolButton")

#define PQTWIN(n)                                           (QtWin *) _qt5xhb_itemGetPtr(n)
#define PQWINCOLORIZATIONCHANGEEVENT(n)                     (QWinColorizationChangeEvent *) _qt5xhb_itemGetPtr(n)
#define PQWINCOMPOSITIONCHANGEEVENT(n)                      (QWinCompositionChangeEvent *) _qt5xhb_itemGetPtr(n)
#define PQWINEVENT(n)                                       (QWinEvent *) _qt5xhb_itemGetPtr(n)
#define PQWINJUMPLIST(n)                                    (QWinJumpList *) _qt5xhb_itemGetPtr(n)
#define PQWINJUMPLISTCATEGORY(n)                            (QWinJumpListCategory *) _qt5xhb_itemGetPtr(n)
#define PQWINJUMPLISTITEM(n)                                (QWinJumpListItem *) _qt5xhb_itemGetPtr(n)
#define PQWINTASKBARBUTTON(n)                               (QWinTaskbarButton *) _qt5xhb_itemGetPtr(n)
#define PQWINTASKBARPROGRESS(n)                             (QWinTaskbarProgress *) _qt5xhb_itemGetPtr(n)
#define PQWINTHUMBNAILTOOLBAR(n)                            (QWinThumbnailToolBar *) _qt5xhb_itemGetPtr(n)
#define PQWINTHUMBNAILTOOLBUTTON(n)                         (QWinThumbnailToolButton *) _qt5xhb_itemGetPtr(n)

#define OPQTWIN(n,v)                                        ISNIL(n)? v : (QtWin *) _qt5xhb_itemGetPtr(n)
#define OPQWINCOLORIZATIONCHANGEEVENT(n,v)                  ISNIL(n)? v : (QWinColorizationChangeEvent *) _qt5xhb_itemGetPtr(n)
#define OPQWINCOMPOSITIONCHANGEEVENT(n,v)                   ISNIL(n)? v : (QWinCompositionChangeEvent *) _qt5xhb_itemGetPtr(n)
#define OPQWINEVENT(n,v)                                    ISNIL(n)? v : (QWinEvent *) _qt5xhb_itemGetPtr(n)
#define OPQWINJUMPLIST(n,v)                                 ISNIL(n)? v : (QWinJumpList *) _qt5xhb_itemGetPtr(n)
#define OPQWINJUMPLISTCATEGORY(n,v)                         ISNIL(n)? v : (QWinJumpListCategory *) _qt5xhb_itemGetPtr(n)
#define OPQWINJUMPLISTITEM(n,v)                             ISNIL(n)? v : (QWinJumpListItem *) _qt5xhb_itemGetPtr(n)
#define OPQWINTASKBARBUTTON(n,v)                            ISNIL(n)? v : (QWinTaskbarButton *) _qt5xhb_itemGetPtr(n)
#define OPQWINTASKBARPROGRESS(n,v)                          ISNIL(n)? v : (QWinTaskbarProgress *) _qt5xhb_itemGetPtr(n)
#define OPQWINTHUMBNAILTOOLBAR(n,v)                         ISNIL(n)? v : (QWinThumbnailToolBar *) _qt5xhb_itemGetPtr(n)
#define OPQWINTHUMBNAILTOOLBUTTON(n,v)                      ISNIL(n)? v : (QWinThumbnailToolButton *) _qt5xhb_itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTWINEXTRAS_H */
