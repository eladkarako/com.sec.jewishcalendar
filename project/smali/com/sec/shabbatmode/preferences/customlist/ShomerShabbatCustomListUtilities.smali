.class public Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;
.super Ljava/lang/Object;
.source "ShomerShabbatCustomListUtilities.java"


# static fields
.field public static final ADD:I = 0x1

.field private static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field public static final MIMETYPE_SHABBAT:Ljava/lang/String; = "vnd.android.cursor.item/shabbatmode"

.field public static final REMOVE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Shabbat SMCustomListUtilities"

.field static builder:Landroid/net/Uri$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dormant"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 36
    const-string v1, "custom_list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 35
    sput-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->builder:Landroid/net/Uri$Builder;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 40
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 41
    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 42
    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 43
    const-string v2, "data1"

    aput-object v2, v0, v1

    .line 39
    sput-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteFromDormantModeList(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "contacts"    # Ljava/lang/String;

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->modifyDormantModeList(Landroid/content/Context;Ljava/lang/String;I)V

    .line 345
    return-void
.end method

.method private static deleteFromDormantModeList(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/shabbatmode/preferences/customlist/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/sec/shabbatmode/preferences/customlist/Contact;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->modifyDormantModeList(Landroid/content/Context;Ljava/util/List;I)V

    .line 342
    return-void
.end method

.method private static getAllowedNumbers(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 531
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getShabbatCustomContactsList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 532
    .local v7, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/sec/shabbatmode/preferences/customlist/Contact;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v9, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 550
    const-string v0, "Shabbat SMCustomListUtilities"

    const-string v1, "getAllowedNumbers Done"

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    return-object v9

    .line 533
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/shabbatmode/preferences/customlist/Contact;

    .line 534
    .local v6, "contact":Lcom/sec/shabbatmode/preferences/customlist/Contact;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contact_id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/sec/shabbatmode/preferences/customlist/Contact;->contact_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    .line 534
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 537
    .local v10, "phones":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 539
    :cond_2
    const-string v0, "data1"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 540
    .local v8, "numberString":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 541
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method public static getAllowedPhoneNumbers(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 513
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "modeString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getFavouritesNumbers(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 522
    :goto_0
    return-object v1

    .line 518
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getAllowedNumbers(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 522
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getContactId(Ljava/lang/String;Landroid/content/Context;)J
    .locals 10
    .param p0, "rawContactID"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 461
    const-wide/16 v8, -0x1

    .line 462
    .local v8, "contactID":J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 463
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "contact_id"

    aput-object v3, v2, v7

    .line 464
    const-string v3, "_id=? "

    .line 465
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    .line 462
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 467
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 478
    return-wide v8

    .line 469
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 470
    const-string v0, "Shabbat SMCustomListUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getContactId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 475
    :catchall_0
    move-exception v0

    .line 476
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 477
    throw v0
.end method

.method public static getContactsFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/shabbatmode/preferences/customlist/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/sec/shabbatmode/preferences/customlist/Contact;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 252
    :cond_0
    const-string v4, "Shabbat SMCustomListUtilities"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetContactsFromCursor: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-object v1

    .line 242
    :cond_1
    const-string v4, "display_name"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "name":Ljava/lang/String;
    const-string v4, "contact_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "id":Ljava/lang/String;
    new-instance v0, Lcom/sec/shabbatmode/preferences/customlist/Contact;

    invoke-direct {v0, v2, v3}, Lcom/sec/shabbatmode/preferences/customlist/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v0, "contact":Lcom/sec/shabbatmode/preferences/customlist/Contact;
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 246
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method private static getContactsSelectionString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/shabbatmode/preferences/customlist/Contact;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/sec/shabbatmode/preferences/customlist/Contact;>;"
    const/4 v0, 0x0

    .line 406
    .local v0, "i":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 408
    .local v2, "selection":Ljava/lang/StringBuffer;
    const-string v4, "_id IN ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 418
    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "selectionString":Ljava/lang/String;
    const-string v4, "Shabbat SMCustomListUtilities"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetContactsSelectionString: contactsSelection = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-object v3

    .line 411
    .end local v3    # "selectionString":Ljava/lang/String;
    :cond_0
    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/shabbatmode/preferences/customlist/Contact;

    invoke-virtual {v4}, Lcom/sec/shabbatmode/preferences/customlist/Contact;->getContact_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 416
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method private static getCurrentDormantModeList(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/shabbatmode/preferences/customlist/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 261
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v8, "listContacts":Ljava/util/List;, "Ljava/util/List<Lcom/sec/shabbatmode/preferences/customlist/Contact;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 264
    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v0

    .line 267
    .local v2, "CURRENT_CONTACTS_PROJECTION":[Ljava/lang/String;
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->builder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 268
    .local v1, "baseUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 271
    const-string v5, "display_name COLLATE LOCALIZED ASC"

    move-object v4, v3

    .line 268
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 275
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 286
    const-string v0, "Shabbat SMCustomListUtilities"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetCurrentDormantModeList Result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-object v8

    .line 277
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 278
    .local v7, "idString":Ljava/lang/String;
    new-instance v0, Lcom/sec/shabbatmode/preferences/customlist/Contact;

    invoke-direct {v0, v7}, Lcom/sec/shabbatmode/preferences/customlist/Contact;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 282
    .end local v7    # "idString":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 283
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 284
    throw v0
.end method

.method private static getFavouritesNumbers(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v13, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 564
    .local v1, "queryUri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 565
    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    .line 566
    const-string v4, "starred"

    aput-object v4, v2, v0

    .line 568
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "starred=\'1\'"

    .line 570
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 572
    .local v11, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 592
    const-string v0, "Shabbat SMCustomListUtilities"

    const-string v4, "getFavouritesNumbers Done"

    invoke-static {v0, v4}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-object v13

    .line 574
    :cond_1
    const-string v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 573
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 576
    .local v10, "contactID":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "contact_id = "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 576
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 579
    .local v14, "phones":Landroid/database/Cursor;
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 581
    :cond_2
    const-string v0, "data1"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 582
    .local v12, "numberString":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 583
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method public static getLookUpContactId(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    .locals 9
    .param p0, "contactId"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 488
    const-string v7, ""

    .line 490
    .local v7, "lookUpContactId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 491
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "lookup"

    aput-object v3, v2, v8

    .line 492
    const-string v3, "contact_id=?"

    .line 493
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    .line 490
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 495
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 497
    const-string v0, "Shabbat SMCustomListUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getLookUpContactIds "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 502
    return-object v7

    .line 499
    :catchall_0
    move-exception v0

    .line 500
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 501
    throw v0
.end method

.method public static getRawContactId(Ljava/lang/String;Landroid/content/Context;)I
    .locals 9
    .param p0, "contactId"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 432
    const/4 v7, -0x1

    .line 433
    .local v7, "rawContactId":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 434
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    .line 435
    const-string v3, "contact_id=?"

    .line 436
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    .line 433
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 437
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 439
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 451
    :cond_1
    return v7

    .line 441
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-int v7, v0

    .line 442
    const-string v0, "Shabbat SMCustomListUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*****getRawContactId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    .line 448
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 449
    throw v0
.end method

.method public static getSMCustomLoader(Landroid/app/Activity;)Landroid/content/Loader;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 194
    .local v2, "baseUri":Landroid/net/Uri;
    const-string v4, "(mimetype= ? AND data1=?)"

    .line 195
    .local v4, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "vnd.android.cursor.item/shabbatmode"

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const-string v1, "1"

    aput-object v1, v5, v0

    .line 196
    .local v5, "argsStrings":[Ljava/lang/String;
    const-string v6, "display_name COLLATE LOCALIZED ASC"

    .line 198
    .local v6, "sortOrder":Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v3, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getShabbatCustomContactsList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/shabbatmode/preferences/customlist/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 212
    .local v1, "baseUri":Landroid/net/Uri;
    const-string v3, "(mimetype= ? AND data1=?)"

    .line 213
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "vnd.android.cursor.item/shabbatmode"

    aput-object v2, v4, v0

    const/4 v0, 0x1

    const-string v2, "1"

    aput-object v2, v4, v0

    .line 214
    .local v4, "argsStrings":[Ljava/lang/String;
    const-string v5, "display_name COLLATE LOCALIZED ASC"

    .line 216
    .local v5, "sortOrder":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 217
    const/4 v2, 0x0

    .line 216
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 220
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "Shabbat SMCustomListUtilities"

    const-string v2, "getShabbatCustomContactsList "

    invoke-static {v0, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {v7}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getContactsFromCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v6

    .line 223
    .local v6, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/sec/shabbatmode/preferences/customlist/Contact;>;"
    return-object v6
.end method

.method private static modifyDormantModeList(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "selectionString"    # Ljava/lang/String;
    .param p2, "modifyMode"    # I

    .prologue
    .line 371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v2, "mOperationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "dormant"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 375
    const-string v4, "custom_list"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 374
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 380
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "sec_custom_dormant_contact"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 381
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 382
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 394
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 395
    return-void

    .line 387
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Shabbat SMCustomListUtilities"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "modifyDormantModeList e "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 390
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 391
    .local v1, "e":Landroid/content/OperationApplicationException;
    const-string v3, "Shabbat SMCustomListUtilities"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "modifyDormantModeList e "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0
.end method

.method private static modifyDormantModeList(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p2, "modifyMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/shabbatmode/preferences/customlist/Contact;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/sec/shabbatmode/preferences/customlist/Contact;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    invoke-static {p1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getContactsSelectionString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "selectionString":Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->modifyDormantModeList(Landroid/content/Context;Ljava/lang/String;I)V

    .line 361
    .end local v0    # "selectionString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static resetDormantListToOriginal(Landroid/content/Context;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 320
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getCurrentDormantModeList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getContactsSelectionString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "currentList":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->deleteFromDormantModeList(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getOriginalDormantList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->saveToDormantModeList(Landroid/content/Context;Ljava/lang/String;)V

    .line 324
    const-string v1, "Shabbat SMCustomListUtilities"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ResetDormantListToOriginal: \nShabbatMode list = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 325
    const-string v3, "\nOriginal Doramnt list = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getCurrentDormantModeList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getContactsSelectionString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method private static saveToDormantModeList(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "contacts"    # Ljava/lang/String;

    .prologue
    .line 337
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->modifyDormantModeList(Landroid/content/Context;Ljava/lang/String;I)V

    .line 338
    return-void
.end method

.method private static saveToDormantModeList(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/shabbatmode/preferences/customlist/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/sec/shabbatmode/preferences/customlist/Contact;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->modifyDormantModeList(Landroid/content/Context;Ljava/util/List;I)V

    .line 335
    return-void
.end method

.method public static switchDormantListToShabbatMode(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/shabbatmode/preferences/customlist/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "smCustomList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/shabbatmode/preferences/customlist/Contact;>;"
    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getCurrentDormantModeList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getContactsSelectionString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "dormantModeString":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->saveOriginalDormantList(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    invoke-static {p0, v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->deleteFromDormantModeList(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    invoke-static {p0, p1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->saveToDormantModeList(Landroid/content/Context;Ljava/util/List;)V

    .line 308
    const-string v1, "Shabbat SMCustomListUtilities"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "switchDormantListToShabbatMode: \nOriginal list = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/utilities/ShomerShabbatUserPrefsUtils;->getOriginalDormantList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 309
    const-string v3, "\nNew list = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getCurrentDormantModeList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getContactsSelectionString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method private static updateContentProviderOperations(ILandroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .param p0, "addOrRemove"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "idString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    .line 153
    const-string v3, "contact_id = ? AND mimetype = ?"

    .line 154
    .local v3, "hasShabbatMimeType":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v0, 0x1

    .line 155
    const-string v1, "vnd.android.cursor.item/shabbatmode"

    aput-object v1, v4, v0

    .line 156
    .local v4, "shabbatMimeTypeParams":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 160
    .local v6, "shabbatCur":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 161
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 163
    .local v7, "values":Landroid/content/ContentValues;
    const-string v0, "data1"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "contact_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/shabbatmode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, "whereString":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v8, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 169
    const-string v1, "data1"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 167
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v8    # "whereString":Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 183
    return-void

    .line 176
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 177
    const-string v1, "data1"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 178
    const-string v1, "raw_contact_id"

    invoke-static {p3, p1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getRawContactId(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 179
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/shabbatmode"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 176
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static updateShabbatMode(Ljava/lang/String;ILandroid/app/Activity;)V
    .locals 10
    .param p0, "idString"    # Ljava/lang/String;
    .param p1, "data1Value"    # I
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x1

    .line 55
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v4, "values":Landroid/content/ContentValues;
    const-string v8, "Shabbat SMCustomListUtilities"

    new-instance v9, Ljava/lang/StringBuilder;

    if-ne p1, v6, :cond_0

    const-string v7, "Add to "

    :goto_0
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "ShabbatMode"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v7, "data1"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "contact_id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 61
    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "mimetype"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "= \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "vnd.android.cursor.item/shabbatmode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 60
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "whereString":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 68
    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 70
    const/4 v9, 0x0

    .line 67
    invoke-virtual {v7, v8, v4, v5, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 72
    .local v3, "updateResult":I
    const-string v7, "Shabbat SMCustomListUtilities"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "updateShabbatMode: number of lines updated = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 73
    const-string v9, "\nWhere string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 72
    invoke-static {v7, v8}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    if-nez v3, :cond_2

    .line 79
    const-string v7, "raw_contact_id"

    invoke-static {p0, p2}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getRawContactId(Ljava/lang/String;Landroid/content/Context;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/shabbatmode"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 85
    .local v1, "mod2":Landroid/net/Uri;
    if-nez v1, :cond_1

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 86
    .local v2, "success":Ljava/lang/Boolean;
    const-string v6, "Shabbat SMCustomListUtilities"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "update success = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v1    # "mod2":Landroid/net/Uri;
    .end local v2    # "success":Ljava/lang/Boolean;
    .end local v3    # "updateResult":I
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v5    # "whereString":Ljava/lang/String;
    :goto_2
    return-void

    .line 57
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    const-string v7, "Remove From "

    goto/16 :goto_0

    .line 85
    .restart local v1    # "mod2":Landroid/net/Uri;
    .restart local v3    # "updateResult":I
    .restart local v5    # "whereString":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 88
    .end local v1    # "mod2":Landroid/net/Uri;
    :cond_2
    const-string v6, "Shabbat SMCustomListUtilities"

    const-string v7, "data updated"

    invoke-static {v6, v7}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 91
    .end local v3    # "updateResult":I
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v5    # "whereString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Shabbat SMCustomListUtilities"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "failed to update contact with exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static updateShabbatModeContactList(Ljava/util/ArrayList;ILandroid/content/Context;)V
    .locals 11
    .param p1, "addOrRemove"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 104
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v10, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v9, 0x0

    .line 107
    .local v9, "idString":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_0

    .line 131
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "com.android.contacts"

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_1
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "idString":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 110
    .restart local v9    # "idString":Ljava/lang/String;
    const-string v0, "Shabbat SMCustomListUtilities"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "idString "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_2
    invoke-static {p1, p2, v10, v9}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->updateContentProviderOperations(ILandroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 107
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 114
    .local v1, "contactUri":Landroid/net/Uri;
    const-string v0, "Shabbat SMCustomListUtilities"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "URI "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    .line 117
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 120
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 123
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 132
    .end local v1    # "contactUri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 133
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
