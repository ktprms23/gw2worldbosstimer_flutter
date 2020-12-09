
class TimeZoneTranslate {

  static int getTimeZoneOffset() {

    final t = 8;
    final defaultTimezone = DateTime.now().timeZoneOffset;

    //TimeZone tz1 = TimeZone.getDefault();
    return 8 - defaultTimezone.inHours;

  } // end method getTimeZoneOffset

  static int getTimeToOffset8( int t ) {

    final o = getTimeZoneOffset();
    int nT = t + o;
    if( nT >= 24 ) {
      nT -= 24;
    } else if( nT < 0 ) {
      nT += 24;
    } // end if

    return nT;

  } // end method getTimeToOffset8

  static int getTimeFromOffset8( int t ) {

    final o = getTimeZoneOffset();
    int nT = t - o;
    if( nT >= 24 ) {
      nT -= 24;
    } else if( nT < 0 ) {
      nT += 24;
    } // end if

    return nT;

  } // end method getTimeFromOffset8

} // end class TimeZoneTranslate