$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATETIME
#endif

CLASS QPlaceReview INHERIT QPlaceContent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD dateTime
   METHOD setDateTime
   METHOD text
   METHOD setText
   METHOD language
   METHOD setLanguage
   METHOD rating
   METHOD setRating
   METHOD reviewId
   METHOD setReviewId
   METHOD title
   METHOD setTitle

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QDateTime>

/*
QPlaceReview()
*/
HB_FUNC_STATIC( QPLACEREVIEW_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReview * o = new QPlaceReview ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


$deleteMethod=5,4,0

/*
QDateTime dateTime() const
*/
HB_FUNC_STATIC( QPLACEREVIEW_DATETIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReview * obj = (QPlaceReview *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->dateTime () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
#endif
}

/*
void setDateTime(const QDateTime &dt)
*/
HB_FUNC_STATIC( QPLACEREVIEW_SETDATETIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReview * obj = (QPlaceReview *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDateTime ( *PQDATETIME(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString text() const
*/
HB_FUNC_STATIC( QPLACEREVIEW_TEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReview * obj = (QPlaceReview *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->text () );
  }
#endif
}

/*
void setText(const QString &text)
*/
HB_FUNC_STATIC( QPLACEREVIEW_SETTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReview * obj = (QPlaceReview *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString language() const
*/
HB_FUNC_STATIC( QPLACEREVIEW_LANGUAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReview * obj = (QPlaceReview *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->language () );
  }
#endif
}

/*
void setLanguage(const QString &data)
*/
HB_FUNC_STATIC( QPLACEREVIEW_SETLANGUAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReview * obj = (QPlaceReview *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLanguage ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qreal rating() const
*/
HB_FUNC_STATIC( QPLACEREVIEW_RATING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReview * obj = (QPlaceReview *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->rating () );
  }
#endif
}

/*
void setRating(qreal data)
*/
HB_FUNC_STATIC( QPLACEREVIEW_SETRATING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReview * obj = (QPlaceReview *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRating ( (qreal) hb_parnd(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString reviewId() const
*/
HB_FUNC_STATIC( QPLACEREVIEW_REVIEWID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReview * obj = (QPlaceReview *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->reviewId () );
  }
#endif
}

/*
void setReviewId(const QString &identifier)
*/
HB_FUNC_STATIC( QPLACEREVIEW_SETREVIEWID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReview * obj = (QPlaceReview *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setReviewId ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString title() const
*/
HB_FUNC_STATIC( QPLACEREVIEW_TITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReview * obj = (QPlaceReview *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->title () );
  }
#endif
}

/*
void setTitle(const QString &data)
*/
HB_FUNC_STATIC( QPLACEREVIEW_SETTITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceReview * obj = (QPlaceReview *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTitle ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
