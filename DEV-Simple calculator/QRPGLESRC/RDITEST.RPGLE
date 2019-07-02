000100181220     FEXDSPF01  CF   E             workstn
000101190627      * RDI Conectivity Testing for GIT    Demo
000102190702      * Source modified in RDI and newly added to Git - Calculator WS
000103181220     dreturnpt         s              6a   INZ(*BLANKS)
000104181220     dPSDS            SDS
000105181220     dErr_msg            *STATUS
000200181220     c     *in03         DOwEQ     *off
000300181220      *
000400181220     C                   EXFMT     EXNUM01
000500181220      *
000501181220     c                   eval      ERRMSG=*BLANKS
000600181220     C                   select
000700181220     c     opr           wheneq    '+'
000800181220     c                   eval      result=num1+num2
000900181220     c     opr           wheneq    '-'
001000181220     c                   eval      result=num1-num2
001100181220     c     opr           wheneq    '*'
001200181220     c                   eval      result=num1*num2
001300181220     c     opr           wheneq    '/'
001400181220     c                   eval      result=num1/num2
001500181220     c                   endsl
001600181220     c                   enddo
001601181220     C                   SETON                                            LR
001700181220      *
001701181220     c     *PSSR         BEGSR
001702181220      *
001703181220     c                   IF        Err_msg=00102
001704181220     C                   eval      returnpt ='*GETIN'
001705181220     c                   eval      ERRMSG='Division by zero not allowed'
001706181220     c                   endif
001707181220     c                   endsr     returnpt
001708181220      *
