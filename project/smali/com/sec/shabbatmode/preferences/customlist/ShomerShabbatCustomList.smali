.class public Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;
.super Landroid/app/ListFragment;
.source "ShomerShabbatCustomList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final MENU_DEL:I = 0x1

.field private static final MULTIPLE_LIST:I = 0x2

.field private static final SINGLE_LIST:I = 0x21e

.field private static final TAG:Ljava/lang/String; = "Shabbat ShabbatModeCustomList"

.field private static mlistView:Landroid/widget/ListView;


# instance fields
.field private mAdapter:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;

.field private mCustomListAdd:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private moveToDeleteFragment(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;

    invoke-virtual {v0, p1}, Lcom/sec/shabbatmode/preferences/ShomerShabbatActivity;->replaceToDeleteFragment(I)V

    .line 202
    return-void
.end method

.method public static newInstance(I)Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 82
    new-instance v1, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;

    invoke-direct {v1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;-><init>()V

    .line 84
    .local v1, "f":Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "index"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    invoke-virtual {v1, v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->setArguments(Landroid/os/Bundle;)V

    .line 88
    return-object v1
.end method

.method private proccessContactsResults(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extrasBundle"    # Landroid/os/Bundle;

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    const-string v1, "result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 196
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;-><init>(Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;Landroid/content/Context;Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    new-array v2, v2, [[B

    invoke-virtual {v1, v2}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList$UpdateContactsList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->mlistView:Landroid/widget/ListView;

    .line 101
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 102
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 103
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->mCustomListAdd:Landroid/view/View;

    .line 106
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->mCustomListAdd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->mAdapter:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;

    .line 109
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->mlistView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->mAdapter:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 112
    invoke-virtual {p0, v4}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->setHasOptionsMenu(Z)V

    .line 113
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v3, 0x0

    .line 151
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 153
    const-string v4, "Shabbat ShabbatModeCustomList"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "onActivityResult requestCode = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    const-string v5, " Result code = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne p2, v9, :cond_1

    const-string v0, "Activity.RESULT_OK"

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v4, v0}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    if-ne p2, v9, :cond_0

    .line 157
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    if-eqz p3, :cond_2

    .line 158
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->proccessContactsResults(Landroid/os/Bundle;)V

    .line 181
    :cond_0
    :goto_1
    return-void

    .line 154
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_2
    const/16 v0, 0x21e

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 165
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 166
    .local v1, "contactUri":Landroid/net/Uri;
    new-array v2, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    .line 167
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 174
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 176
    .local v8, "numberIndex":I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "contactID":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v6, v10, v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->updateShabbatMode(Ljava/lang/String;ILandroid/app/Activity;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0e0065

    if-ne v2, v3, :cond_0

    .line 213
    const-string v0, "intent.action.INTERACTION_TOPMENU"

    .line 214
    .local v0, "intentString":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, "phonebookIntent":Landroid/content/Intent;
    const-string v2, "maxRecipientCount"

    const/16 v3, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    const-string v2, "additional"

    const-string v3, "phone-multi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 219
    .end local v0    # "intentString":Ljava/lang/String;
    .end local v1    # "phonebookIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getSMCustomLoader(Landroid/app/Activity;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 118
    const/4 v0, 0x1

    const v1, 0x7f0a007c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 119
    const v1, 0x7f020019

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 120
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    const v0, 0x7f03001f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->moveToDeleteFragment(I)V

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 227
    sget-object v1, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/shabbatmode/preferences/customlist/Contact;

    .line 228
    .local v0, "contact":Lcom/sec/shabbatmode/preferences/customlist/Contact;
    const-string v1, "Shabbat ShabbatModeCustomList"

    invoke-virtual {v0}, Lcom/sec/shabbatmode/preferences/customlist/Contact;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "arg0":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-static {p2}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getContactsFromCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 266
    .local v0, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/sec/shabbatmode/preferences/customlist/Contact;>;"
    iget-object v1, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->mAdapter:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->swapCursor(Ljava/util/List;)V

    .line 267
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 268
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/content/Loader;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "arg0":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->mAdapter:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->swapCursor(Ljava/util/List;)V

    .line 273
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 146
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 143
    :pswitch_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->moveToDeleteFragment(I)V

    .line 144
    const/4 v0, 0x1

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 127
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 129
    .local v0, "state":I
    if-eqz v0, :cond_0

    .line 130
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020019

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020018

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
