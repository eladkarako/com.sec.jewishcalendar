.class Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source "GoogleGeocoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/jewishcalendar/location/GoogleGeocoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeocodeResponseHandler"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$sec$jewishcalendar$location$GoogleGeocoder$ParseState:[I = null

.field private static final STATUS_OK:Ljava/lang/String; = "OK"

.field private static final TAG_ADDRESS:Ljava/lang/String; = "address_component"

.field private static final TAG_FORMATTED:Ljava/lang/String; = "formatted_address"

.field private static final TAG_GEOMETRY:Ljava/lang/String; = "geometry"

.field private static final TAG_LATITUDE:Ljava/lang/String; = "lat"

.field private static final TAG_LOCATION:Ljava/lang/String; = "location"

.field private static final TAG_LONGITUDE:Ljava/lang/String; = "lng"

.field private static final TAG_LONG_NAME:Ljava/lang/String; = "long_name"

.field private static final TAG_RESULT:Ljava/lang/String; = "result"

.field private static final TAG_ROOT:Ljava/lang/String; = "GeocodeResponse"

.field private static final TAG_SHORT_NAME:Ljava/lang/String; = "short_name"

.field private static final TAG_STATUS:Ljava/lang/String; = "status"

.field private static final TAG_TYPE:Ljava/lang/String; = "type"

.field private static final TYPE_ADMIN:Ljava/lang/String; = "administrative_area_level_1"

.field private static final TYPE_COUNTRY:Ljava/lang/String; = "country"

.field private static final TYPE_FEATURE:Ljava/lang/String; = "feature_name"

.field private static final TYPE_LOCALITY:Ljava/lang/String; = "locality"

.field private static final TYPE_POLITICAL:Ljava/lang/String; = "political"

.field private static final TYPE_POSTAL_CODE:Ljava/lang/String; = "postal_code"

.field private static final TYPE_ROUTE:Ljava/lang/String; = "route"

.field private static final TYPE_STREET:Ljava/lang/String; = "street_address"

.field private static final TYPE_STREET_NUMBER:Ljava/lang/String; = "street_number"

.field private static final TYPE_SUBADMIN:Ljava/lang/String; = "administrative_area_level_2"

.field private static final TYPE_SUBLOCALITY:Ljava/lang/String; = "sublocality"


# instance fields
.field private mAddress:Landroid/location/Address;

.field private mAddressType:Ljava/lang/String;

.field private mLongName:Ljava/lang/String;

.field private final mMaxResults:I

.field private final mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private mShortName:Ljava/lang/String;

.field private mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

.field final synthetic this$0:Lcom/sec/jewishcalendar/location/GoogleGeocoder;


# direct methods
.method static synthetic $SWITCH_TABLE$com$sec$jewishcalendar$location$GoogleGeocoder$ParseState()[I
    .locals 3

    .prologue
    .line 233
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->$SWITCH_TABLE$com$sec$jewishcalendar$location$GoogleGeocoder$ParseState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->values()[Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_1
    :try_start_1
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS_LONG:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_2
    :try_start_2
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS_SHORT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_3
    :try_start_3
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS_TYPE:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_4
    :try_start_4
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->FINISH:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_5
    :try_start_5
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->GEOMETRY:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_6
    :try_start_6
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->LOCATION:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_7
    :try_start_7
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->LOC_LAT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    :try_start_8
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->LOC_LNG:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_9
    :try_start_9
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->RESULT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_a
    :try_start_a
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->RESULT_FORMATTED:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_b
    :try_start_b
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->RESULT_TYPE:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_c
    :try_start_c
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ROOT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_d
    :try_start_d
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->START:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_e
    :try_start_e
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->STATUS:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_f
    sput-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->$SWITCH_TABLE$com$sec$jewishcalendar$location$GoogleGeocoder$ParseState:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1
.end method

.method public constructor <init>(Lcom/sec/jewishcalendar/location/GoogleGeocoder;Ljava/util/List;I)V
    .locals 1
    .param p3, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    iput-object p1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->this$0:Lcom/sec/jewishcalendar/location/GoogleGeocoder;

    .line 273
    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    .line 266
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->START:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v0, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    .line 274
    iput-object p2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mResults:Ljava/util/List;

    .line 275
    iput p3, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mMaxResults:I

    .line 276
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 6
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/ext/DefaultHandler2;->characters([CII)V

    .line 462
    if-nez p3, :cond_1

    .line 524
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 464
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    const-string v3, "GoogleGeocoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mState: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-static {}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->$SWITCH_TABLE$com$sec$jewishcalendar$location$GoogleGeocoder$ParseState()[I

    move-result-object v3

    iget-object v4, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v4}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 470
    :pswitch_2
    const-string v3, "OK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 471
    sget-object v3, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->FINISH:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v3, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto :goto_0

    .line 474
    :pswitch_3
    const-string v3, "political"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 476
    new-instance v3, Landroid/location/Address;

    iget-object v4, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->this$0:Lcom/sec/jewishcalendar/location/GoogleGeocoder;

    iget-object v4, v4, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->mLocale:Ljava/util/Locale;

    invoke-direct {v3, v4}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    goto :goto_0

    .line 479
    :pswitch_4
    iget-object v3, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    if-eqz v3, :cond_0

    .line 480
    iget-object v3, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 481
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 482
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "extras":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 483
    .restart local v1    # "extras":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    invoke-virtual {v3, v1}, Landroid/location/Address;->setExtras(Landroid/os/Bundle;)V

    .line 484
    iget-object v3, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 486
    :cond_2
    const-string v3, "formatted_address"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    .end local v1    # "extras":Landroid/os/Bundle;
    :pswitch_5
    iput-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mLongName:Ljava/lang/String;

    goto :goto_0

    .line 493
    :pswitch_6
    iput-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mShortName:Ljava/lang/String;

    goto :goto_0

    .line 496
    :pswitch_7
    const-string v3, "political"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 498
    iget-object v3, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddressType:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 499
    iput-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddressType:Ljava/lang/String;

    goto/16 :goto_0

    .line 502
    :pswitch_8
    iget-object v3, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    if-eqz v3, :cond_0

    .line 504
    :try_start_0
    iget-object v3, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Address;->setLatitude(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 511
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_9
    iget-object v3, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    if-eqz v3, :cond_0

    .line 513
    :try_start_1
    iget-object v3, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Address;->setLongitude(D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 514
    :catch_1
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x0

    .line 340
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/ext/DefaultHandler2;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->$SWITCH_TABLE$com$sec$jewishcalendar$location$GoogleGeocoder$ParseState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v2}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 455
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 344
    :pswitch_1
    const-string v1, "GeocodeResponse"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->FINISH:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto :goto_0

    .line 348
    :pswitch_2
    const-string v1, "status"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ROOT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto :goto_0

    .line 352
    :pswitch_3
    const-string v1, "result"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    if-eqz v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mMaxResults:I

    if-ge v1, v2, :cond_2

    .line 355
    iget-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mResults:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    :goto_1
    iput-object v6, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    .line 360
    :cond_1
    iput-object v6, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mLongName:Ljava/lang/String;

    .line 361
    iput-object v6, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mShortName:Ljava/lang/String;

    .line 362
    iput-object v6, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddressType:Ljava/lang/String;

    .line 363
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ROOT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto :goto_0

    .line 357
    :cond_2
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->FINISH:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto :goto_1

    .line 367
    :pswitch_4
    const-string v1, "type"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->RESULT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto :goto_0

    .line 371
    :pswitch_5
    const-string v1, "formatted_address"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->RESULT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto :goto_0

    .line 375
    :pswitch_6
    const-string v1, "address_component"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    if-eqz v1, :cond_4

    .line 377
    const-string v1, "administrative_area_level_1"

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddressType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 378
    iget-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mLongName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 415
    :cond_3
    :goto_2
    iput-object v6, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mLongName:Ljava/lang/String;

    .line 416
    iput-object v6, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mShortName:Ljava/lang/String;

    .line 417
    iput-object v6, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddressType:Ljava/lang/String;

    .line 419
    :cond_4
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->RESULT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto/16 :goto_0

    .line 379
    :cond_5
    const-string v1, "administrative_area_level_2"

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddressType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 380
    iget-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mLongName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    goto :goto_2

    .line 381
    :cond_6
    const-string v1, "country"

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddressType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 382
    iget-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mShortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mLongName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    goto :goto_2

    .line 384
    :cond_7
    const-string v1, "feature_name"

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddressType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 385
    iget-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mLongName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    goto :goto_2

    .line 386
    :cond_8
    const-string v1, "locality"

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddressType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 387
    iget-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mLongName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    goto :goto_2

    .line 388
    :cond_9
    const-string v1, "postal_code"

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddressType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 389
    iget-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mLongName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    goto :goto_2

    .line 390
    :cond_a
    const-string v1, "route"

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddressType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 391
    const-string v1, "street_address"

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddressType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 392
    const-string v1, "street_number"

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddressType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 393
    :cond_b
    iget-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    .line 394
    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 395
    iget-object v3, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mLongName:Ljava/lang/String;

    .line 393
    invoke-virtual {v1, v2, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 396
    :cond_c
    invoke-static {}, Lcom/sec/os/Build$VERSION;->SDK_INT()I

    move-result v1

    if-lt v1, v3, :cond_3

    .line 397
    const-string v1, "sublocality"

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddressType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 398
    invoke-static {}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->access$0()Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_d

    .line 399
    invoke-static {}, Lcom/sec/os/Build$VERSION;->SDK_INT()I

    move-result v1

    if-lt v1, v3, :cond_d

    .line 401
    :try_start_0
    const-class v1, Landroid/location/Address;

    .line 402
    const-string v2, "setSubLocality"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 401
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->access$1(Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 407
    :cond_d
    :goto_3
    invoke-static {}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->access$0()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 409
    :try_start_1
    invoke-static {}, Lcom/sec/jewishcalendar/location/GoogleGeocoder;->access$0()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mAddress:Landroid/location/Address;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mLongName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 423
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_7
    const-string v1, "long_name"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto/16 :goto_0

    .line 427
    :pswitch_8
    const-string v1, "short_name"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto/16 :goto_0

    .line 431
    :pswitch_9
    const-string v1, "type"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto/16 :goto_0

    .line 435
    :pswitch_a
    const-string v1, "geometry"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->RESULT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto/16 :goto_0

    .line 439
    :pswitch_b
    const-string v1, "location"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->GEOMETRY:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto/16 :goto_0

    .line 443
    :pswitch_c
    const-string v1, "lat"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->LOCATION:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto/16 :goto_0

    .line 447
    :pswitch_d
    const-string v1, "lng"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    sget-object v1, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->LOCATION:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto/16 :goto_0

    .line 404
    :catch_1
    move-exception v1

    goto/16 :goto_3

    .line 403
    :catch_2
    move-exception v1

    goto/16 :goto_3

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
    .end packed-switch
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/ext/DefaultHandler2;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 283
    invoke-static {}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->$SWITCH_TABLE$com$sec$jewishcalendar$location$GoogleGeocoder$ParseState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    invoke-virtual {v1}, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 335
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 285
    :pswitch_1
    const-string v0, "GeocodeResponse"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ROOT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v0, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto :goto_0

    .line 288
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected root element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :pswitch_2
    const-string v0, "status"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->STATUS:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v0, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto :goto_0

    .line 294
    :cond_2
    const-string v0, "result"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->RESULT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v0, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto :goto_0

    .line 299
    :pswitch_3
    const-string v0, "type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->RESULT_TYPE:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v0, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto :goto_0

    .line 301
    :cond_3
    const-string v0, "formatted_address"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->RESULT_FORMATTED:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v0, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto :goto_0

    .line 303
    :cond_4
    const-string v0, "address_component"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 304
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v0, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto :goto_0

    .line 305
    :cond_5
    const-string v0, "geometry"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->GEOMETRY:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v0, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto :goto_0

    .line 310
    :pswitch_4
    const-string v0, "long_name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 311
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS_LONG:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v0, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto :goto_0

    .line 312
    :cond_6
    const-string v0, "short_name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 313
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS_SHORT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v0, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto/16 :goto_0

    .line 314
    :cond_7
    const-string v0, "type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->ADDRESS_TYPE:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v0, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto/16 :goto_0

    .line 319
    :pswitch_5
    const-string v0, "location"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->LOCATION:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v0, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto/16 :goto_0

    .line 324
    :pswitch_6
    const-string v0, "lat"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 325
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->LOC_LAT:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v0, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto/16 :goto_0

    .line 326
    :cond_8
    const-string v0, "lng"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    sget-object v0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;->LOC_LNG:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    iput-object v0, p0, Lcom/sec/jewishcalendar/location/GoogleGeocoder$GeocodeResponseHandler;->mState:Lcom/sec/jewishcalendar/location/GoogleGeocoder$ParseState;

    goto/16 :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
