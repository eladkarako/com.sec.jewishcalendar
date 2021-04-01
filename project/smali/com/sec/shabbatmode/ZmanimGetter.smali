.class public Lcom/sec/shabbatmode/ZmanimGetter;
.super Ljava/lang/Object;
.source "ZmanimGetter.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/shabbatmode/ZmanimGetter$Populater;
    }
.end annotation


# static fields
.field public static final DATE:Ljava/lang/String; = "date"

.field private static final FIVE_MINUTES:J = 0x493e0L

.field private static final KEY_EXTRA_FORMATTED:Ljava/lang/String; = "formatted_address"

.field private static final KEY_LOCATION_ALTITUDE:Ljava/lang/String; = "location.altitude"

.field private static final KEY_LOCATION_LABEL:Ljava/lang/String; = "location.name"

.field private static final KEY_LOCATION_LATITUDE:Ljava/lang/String; = "location.latitude"

.field private static final KEY_LOCATION_LONGITUDE:Ljava/lang/String; = "location.longitude"

.field private static final KEY_LOCATION_PROVIDER:Ljava/lang/String; = "location.provider"

.field private static final KEY_LOCATION_TIME:Ljava/lang/String; = "location.time"

.field private static final KEY_LOCATION_ZONE:Ljava/lang/String; = "location.tz"

.field private static final MAX_NORTH:D = 83.4

.field public static final MAX_RESULTS:I = 0xa

.field private static final MAX_SOUTH:D = -68.0

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final ONE_KM:I = 0x3e8

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final ONE_SECOND:J = 0x3e8L

.field private static final PROVIDER_MANUAL:Ljava/lang/String; = "Manual"

.field private static final PROVIDER_TIMEZONE:Ljava/lang/String; = "timezone"

.field private static final SEPARATOR:Ljava/lang/String; = ", "

.field private static final TAG:Ljava/lang/String; = "Shabbat ZmanimActivity"

.field private static final TZ_DELTA:D = 7.5

.field private static final TZ_HOUR:D = 15.0

.field private static mGetSubLocality:Ljava/lang/reflect/Method;

.field private static mLatitudes:[D

.field private static mLocation:Landroid/location/Location;

.field private static mLongitudes:[D

.field private static mZones:[Ljava/lang/String;

.field private static mZonesLocal:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoordinatesString:Ljava/lang/String;

.field private mFridayDate:Ljava/util/Calendar;

.field private mLoc:Ljava/lang/String;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationSearch:Z

.field private mPopulater:Lcom/sec/shabbatmode/ZmanimGetter$Populater;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mShabbatDate:Ljava/util/Calendar;

.field private mShabbatEndTime:Ljava/lang/String;

.field private mShabbatEndTimeInMillis:J

.field private mShabbatEntranceGregorianDate:Ljava/lang/String;

.field private mShabbatEntranceGregorianJustDate:Ljava/lang/String;

.field private mShabbatEntranceHebrewDate:Ljava/lang/String;

.field private mShabbatEntranceHebrewJustDate:Ljava/lang/String;

.field private mShabbatEntranceTime:Ljava/lang/String;

.field private mShabbatEntranceTimeInMillis:J

.field private mShabbatExitGregorianDate:Ljava/lang/String;

.field private mShabbatExitGregorianJustDate:Ljava/lang/String;

.field private mShabbatExitHebrewDate:Ljava/lang/String;

.field private mShabbatExitHebrewJustDate:Ljava/lang/String;

.field private final mSharedPreferenceName:Ljava/lang/String;

.field private mTimeZone:Ljava/util/TimeZone;

.field private m_bCurrentlySaturdayEvening:Z

.field private m_bIsInForeground:Z

.field private m_bIsInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->m_bCurrentlySaturdayEvening:Z

    .line 144
    const-string v0, "sharedPref"

    iput-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mSharedPreferenceName:Ljava/lang/String;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->m_bIsInitialized:Z

    .line 191
    return-void
.end method

.method static synthetic access$0(Lcom/sec/shabbatmode/ZmanimGetter;Landroid/location/Location;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Lcom/sec/shabbatmode/ZmanimGetter;->fetchLocation(Landroid/location/Location;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1(Lcom/sec/shabbatmode/ZmanimGetter;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 1057
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/ZmanimGetter;->updateVars(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$2(Lcom/sec/shabbatmode/ZmanimGetter;)V
    .locals 0

    .prologue
    .line 1048
    invoke-direct {p0}, Lcom/sec/shabbatmode/ZmanimGetter;->cancelProgressDialogIfVisible()V

    return-void
.end method

.method private calculateNextWeekTimes()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x5265c00

    const/4 v5, 0x7

    .line 960
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mFridayDate:Ljava/util/Calendar;

    .line 961
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatDate:Ljava/util/Calendar;

    .line 963
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 964
    .local v0, "currentDate":Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 965
    .local v1, "dayOfWeek":I
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 967
    .local v2, "currentDayInMillis":J
    if-ne v1, v5, :cond_0

    .line 969
    iget-object v4, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mFridayDate:Ljava/util/Calendar;

    const-wide/32 v6, 0x1ee62800

    add-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 970
    iget-object v4, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatDate:Ljava/util/Calendar;

    const-wide/32 v6, 0x240c8400

    add-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 982
    :goto_0
    return-void

    .line 979
    :cond_0
    iget-object v4, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mFridayDate:Ljava/util/Calendar;

    rsub-int/lit8 v5, v1, 0x6

    int-to-long v6, v5

    mul-long/2addr v6, v8

    add-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 980
    iget-object v4, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatDate:Ljava/util/Calendar;

    rsub-int/lit8 v5, v1, 0x7

    int-to-long v6, v5

    mul-long/2addr v6, v8

    add-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private calculateTimesFromLocAndCal(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/ZmanimCalendar;)V
    .locals 12
    .param p1, "gloc"    # Lnet/sourceforge/zmanim/util/GeoLocation;
    .param p2, "cal"    # Lnet/sourceforge/zmanim/ZmanimCalendar;

    .prologue
    .line 893
    const-string v7, "Shabbat alarm3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "in calculateTimesFromLocAndCal mFridayDate is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mFridayDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mFridayDate:Ljava/util/Calendar;

    invoke-virtual {p2, v7}, Lnet/sourceforge/zmanim/ZmanimCalendar;->setCalendar(Ljava/util/Calendar;)V

    .line 897
    new-instance v1, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;

    iget-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mFridayDate:Ljava/util/Calendar;

    invoke-direct {v1, v7}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;-><init>(Ljava/util/Calendar;)V

    .line 898
    .local v1, "FridayJewishDate":Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;
    new-instance v4, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;

    invoke-direct {v4}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;-><init>()V

    .line 899
    .local v4, "formatter":Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;
    invoke-static {}, Lcom/samsung/android/text/Semitic;->isLocaleRTL()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 900
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->setHebrewFormat(Z)V

    .line 903
    :cond_0
    invoke-virtual {v4, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->format(Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, "FridayDateHebrew":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceHebrewDate:Ljava/lang/String;

    .line 905
    invoke-static {}, Lcom/samsung/android/text/Semitic;->isLocaleRTL()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 906
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishDayOfMonth()I

    move-result v8

    invoke-virtual {v4, v8}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 907
    invoke-virtual {v4, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatMonth(Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 906
    iput-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceHebrewJustDate:Ljava/lang/String;

    .line 912
    :goto_0
    const-string v7, "Shabbat alarm2"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Hebrew Shabbat date is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceHebrewDate:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-virtual {p2}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getCandleLighting()Ljava/util/Date;

    move-result-object v5

    .line 916
    .local v5, "sunSetDate":Ljava/util/Date;
    iget-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getTimeFromDateUserFormat(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceTime:Ljava/lang/String;

    .line 918
    const-string v7, "Shabbat alarm3"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "in calculateTimesFromLocAndCal mShabbatEntranceTime is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceTime:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceTimeInMillis:J

    .line 922
    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getStringDateFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceGregorianDate:Ljava/lang/String;

    .line 923
    invoke-static {v5}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getOnlyDateStringDateFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceGregorianJustDate:Ljava/lang/String;

    .line 926
    iget-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatDate:Ljava/util/Calendar;

    invoke-virtual {p2, v7}, Lnet/sourceforge/zmanim/ZmanimCalendar;->setCalendar(Ljava/util/Calendar;)V

    .line 929
    new-instance v2, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;

    iget-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatDate:Ljava/util/Calendar;

    invoke-direct {v2, v7}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;-><init>(Ljava/util/Calendar;)V

    .line 930
    .local v2, "SaturdayJewishDate":Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;
    invoke-virtual {v4, v2}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->format(Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;

    move-result-object v3

    .line 931
    .local v3, "ShabbatDateHebrew":Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatExitHebrewDate:Ljava/lang/String;

    .line 932
    invoke-static {}, Lcom/samsung/android/text/Semitic;->isLocaleRTL()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 933
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishDayOfMonth()I

    move-result v8

    invoke-virtual {v4, v8}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 934
    invoke-virtual {v4, v2}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatMonth(Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 933
    iput-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatExitHebrewJustDate:Ljava/lang/String;

    .line 939
    :goto_1
    invoke-virtual {p2}, Lnet/sourceforge/zmanim/ZmanimCalendar;->getTzais()Ljava/util/Date;

    move-result-object v6

    .line 940
    .local v6, "threeStarsDate":Ljava/util/Date;
    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getStringDateFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatExitGregorianDate:Ljava/lang/String;

    .line 941
    iget-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getTimeFromDateUserFormat(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEndTime:Ljava/lang/String;

    .line 942
    invoke-static {v6}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getOnlyDateStringDateFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatExitGregorianJustDate:Ljava/lang/String;

    .line 943
    const-string v7, "Shabbat alarm2"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/////////mShabbatExitGregorianJustDate "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatExitGregorianJustDate:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string v7, "Shabbat alarm2"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "in populate: shabbat end time is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEndTime:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEndTimeInMillis:J

    .line 948
    const-string v7, "Shabbat ZmanimActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "****************************\ncalculateTimesFromLocAndCal:  Friday: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 949
    iget-wide v10, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceTimeInMillis:J

    invoke-static {v10, v11}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getFullDateStringFromMilliSeconds(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 950
    const-string v9, " Saturday: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEndTimeInMillis:J

    invoke-static {v10, v11}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->getFullDateStringFromMilliSeconds(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 951
    const-string v9, "\n********************************************"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 948
    invoke-static {v7, v8}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    return-void

    .line 909
    .end local v2    # "SaturdayJewishDate":Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;
    .end local v3    # "ShabbatDateHebrew":Ljava/lang/CharSequence;
    .end local v5    # "sunSetDate":Ljava/util/Date;
    .end local v6    # "threeStarsDate":Ljava/util/Date;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishDayOfMonth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v1}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatMonth(Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceHebrewJustDate:Ljava/lang/String;

    goto/16 :goto_0

    .line 936
    .restart local v2    # "SaturdayJewishDate":Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;
    .restart local v3    # "ShabbatDateHebrew":Ljava/lang/CharSequence;
    .restart local v5    # "sunSetDate":Ljava/util/Date;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;->getJewishDayOfMonth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v2}, Lnet/sourceforge/zmanim/hebrewcalendar/HebrewDateFormatter;->formatMonth(Lnet/sourceforge/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatExitHebrewJustDate:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private cancelProgressDialogIfVisible()V
    .locals 2

    .prologue
    .line 1050
    const-string v0, "Shabbat ZmanimActivity"

    const-string v1, "cancelProgressDialogIfVisible"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1055
    :cond_0
    return-void
.end method

.method private fetchLocation(Landroid/location/Location;Ljava/lang/Boolean;)V
    .locals 20
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "forceSearch"    # Ljava/lang/Boolean;

    .prologue
    .line 321
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    .line 322
    .local v15, "locale":Ljava/util/Locale;
    const/4 v9, 0x0

    .line 323
    .local v9, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v13, p1

    .line 324
    .local v13, "loc":Landroid/location/Location;
    invoke-direct/range {p0 .. p0}, Lcom/sec/shabbatmode/ZmanimGetter;->fetchLocationSaved()Landroid/location/Location;

    move-result-object v14

    .line 326
    .local v14, "locSaved":Landroid/location/Location;
    sget-object v8, Lcom/sec/shabbatmode/ZmanimGetter;->mLocation:Landroid/location/Location;

    if-nez v8, :cond_1

    const/4 v11, 0x1

    .line 330
    .local v11, "findAddress":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getIsInManualLocationMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 331
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getManualLocationIndex(Landroid/content/Context;)I

    move-result v8

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v8, v0, :cond_2

    .line 332
    const/4 v11, 0x0

    .line 333
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getManualLocationIndex(Landroid/content/Context;)I

    move-result v12

    .line 334
    .local v12, "index":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v16, 0x7f06000a

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 335
    .local v4, "latitude":D
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v16, 0x7f06000b

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 336
    .local v6, "longitude":D
    new-instance v13, Landroid/location/Location;

    .end local v13    # "loc":Landroid/location/Location;
    const-string v8, "Manual"

    invoke-direct {v13, v8}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 337
    .restart local v13    # "loc":Landroid/location/Location;
    invoke-virtual {v13, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 338
    invoke-virtual {v13, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 339
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f060009

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    aget-object v16, v16, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a00b7

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 339
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lcom/sec/shabbatmode/ZmanimGetter;->setLocationName(Landroid/location/Location;Ljava/lang/String;)V

    .line 412
    .end local v4    # "latitude":D
    .end local v6    # "longitude":D
    .end local v12    # "index":I
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/shabbatmode/ZmanimGetter;->persistAddressToPreferences(Landroid/location/Location;)V

    .line 413
    sput-object v13, Lcom/sec/shabbatmode/ZmanimGetter;->mLocation:Landroid/location/Location;

    .line 414
    return-void

    .line 326
    .end local v11    # "findAddress":Z
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 343
    .restart local v11    # "findAddress":Z
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocationSearch:Z

    if-nez v8, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 346
    :cond_3
    if-nez v13, :cond_4

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/sec/shabbatmode/ZmanimGetter;->fetchLocationGps()Landroid/location/Location;

    move-result-object v13

    .line 350
    :cond_4
    if-nez v13, :cond_5

    .line 351
    invoke-direct/range {p0 .. p0}, Lcom/sec/shabbatmode/ZmanimGetter;->fetchLocationNetwork()Landroid/location/Location;

    move-result-object v13

    .line 356
    :cond_5
    if-nez v13, :cond_6

    .line 357
    move-object v13, v14

    .line 361
    :cond_6
    if-eqz v13, :cond_7

    .line 362
    const-string v8, "timezone"

    invoke-virtual {v13}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 363
    const/4 v13, 0x0

    .line 368
    :cond_7
    if-nez v13, :cond_8

    .line 369
    invoke-direct/range {p0 .. p0}, Lcom/sec/shabbatmode/ZmanimGetter;->fetchLocationZone()Landroid/location/Location;

    move-result-object v13

    .line 370
    invoke-virtual {v13}, Landroid/location/Location;->hasAltitude()Z

    move-result v11

    .line 375
    :cond_8
    if-eqz v13, :cond_9

    if-eqz v14, :cond_9

    .line 376
    invoke-virtual {v13}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    cmpl-double v8, v16, v18

    if-nez v8, :cond_9

    .line 377
    invoke-virtual {v13}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    invoke-virtual {v14}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    cmpl-double v8, v16, v18

    if-nez v8, :cond_9

    .line 378
    move-object v13, v14

    .line 379
    const/4 v11, 0x0

    .line 383
    :cond_9
    if-eqz v11, :cond_0

    .line 384
    invoke-virtual {v13}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 385
    .restart local v4    # "latitude":D
    invoke-virtual {v13}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 387
    .restart local v6    # "longitude":D
    if-eqz v9, :cond_a

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 388
    :cond_a
    new-instance v3, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8, v15}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 391
    .local v3, "geocoder":Landroid/location/Geocoder;
    const/16 v8, 0xa

    .line 390
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 396
    .end local v3    # "geocoder":Landroid/location/Geocoder;
    :cond_b
    :goto_2
    if-eqz v9, :cond_c

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 397
    :cond_c
    new-instance v3, Lcom/sec/jewishcalendar/location/GoogleGeocoder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8, v15}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 400
    .local v3, "geocoder":Lcom/sec/jewishcalendar/location/GoogleGeocoder;
    const/16 v8, 0xa

    .line 399
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 405
    .end local v3    # "geocoder":Lcom/sec/jewishcalendar/location/GoogleGeocoder;
    :cond_d
    :goto_3
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 406
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/shabbatmode/ZmanimGetter;->findBestAddress(Ljava/util/List;)Landroid/location/Address;

    move-result-object v2

    .line 407
    .local v2, "addr":Landroid/location/Address;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/shabbatmode/ZmanimGetter;->formatAddress(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lcom/sec/shabbatmode/ZmanimGetter;->setLocationName(Landroid/location/Location;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 392
    .end local v2    # "addr":Landroid/location/Address;
    .local v3, "geocoder":Landroid/location/Geocoder;
    :catch_0
    move-exception v10

    .line 393
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 401
    .end local v10    # "e":Ljava/io/IOException;
    .local v3, "geocoder":Lcom/sec/jewishcalendar/location/GoogleGeocoder;
    :catch_1
    move-exception v10

    .line 402
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private fetchLocationGps()Landroid/location/Location;
    .locals 4

    .prologue
    .line 423
    iget-object v1, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 424
    const/4 v0, 0x0

    .line 428
    :goto_0
    return-object v0

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocationManager:Landroid/location/LocationManager;

    .line 426
    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 427
    .local v0, "loc":Landroid/location/Location;
    const-string v1, "Shabbat ZmanimActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetchLocationGps "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fetchLocationNetwork()Landroid/location/Location;
    .locals 4

    .prologue
    .line 438
    iget-object v1, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 439
    const/4 v0, 0x0

    .line 443
    :goto_0
    return-object v0

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocationManager:Landroid/location/LocationManager;

    .line 441
    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 442
    .local v0, "loc":Landroid/location/Location;
    const-string v1, "Shabbat ZmanimActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetchLocationNetwork "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fetchLocationSaved()Landroid/location/Location;
    .locals 5

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/sec/shabbatmode/ZmanimGetter;->parseAddressFromPreferences()Landroid/location/Location;

    move-result-object v0

    .line 453
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_1

    const-string v2, "timezone"

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 456
    .local v1, "tz":Ljava/util/TimeZone;
    iget-object v2, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 457
    :cond_0
    const/4 v0, 0x0

    .line 460
    .end local v1    # "tz":Ljava/util/TimeZone;
    :cond_1
    const-string v2, "Shabbat ZmanimActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fetchLocationSaved "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    return-object v0
.end method

.method private fetchLocationZone()Landroid/location/Location;
    .locals 28

    .prologue
    .line 470
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v22

    .line 471
    .local v22, "tz":Ljava/util/TimeZone;
    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v23

    .line 472
    .local v23, "tzId":Ljava/lang/String;
    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    int-to-double v10, v5

    mul-double/2addr v6, v10

    const-wide v10, 0x414b774000000000L    # 3600000.0

    div-double v18, v6, v10

    .line 474
    .local v18, "lng":D
    new-instance v17, Landroid/location/Location;

    const-string v5, "timezone"

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 475
    .local v17, "loc":Landroid/location/Location;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v10, 0x493e0

    sub-long/2addr v6, v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setTime(J)V

    .line 476
    invoke-virtual/range {v17 .. v19}, Landroid/location/Location;->setLongitude(D)V

    .line 479
    sget-object v5, Lcom/sec/shabbatmode/ZmanimGetter;->mZones:[Ljava/lang/String;

    if-nez v5, :cond_0

    .line 480
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sec/shabbatmode/ZmanimGetter;->mZones:[Ljava/lang/String;

    .line 481
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sec/shabbatmode/ZmanimGetter;->mZonesLocal:[Ljava/lang/String;

    .line 483
    :cond_0
    sget-object v5, Lcom/sec/shabbatmode/ZmanimGetter;->mZones:[Ljava/lang/String;

    array-length v0, v5

    move/from16 v27, v0

    .line 484
    .local v27, "zonesSize":I
    sget-object v5, Lcom/sec/shabbatmode/ZmanimGetter;->mLatitudes:[D

    if-nez v5, :cond_1

    .line 485
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 486
    const v6, 0x7f06000e

    .line 485
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    .line 487
    .local v24, "x_coordinate":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 488
    const v6, 0x7f06000f

    .line 487
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    .line 489
    .local v25, "y_coordinate":[Ljava/lang/String;
    move/from16 v0, v27

    new-array v5, v0, [D

    sput-object v5, Lcom/sec/shabbatmode/ZmanimGetter;->mLatitudes:[D

    .line 490
    move/from16 v0, v27

    new-array v5, v0, [D

    sput-object v5, Lcom/sec/shabbatmode/ZmanimGetter;->mLongitudes:[D

    .line 491
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v27

    if-lt v0, v1, :cond_7

    .line 496
    .end local v16    # "i":I
    .end local v24    # "x_coordinate":[Ljava/lang/String;
    .end local v25    # "y_coordinate":[Ljava/lang/String;
    :cond_1
    const/16 v26, -0x1

    .line 497
    .local v26, "zoneIndex":I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v27

    if-lt v0, v1, :cond_8

    .line 507
    :goto_2
    sget-object v5, Lcom/sec/shabbatmode/ZmanimGetter;->mZonesLocal:[Ljava/lang/String;

    aget-object v5, v5, v26

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 509
    .local v21, "parts":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 510
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    .line 511
    .local v20, "locale":Ljava/util/Locale;
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget-object v6, v21, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v21, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, "locationName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/sec/shabbatmode/ZmanimGetter;->setLocationName(Landroid/location/Location;Ljava/lang/String;)V

    .line 515
    const/4 v5, -0x1

    move/from16 v0, v26

    if-ne v0, v5, :cond_6

    .line 516
    const-wide/high16 v6, 0x401e000000000000L    # 7.5

    sub-double v8, v18, v6

    .line 517
    .local v8, "lngEast":D
    const-wide/high16 v6, 0x401e000000000000L    # 7.5

    add-double v12, v18, v6

    .line 518
    .local v12, "lngWest":D
    const/4 v14, 0x0

    .line 520
    .local v14, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v14, :cond_2

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 521
    :cond_2
    new-instance v3, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v3, v5, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 524
    .local v3, "geocoder":Landroid/location/Geocoder;
    const/16 v5, 0xa

    const-wide/high16 v6, -0x3faf000000000000L    # -68.0

    const-wide v10, 0x4054d9999999999aL    # 83.4

    .line 523
    :try_start_0
    invoke-virtual/range {v3 .. v13}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 530
    .end local v3    # "geocoder":Landroid/location/Geocoder;
    :cond_3
    :goto_3
    if-eqz v14, :cond_4

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 531
    :cond_4
    new-instance v3, Lcom/sec/jewishcalendar/location/GoogleGeocoder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v3, v5, v0}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 534
    .local v3, "geocoder":Lcom/sec/jewishcalendar/location/GoogleGeocoder;
    const/16 v5, 0xa

    const-wide/high16 v6, -0x3faf000000000000L    # -68.0

    const-wide v10, 0x4054d9999999999aL    # 83.4

    .line 533
    :try_start_1
    invoke-virtual/range {v3 .. v13}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 540
    .end local v3    # "geocoder":Lcom/sec/jewishcalendar/location/GoogleGeocoder;
    :cond_5
    :goto_4
    if-eqz v14, :cond_6

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 541
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sec/shabbatmode/ZmanimGetter;->findBestAddress(Ljava/util/List;)Landroid/location/Address;

    move-result-object v2

    .line 542
    .local v2, "addr":Landroid/location/Address;
    if-eqz v2, :cond_6

    .line 543
    invoke-virtual {v2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 544
    invoke-virtual {v2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 545
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/shabbatmode/ZmanimGetter;->formatAddress(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Lcom/sec/shabbatmode/ZmanimGetter;->setLocationName(Landroid/location/Location;Ljava/lang/String;)V

    .line 551
    .end local v2    # "addr":Landroid/location/Address;
    .end local v4    # "locationName":Ljava/lang/String;
    .end local v8    # "lngEast":D
    .end local v12    # "lngWest":D
    .end local v14    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v20    # "locale":Ljava/util/Locale;
    :cond_6
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/shabbatmode/ZmanimGetter;->mTimeZone:Ljava/util/TimeZone;

    .line 553
    const-string v5, "Shabbat ZmanimActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fetchLocationZone "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    return-object v17

    .line 492
    .end local v21    # "parts":[Ljava/lang/String;
    .end local v26    # "zoneIndex":I
    .restart local v24    # "x_coordinate":[Ljava/lang/String;
    .restart local v25    # "y_coordinate":[Ljava/lang/String;
    :cond_7
    sget-object v5, Lcom/sec/shabbatmode/ZmanimGetter;->mLatitudes:[D

    aget-object v6, v24, v16

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v5, v16

    .line 493
    sget-object v5, Lcom/sec/shabbatmode/ZmanimGetter;->mLongitudes:[D

    aget-object v6, v25, v16

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v5, v16

    .line 491
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 498
    .end local v24    # "x_coordinate":[Ljava/lang/String;
    .end local v25    # "y_coordinate":[Ljava/lang/String;
    .restart local v26    # "zoneIndex":I
    :cond_8
    sget-object v5, Lcom/sec/shabbatmode/ZmanimGetter;->mZones:[Ljava/lang/String;

    aget-object v5, v5, v16

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 499
    move/from16 v26, v16

    .line 500
    sget-object v5, Lcom/sec/shabbatmode/ZmanimGetter;->mLatitudes:[D

    aget-wide v6, v5, v16

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 501
    sget-object v5, Lcom/sec/shabbatmode/ZmanimGetter;->mLongitudes:[D

    aget-wide v6, v5, v16

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 502
    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setAltitude(D)V

    goto/16 :goto_2

    .line 497
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 526
    .local v3, "geocoder":Landroid/location/Geocoder;
    .restart local v4    # "locationName":Ljava/lang/String;
    .restart local v8    # "lngEast":D
    .restart local v12    # "lngWest":D
    .restart local v14    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .restart local v20    # "locale":Ljava/util/Locale;
    .restart local v21    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 527
    .local v15, "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 536
    .end local v15    # "e":Ljava/io/IOException;
    .local v3, "geocoder":Lcom/sec/jewishcalendar/location/GoogleGeocoder;
    :catch_1
    move-exception v15

    .line 537
    .restart local v15    # "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4
.end method

.method private findBestAddress(Ljava/util/List;)Landroid/location/Address;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Landroid/location/Address;"
        }
    .end annotation

    .prologue
    .line 789
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    :cond_0
    const/4 v0, 0x0

    .line 817
    :goto_0
    return-object v0

    .line 792
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 797
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    .line 802
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 807
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_a

    .line 812
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    .line 817
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    move-object v0, v1

    goto :goto_0

    .line 792
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 793
    .local v0, "a":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 797
    .end local v0    # "a":Landroid/location/Address;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 798
    .restart local v0    # "a":Landroid/location/Address;
    invoke-direct {p0, v0}, Lcom/sec/shabbatmode/ZmanimGetter;->getSubLocality(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 802
    .end local v0    # "a":Landroid/location/Address;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 803
    .restart local v0    # "a":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 807
    .end local v0    # "a":Landroid/location/Address;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 808
    .restart local v0    # "a":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 812
    .end local v0    # "a":Landroid/location/Address;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 813
    .restart local v0    # "a":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    goto :goto_0
.end method

.method private formatAddress(Landroid/location/Address;)Ljava/lang/String;
    .locals 14
    .param p1, "a"    # Landroid/location/Address;

    .prologue
    .line 566
    const-string v10, "Unnamed Rd"

    .line 567
    .local v10, "unnamed":Ljava/lang/String;
    const-string v11, "Unnamed Road"

    .line 569
    .local v11, "unnamedRoad":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Address;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 570
    .local v3, "extras":Landroid/os/Bundle;
    if-nez v3, :cond_2

    const/4 v5, 0x0

    .line 573
    .local v5, "formatted":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_3

    .line 574
    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 575
    :cond_0
    const-string v12, ","

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_1
    move-object v12, v5

    .line 630
    :goto_1
    return-object v12

    .line 571
    .end local v5    # "formatted":Ljava/lang/String;
    :cond_2
    const-string v12, "formatted_address"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 580
    .restart local v5    # "formatted":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 581
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v9

    .line 582
    .local v9, "thoroughfare":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v4

    .line 583
    .local v4, "feature":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/ZmanimGetter;->getSubLocality(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v8

    .line 584
    .local v8, "subloc":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v6

    .line 585
    .local v6, "locality":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v7

    .line 586
    .local v7, "subadmin":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "admin":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "country":Ljava/lang/String;
    if-eqz v9, :cond_5

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 590
    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 591
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_4

    .line 592
    const-string v12, ", "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    :cond_4
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 595
    :cond_5
    if-eqz v4, :cond_7

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 596
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_6

    .line 597
    const-string v12, ", "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    :cond_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    :cond_7
    if-eqz v8, :cond_9

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 601
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_8

    .line 602
    const-string v12, ", "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    :cond_8
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    :cond_9
    if-eqz v6, :cond_b

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 606
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 607
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 608
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_a

    .line 609
    const-string v12, ", "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    :cond_a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    :cond_b
    if-eqz v7, :cond_d

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 613
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 614
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_c

    .line 615
    const-string v12, ", "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    :cond_c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    :cond_d
    if-eqz v0, :cond_f

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 619
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 620
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 621
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_e

    .line 622
    const-string v12, ", "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    :cond_e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    :cond_f
    if-eqz v2, :cond_11

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 626
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_10

    .line 627
    const-string v12, ", "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    :cond_10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1
.end method

.method private formatAddress(Landroid/location/Location;)Ljava/lang/String;
    .locals 5
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 657
    const-string v2, "Shabbat ZmanimActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "formatAddress loc="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 659
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 661
    .local v1, "formatted":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 660
    .end local v1    # "formatted":Ljava/lang/String;
    :cond_0
    const-string v2, "formatted_address"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSubLocality(Landroid/location/Address;)Ljava/lang/String;
    .locals 4
    .param p1, "a"    # Landroid/location/Address;

    .prologue
    .line 1091
    sget-object v1, Lcom/sec/shabbatmode/ZmanimGetter;->mGetSubLocality:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/os/Build$VERSION;->SDK_INT()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 1093
    :try_start_0
    const-class v1, Landroid/location/Address;

    const-string v2, "getSubLocality"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sec/shabbatmode/ZmanimGetter;->mGetSubLocality:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1098
    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/shabbatmode/ZmanimGetter;->mGetSubLocality:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 1100
    :try_start_1
    sget-object v1, Lcom/sec/shabbatmode/ZmanimGetter;->mGetSubLocality:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1105
    :goto_1
    return-object v1

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1095
    :catch_1
    move-exception v1

    goto :goto_0

    .line 1094
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private initLocation(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "forceSearch"    # Ljava/lang/Boolean;

    .prologue
    const-wide/32 v2, 0xea60

    const/high16 v4, 0x447a0000    # 1000.0f

    .line 264
    const-string v0, "Shabbat ZmanimActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Starting Location Manager? - forceSearch is "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " autoSearch is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocationSearch:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocationSearch:Z

    if-eqz v0, :cond_2

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocationManager:Landroid/location/LocationManager;

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocationManager:Landroid/location/LocationManager;

    .line 271
    const-string v1, "gps"

    move-object v5, p0

    .line 270
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 272
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocationManager:Landroid/location/LocationManager;

    .line 273
    const-string v1, "network"

    move-object v5, p0

    .line 272
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mPopulater:Lcom/sec/shabbatmode/ZmanimGetter$Populater;

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mPopulater:Lcom/sec/shabbatmode/ZmanimGetter$Populater;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->cancel()V

    .line 280
    :cond_3
    const-string v0, "Shabbat alarm"

    const-string v1, "mProgressDialog.show"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->m_bIsInForeground:Z

    if-eqz v0, :cond_4

    .line 283
    const-string v0, "Shabbat alarm"

    const-string v1, "mProgressDialog.show"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 287
    :cond_4
    new-instance v0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;

    sget-object v1, Lcom/sec/shabbatmode/ZmanimGetter;->mLocation:Landroid/location/Location;

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/shabbatmode/ZmanimGetter$Populater;-><init>(Lcom/sec/shabbatmode/ZmanimGetter;Landroid/location/Location;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mPopulater:Lcom/sec/shabbatmode/ZmanimGetter$Populater;

    .line 288
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mPopulater:Lcom/sec/shabbatmode/ZmanimGetter$Populater;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->start()V

    .line 289
    return-void
.end method

.method private parseAddressFromPreferences()Landroid/location/Location;
    .locals 22

    .prologue
    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "sharedPref"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 754
    .local v11, "prefs":Landroid/content/SharedPreferences;
    const-string v18, "location.name"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 755
    .local v7, "label":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 756
    const/4 v10, 0x0

    .line 778
    :goto_0
    return-object v10

    .line 758
    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 759
    .local v6, "extras":Landroid/os/Bundle;
    const-string v18, "formatted_address"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v18, "location.latitude"

    const-string v19, "0"

    .line 760
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 763
    .local v8, "latitude":D
    const-string v18, "location.longitude"

    const-string v19, "0"

    .line 762
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 765
    .local v12, "longitude":D
    const-string v18, "location.altitude"

    const-string v19, "0"

    .line 764
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 766
    .local v4, "altitude":D
    const-string v18, "location.provider"

    .line 767
    const-string v19, "gps"

    .line 766
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 768
    .local v14, "provider":Ljava/lang/String;
    const-string v18, "location.tz"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 769
    .local v15, "tzId":Ljava/lang/String;
    if-nez v15, :cond_1

    const/16 v18, 0x0

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/shabbatmode/ZmanimGetter;->mTimeZone:Ljava/util/TimeZone;

    .line 770
    const-string v18, "location.time"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 772
    .local v16, "time":J
    new-instance v10, Landroid/location/Location;

    invoke-direct {v10, v14}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 773
    .local v10, "loc":Landroid/location/Location;
    invoke-virtual {v10, v6}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 774
    invoke-virtual {v10, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 775
    invoke-virtual {v10, v12, v13}, Landroid/location/Location;->setLongitude(D)V

    .line 776
    invoke-virtual {v10, v4, v5}, Landroid/location/Location;->setAltitude(D)V

    .line 777
    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Landroid/location/Location;->setTime(J)V

    goto/16 :goto_0

    .line 769
    .end local v10    # "loc":Landroid/location/Location;
    .end local v16    # "time":J
    :cond_1
    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    goto :goto_1
.end method

.method private persistAddressToPreferences(Landroid/location/Location;)V
    .locals 6
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 728
    const-string v2, "Shabbat ZmanimActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "persistAddressToPreferences loc="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    if-nez p1, :cond_0

    .line 746
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v2, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    const-string v3, "sharedPref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 733
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 734
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "location.name"

    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/ZmanimGetter;->formatAddress(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 735
    const-string v2, "location.latitude"

    .line 736
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    .line 735
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 737
    const-string v2, "location.longitude"

    .line 738
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    .line 737
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 739
    const-string v2, "location.altitude"

    .line 740
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    .line 739
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 741
    const-string v2, "location.provider"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 742
    const-string v3, "location.tz"

    iget-object v2, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mTimeZone:Ljava/util/TimeZone;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 744
    const-string v2, "location.time"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 745
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 743
    :cond_1
    iget-object v2, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private populateTimes(Ljava/lang/Boolean;)V
    .locals 20
    .param p1, "forceSearch"    # Ljava/lang/Boolean;

    .prologue
    .line 822
    const-string v10, "Shabbat alarm3"

    const-string v17, "in zmanimGetter::populateTimes"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v10, "Shabbat alarm"

    const-string v17, "entered populateTimes"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v10, "Shabbat ZmanimActivity"

    const-string v17, "populateTimes"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    sget-object v16, Lcom/sec/shabbatmode/ZmanimGetter;->mLocation:Landroid/location/Location;

    .line 828
    .local v16, "loc":Landroid/location/Location;
    if-nez v16, :cond_0

    .line 882
    :goto_0
    return-void

    .line 830
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/shabbatmode/ZmanimGetter;->formatAddress(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v3

    .line 831
    .local v3, "locationName":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 832
    .local v4, "latitude":D
    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 833
    .local v6, "longitude":D
    invoke-virtual/range {v16 .. v16}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    .line 835
    .local v8, "altitude":D
    new-instance v2, Lnet/sourceforge/zmanim/util/GeoLocation;

    .line 836
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    .line 835
    invoke-direct/range {v2 .. v10}, Lnet/sourceforge/zmanim/util/GeoLocation;-><init>(Ljava/lang/String;DDDLjava/util/TimeZone;)V

    .line 837
    .local v2, "gloc":Lnet/sourceforge/zmanim/util/GeoLocation;
    new-instance v11, Lnet/sourceforge/zmanim/ZmanimCalendar;

    invoke-direct {v11, v2}, Lnet/sourceforge/zmanim/ZmanimCalendar;-><init>(Lnet/sourceforge/zmanim/util/GeoLocation;)V

    .line 840
    .local v11, "cal":Lnet/sourceforge/zmanim/ZmanimCalendar;
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/shabbatmode/ZmanimGetter;->m_bCurrentlySaturdayEvening:Z

    if-eqz v10, :cond_1

    .line 842
    const-string v10, "Shabbat alarm3"

    const-string v17, "m_bCurrentlySaturayEvening is true going to call calculateNextWeekTimes()"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/sec/shabbatmode/ZmanimGetter;->calculateNextWeekTimes()V

    .line 844
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/shabbatmode/ZmanimGetter;->m_bCurrentlySaturdayEvening:Z

    .line 847
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/sec/shabbatmode/ZmanimGetter;->calculateTimesFromLocAndCal(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/ZmanimCalendar;)V

    .line 849
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 850
    .local v12, "currentDate":Ljava/util/Calendar;
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 851
    .local v14, "currentDateTimeInMillis":J
    const/4 v10, 0x7

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 853
    .local v13, "dayOfWeek":I
    const-string v10, "Shabbat alarm2"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "dayOfWeek = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 854
    const-string v18, " mDate is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mFridayDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 855
    const-string v18, " mDateInMillis = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mFridayDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 856
    const-string v18, " currentDateTimeInMillis = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 853
    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v10, "Shabbat alarm3"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "currentDateTimeInMillis = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 859
    const-string v18, "mShabbatEndTimeInMillis is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEndTimeInMillis:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "#########"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 858
    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const/4 v10, 0x7

    if-ne v13, v10, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEndTimeInMillis:J

    move-wide/from16 v18, v0

    cmp-long v10, v14, v18

    if-lez v10, :cond_2

    .line 866
    const-string v10, "Shabbat alarm2"

    const-string v17, "going to recalculate times"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const-string v10, "Shabbat alarm3"

    const-string v17, "motsash, going to recalculate !!!!!!!!!!!!!!!!!!!!!!!"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-direct/range {p0 .. p0}, Lcom/sec/shabbatmode/ZmanimGetter;->calculateNextWeekTimes()V

    .line 869
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/sec/shabbatmode/ZmanimGetter;->calculateTimesFromLocAndCal(Lnet/sourceforge/zmanim/util/GeoLocation;Lnet/sourceforge/zmanim/ZmanimCalendar;)V

    .line 877
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/shabbatmode/ZmanimGetter;->updateLocationInSharedPrefs()V

    .line 879
    const-string v10, "Shabbat alarm3"

    const-string v17, "updated sharedprefs"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-direct/range {p0 .. p0}, Lcom/sec/shabbatmode/ZmanimGetter;->sendBroadcastToDisplayVars()V

    goto/16 :goto_0

    .line 874
    :cond_2
    const-string v10, "Shabbat alarm3"

    const-string v17, "not motsash, shabbat, going to update shared prefs"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendBroadcastToDisplayVars()V
    .locals 3

    .prologue
    .line 994
    const-string v1, "Shabbat ZmanimActivity"

    const-string v2, "sendBroadcastToDisplayVars !!!!"

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 996
    .local v0, "local":Landroid/content/Intent;
    const-string v1, "location_and_times_updated"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 997
    iget-object v1, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1004
    iget-object v1, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUtilities;->sendCandlesNotificationBroadcast(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 1005
    return-void
.end method

.method private setAppropriateWeekendDays()V
    .locals 10

    .prologue
    const/4 v7, 0x7

    const-wide/32 v8, 0x5265c00

    .line 227
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mFridayDate:Ljava/util/Calendar;

    .line 228
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatDate:Ljava/util/Calendar;

    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 230
    .local v0, "currentDate":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 232
    .local v2, "currentDayInMillis":J
    const-string v4, "Shabbat alarm2"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mShabbatDate before change is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 238
    .local v1, "dayOfWeek":I
    if-ne v1, v7, :cond_0

    .line 240
    iget-object v4, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mFridayDate:Ljava/util/Calendar;

    sub-long v6, v2, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 252
    :goto_0
    const-string v4, "Shabbat alarm2"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mShabbatDate after change is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void

    .line 248
    :cond_0
    iget-object v4, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mFridayDate:Ljava/util/Calendar;

    rsub-int/lit8 v5, v1, 0x6

    int-to-long v6, v5

    mul-long/2addr v6, v8

    add-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 249
    iget-object v4, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatDate:Ljava/util/Calendar;

    rsub-int/lit8 v5, v1, 0x7

    int-to-long v6, v5

    mul-long/2addr v6, v8

    add-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setLocationName(Landroid/location/Location;Ljava/lang/String;)V
    .locals 2
    .param p1, "loc"    # Landroid/location/Location;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 642
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 643
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 644
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "extras":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 645
    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    const-string v1, "formatted_address"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {p1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 647
    return-void
.end method

.method private updateLocationInSharedPrefs()V
    .locals 20

    .prologue
    .line 986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mLoc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mCoordinatesString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceGregorianDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceGregorianJustDate:Ljava/lang/String;

    .line 987
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceHebrewDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceHebrewJustDate:Ljava/lang/String;

    .line 988
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatExitGregorianDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatExitGregorianJustDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatExitHebrewDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatExitHebrewJustDate:Ljava/lang/String;

    .line 989
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEndTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceTimeInMillis:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEndTimeInMillis:J

    move-wide/from16 v18, v0

    .line 986
    invoke-static/range {v3 .. v19}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->saveLocation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 990
    return-void
.end method

.method private updateVars(Ljava/lang/Boolean;)V
    .locals 12
    .param p1, "forceSearch"    # Ljava/lang/Boolean;

    .prologue
    const/4 v11, 0x2

    .line 1059
    sget-object v4, Lcom/sec/shabbatmode/ZmanimGetter;->mLocation:Landroid/location/Location;

    .line 1060
    .local v4, "loc":Landroid/location/Location;
    if-nez v4, :cond_0

    .line 1079
    :goto_0
    return-void

    .line 1062
    :cond_0
    invoke-direct {p0, v4}, Lcom/sec/shabbatmode/ZmanimGetter;->formatAddress(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v5

    .line 1063
    .local v5, "locationName":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 1064
    iget-object v9, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    const v10, 0x7f0a004b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1065
    :cond_1
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 1066
    .local v2, "latitude":D
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 1068
    .local v6, "longitude":D
    invoke-static {v2, v3, v11}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v1

    .line 1070
    .local v1, "latitudeText":Ljava/lang/String;
    invoke-static {v6, v7, v11}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v8

    .line 1072
    .local v8, "longitudeText":Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    const v10, 0x7f0a004c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1073
    .local v0, "coordsFormat":Ljava/lang/String;
    new-array v9, v11, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    .line 1074
    aput-object v8, v9, v10

    .line 1073
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mCoordinatesString:Ljava/lang/String;

    .line 1075
    iput-object v5, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mLoc:Ljava/lang/String;

    .line 1078
    invoke-direct {p0, p1}, Lcom/sec/shabbatmode/ZmanimGetter;->populateTimes(Ljava/lang/Boolean;)V

    goto :goto_0
.end method


# virtual methods
.method public getCoordinates()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mCoordinatesString:Ljava/lang/String;

    return-object v0
.end method

.method public getHebrewDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceHebrewDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mLoc:Ljava/lang/String;

    return-object v0
.end method

.method public getShabbatEndTimeInMillis()J
    .locals 2

    .prologue
    .line 1139
    iget-wide v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEndTimeInMillis:J

    return-wide v0
.end method

.method public getShabbatEntranceTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceTime:Ljava/lang/String;

    return-object v0
.end method

.method public getShabbatEntranceTimeInMillis()J
    .locals 2

    .prologue
    .line 1134
    iget-wide v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEntranceTimeInMillis:J

    return-wide v0
.end method

.method public getShabbatExitTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mShabbatEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/app/ProgressDialog;ZZLjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "progressDialog"    # Landroid/app/ProgressDialog;
    .param p3, "isSaturdayEvening"    # Z
    .param p4, "inForeground"    # Z
    .param p5, "forceSearch"    # Ljava/lang/Boolean;
    .param p6, "locationSearch"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x1

    .line 198
    iput-object p1, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mContext:Landroid/content/Context;

    .line 199
    iput-object p2, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 200
    iput-boolean p3, p0, Lcom/sec/shabbatmode/ZmanimGetter;->m_bCurrentlySaturdayEvening:Z

    .line 201
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getIsInAutoUpdateMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocationSearch:Z

    .line 203
    invoke-direct {p0}, Lcom/sec/shabbatmode/ZmanimGetter;->setAppropriateWeekendDays()V

    .line 209
    if-eqz p4, :cond_0

    .line 211
    iput-boolean v1, p0, Lcom/sec/shabbatmode/ZmanimGetter;->m_bIsInForeground:Z

    .line 214
    :cond_0
    invoke-direct {p0, p5}, Lcom/sec/shabbatmode/ZmanimGetter;->initLocation(Ljava/lang/Boolean;)V

    .line 215
    return-void

    .line 201
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->m_bIsInitialized:Z

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 672
    const-string v0, "Shabbat alarm"

    const-string v1, "entered onLocationChanged"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-boolean v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->m_bIsInForeground:Z

    if-nez v0, :cond_2

    .line 680
    invoke-virtual {p0}, Lcom/sec/shabbatmode/ZmanimGetter;->stopLocationManager()V

    .line 681
    sput-object v5, Lcom/sec/shabbatmode/ZmanimGetter;->mLocation:Landroid/location/Location;

    .line 682
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mPopulater:Lcom/sec/shabbatmode/ZmanimGetter$Populater;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mPopulater:Lcom/sec/shabbatmode/ZmanimGetter$Populater;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->cancel()V

    .line 685
    :cond_0
    new-instance v0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/shabbatmode/ZmanimGetter$Populater;-><init>(Lcom/sec/shabbatmode/ZmanimGetter;Landroid/location/Location;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mPopulater:Lcom/sec/shabbatmode/ZmanimGetter$Populater;

    .line 686
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mPopulater:Lcom/sec/shabbatmode/ZmanimGetter$Populater;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->start()V

    .line 704
    :cond_1
    :goto_0
    return-void

    .line 690
    :cond_2
    const-string v0, "Shabbat ZmanimActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLocationChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    sget-object v0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 693
    const-string v0, "Shabbat ZmanimActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLocation != null location "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLocation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/shabbatmode/ZmanimGetter;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    sget-object v0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 698
    :cond_3
    sput-object v5, Lcom/sec/shabbatmode/ZmanimGetter;->mLocation:Landroid/location/Location;

    .line 699
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mPopulater:Lcom/sec/shabbatmode/ZmanimGetter$Populater;

    if-eqz v0, :cond_4

    .line 700
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mPopulater:Lcom/sec/shabbatmode/ZmanimGetter$Populater;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->cancel()V

    .line 702
    :cond_4
    new-instance v0, Lcom/sec/shabbatmode/ZmanimGetter$Populater;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/shabbatmode/ZmanimGetter$Populater;-><init>(Lcom/sec/shabbatmode/ZmanimGetter;Landroid/location/Location;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mPopulater:Lcom/sec/shabbatmode/ZmanimGetter$Populater;

    .line 703
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mPopulater:Lcom/sec/shabbatmode/ZmanimGetter$Populater;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/ZmanimGetter$Populater;->start()V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 708
    const-string v0, "Shabbat ZmanimActivity"

    const-string v1, "onProviderDisabled"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-direct {p0}, Lcom/sec/shabbatmode/ZmanimGetter;->cancelProgressDialogIfVisible()V

    .line 710
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 714
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 718
    const-string v0, "Shabbat ZmanimActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStatusChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method public setNotInForeground()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->m_bIsInForeground:Z

    .line 302
    return-void
.end method

.method public stopLocationManager()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/shabbatmode/ZmanimGetter;->mLocationManager:Landroid/location/LocationManager;

    .line 310
    :cond_0
    return-void
.end method
