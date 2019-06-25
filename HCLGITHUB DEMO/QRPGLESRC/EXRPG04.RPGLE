000001190102      *
000002190102      * Compile time array demo - Data is loaded when program is created
000003190625      * Code modified after initial download in GIT local workspace
000004190102      *
000005190102     FEXDSPF04  CF   E             workstn
000006190102      *
000007190102      *   montharray        ---->    Array name
000008190102      *   10                ---->    array element length
000009190102      *   dim               ---->    size of the array
000010190102      *   ctdata()          ---->    Compile time array
000011190102      *   perrcd            ---->    Number of entries in one array record
000012190102      *
000100190102     dmontharray       S             10    dim(12) ctdata perrcd(1)
000101190102      *
000102190102     c     *IN03         DOWEQ     *OFF
000103190102     c                   EXFMT     DAYINP
000104190102      *
000105190102     c                   eval      errmsg=*blanks
000106190102     c                   eval      #month=*blanks
000107190102      *
000108190102     c                   select
000109190102      *
000110190102     c                   when      #day = 00
000111190102     c                   eval      errmsg='Blanks or zeros not allowed'
000112190102      *
000113190102     c                   when      #DAY >=1  AND  #DAY <= 12
000200190102     c                   eval      #MONTH=montharray(#DAY)
000201190102      *
000202190102     c                   OTHER
000204190102     c                   eval      errmsg='Enter valid month number'
000301190102      *
000302190102     c                   endsl
000303190102     c                   enddo
000304190102      *
000400190102     c                   seton                                            lr
000500190102**      CTDATA montharray
000600190102January
000700190102Februay
000800190102March
000900190102April
001000190102May
001100190102June
001200190102July
001300190102August
001400190102September
001500190102October
001600190102November
001700190102December
