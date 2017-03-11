/*

  Qt5xHb Project - Test Program

  Copyright (C) 2012-2017 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com
  marcosgambeta AT gmail DOT com

  Website:
  https://github.com/marcosgambeta/Qt5xHb

  Users Groups:
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb    [ENGLISH]
  https://groups.google.com/forum/?hl=pt-BR#!forum/qtxhb-br [PORTUGUESE]

*/

#include "qt5xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main ()

   lOCAL oApp
   LOCAL oWindow
   LOCAL oTimer1
   LOCAL oTimer2

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oWindow:setWindowTitle("Teste")

   oWindow:resize(640,480)

   oWindow:show()

   oTimer1 := QTimer():new(oWindow)
   ? oTimer1:onTimeout({||qout("timer 1 executado")})
   oTimer1:setInterval(1000)
   oTimer1:start()

   oTimer2 := QTimer():new(oWindow)
   ? oTimer2:onTimeout({||qout("timer 2 executado")})
   oTimer2:setInterval(2000)
   oTimer2:start()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN
