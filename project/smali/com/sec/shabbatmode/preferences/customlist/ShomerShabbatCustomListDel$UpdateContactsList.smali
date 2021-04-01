.class Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;
.super Landroid/os/AsyncTask;
.source "ShomerShabbatCustomListDel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;
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

.field mProgress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;


# direct methods
.method public constructor <init>(Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;)V
    .locals 1

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->this$0:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->contactsArrayList:Ljava/util/ArrayList;

    .line 200
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->doInBackground([[B)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([[B)Ljava/lang/Void;
    .locals 7
    .param p1, "data"    # [[B

    .prologue
    .line 212
    invoke-static {}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->access$1()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 213
    .local v0, "checked":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 224
    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->contactsArrayList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->this$0:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;

    invoke-virtual {v6}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->updateShabbatModeContactList(Ljava/util/ArrayList;ILandroid/content/Context;)V

    .line 225
    const/4 v4, 0x0

    return-object v4

    .line 214
    :cond_0
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 215
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 216
    .local v3, "pos":I
    if-eqz v3, :cond_1

    .line 217
    invoke-static {}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->access$1()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/shabbatmode/preferences/customlist/Contact;

    .line 218
    .local v1, "contact":Lcom/sec/shabbatmode/preferences/customlist/Contact;
    iget-object v4, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->contactsArrayList:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/sec/shabbatmode/preferences/customlist/Contact;->contact_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    const-string v4, "Shabbat ShabbatModeCustomListDel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Contact to delete: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/shabbatmode/preferences/customlist/Contact;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v1    # "contact":Lcom/sec/shabbatmode/preferences/customlist/Contact;
    .end local v3    # "pos":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 231
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->this$0:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->this$0:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 232
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->this$0:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 233
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 203
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 204
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->this$0:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;

    invoke-virtual {v1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->mProgress:Landroid/app/ProgressDialog;

    .line 205
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->this$0:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;

    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 208
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 209
    return-void
.end method
