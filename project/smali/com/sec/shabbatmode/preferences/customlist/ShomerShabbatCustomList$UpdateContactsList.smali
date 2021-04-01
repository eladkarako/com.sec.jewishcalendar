.class Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;
.super Landroid/os/AsyncTask;
.source "ShomerShabbatCustomList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContactsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[B",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field contactsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field mProgress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;


# direct methods
.method public constructor <init>(Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p2, "_context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p3, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->this$0:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->contactsArrayList:Ljava/util/ArrayList;

    .line 281
    iput-object p3, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->contactsArrayList:Ljava/util/ArrayList;

    .line 282
    iput-object p2, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->context:Landroid/content/Context;

    .line 283
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->doInBackground([[B)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([[B)Ljava/lang/Void;
    .locals 6
    .param p1, "data"    # [[B

    .prologue
    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v0, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->contactsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 302
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->context:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->updateShabbatModeContactList(Ljava/util/ArrayList;ILandroid/content/Context;)V

    .line 303
    const/4 v3, 0x0

    return-object v3

    .line 298
    :cond_0
    iget-object v3, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->contactsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 299
    .local v2, "temp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->context:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getContactId(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 309
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 287
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 288
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->mProgress:Landroid/app/ProgressDialog;

    .line 289
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->this$0:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;

    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 292
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 293
    return-void
.end method
