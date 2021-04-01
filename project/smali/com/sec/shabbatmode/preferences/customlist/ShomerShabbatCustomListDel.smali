.class public Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;
.super Landroid/app/ListFragment;
.source "ShomerShabbatCustomListDel.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Shabbat ShabbatModeCustomListDel"

.field private static mAdapter:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;

.field private static mMenu:Landroid/view/Menu;

.field private static mlistView:Landroid/widget/ListView;


# instance fields
.field private mPreSelectedItem:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 97
    sget-object v2, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 98
    .local v0, "count":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 102
    invoke-static {}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->toggleDeleteButtonState()V

    .line 103
    return-void

    .line 99
    :cond_0
    sget-object v2, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p1, :cond_1

    .line 100
    sget-object v2, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 98
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$1()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    return-object v0
.end method

.method public static newInstance(I)Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 40
    new-instance v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;

    invoke-direct {v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;-><init>()V

    .line 45
    .local v0, "f":Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;
    add-int/lit8 v1, p0, 0x1

    iput v1, v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mPreSelectedItem:I

    .line 47
    return-object v0
.end method

.method private setPreSelectedItem()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    iget v0, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mPreSelectedItem:I

    if-eqz v0, :cond_1

    .line 177
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    iget v1, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mPreSelectedItem:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 178
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    iget v1, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mPreSelectedItem:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 179
    iput v2, p0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mPreSelectedItem:I

    .line 180
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 181
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 183
    :cond_0
    invoke-static {}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->toggleDeleteButtonState()V

    .line 185
    :cond_1
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 186
    invoke-static {}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->toggleDeleteButtonState()V

    .line 187
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 189
    :cond_2
    return-void
.end method

.method public static toggleDeleteButtonState()V
    .locals 3

    .prologue
    .line 134
    sget-object v1, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    .line 135
    sget-object v1, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 136
    .local v0, "enableBoolean":Ljava/lang/Boolean;
    sget-object v1, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e00b0

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 138
    :cond_0
    return-void

    .line 135
    .end local v0    # "enableBoolean":Ljava/lang/Boolean;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public customListDelete()V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;

    invoke-direct {v0, p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;-><init>(Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;)V

    const/4 v1, 0x0

    new-array v1, v1, [[B

    invoke-virtual {v0, v1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel$UpdateContactsList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    .line 67
    new-instance v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mAdapter:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;

    .line 69
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 70
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 71
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 72
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    sget-object v1, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mAdapter:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 75
    invoke-virtual {p0, v4}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->setHasOptionsMenu(Z)V

    .line 76
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
    .line 153
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getSMCustomLoader(Landroid/app/Activity;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 109
    const/high16 v0, 0x7f0d0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 110
    sput-object p1, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mMenu:Landroid/view/Menu;

    .line 111
    invoke-static {}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->toggleDeleteButtonState()V

    .line 112
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const v0, 0x7f030020

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 80
    const-string v1, "Shabbat ShabbatModeCustomListDel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onListItemClick "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/shabbatmode/Globals;->logShabbat(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    if-nez p3, :cond_0

    .line 82
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->ToggleAllCheck(Z)V

    .line 92
    :goto_0
    invoke-static {}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->toggleDeleteButtonState()V

    .line 94
    return-void

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    sget-object v3, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 90
    .local v0, "setAllChecked":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .end local v0    # "setAllChecked":Ljava/lang/Boolean;
    :cond_1
    move v1, v2

    .line 89
    goto :goto_1
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
    .line 165
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-static {p2}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListUtilities;->getContactsFromCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 166
    .local v0, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/sec/shabbatmode/preferences/customlist/Contact;>;"
    sget-object v1, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mAdapter:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->swapCursor(Ljava/util/List;)V

    .line 167
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 169
    invoke-direct {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->setPreSelectedItem()V

    .line 170
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/content/Loader;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 192
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->mAdapter:Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListAdapter;->swapCursor(Ljava/util/List;)V

    .line 193
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 127
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 118
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->customListDelete()V

    goto :goto_0

    .line 123
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 124
    invoke-virtual {p0}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0e00af -> :sswitch_1
        0x7f0e00b0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 58
    invoke-static {}, Lcom/sec/shabbatmode/preferences/customlist/ShomerShabbatCustomListDel;->toggleDeleteButtonState()V

    .line 59
    return-void
.end method
