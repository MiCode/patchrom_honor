.class public Lcom/android/huawei/projectmenu/QueryPLMN_IDs;
.super Landroid/app/ListActivity;
.source "QueryPLMN_IDs.java"


# static fields
.field private static final PLMN:I = 0x1

.field private static final PLMN_NS:I = 0x2

.field private static final PLMN_SP:I = 0x3


# instance fields
.field mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field mBuilder_plmn:Ljava/lang/StringBuilder;

.field mBuilder_plmn_ns:Ljava/lang/StringBuilder;

.field mBuilder_plmn_sp:Ljava/lang/StringBuilder;

.field private mMenu:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private getPLMN()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mBuilder_plmn:Ljava/lang/StringBuilder;

    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mBuilder_plmn_ns:Ljava/lang/StringBuilder;

    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mBuilder_plmn_sp:Ljava/lang/StringBuilder;

    .line 33
    new-instance v3, Lcom/android/huawei/projectmenu/ProjectMenu;

    invoke-direct {v3}, Lcom/android/huawei/projectmenu/ProjectMenu;-><init>()V

    .line 35
    .local v3, mProjectMenu:Lcom/android/huawei/projectmenu/ProjectMenu;
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->initPLMN()Z

    move-result v1

    .line 37
    .local v1, isPLMN:Z
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v3}, Lcom/android/huawei/projectmenu/ProjectMenu;->getPlmnNode()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mArrayList:Ljava/util/ArrayList;

    .line 42
    :cond_0
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    iget-object v6, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 44
    iget-object v6, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, plmnData:Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, getPlmnData:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 49
    .local v5, plmnType:I
    if-nez v5, :cond_2

    .line 50
    iget-object v6, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mBuilder_plmn:Ljava/lang/StringBuilder;

    aget-object v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_2
    if-ne v5, v8, :cond_3

    .line 58
    iget-object v6, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mBuilder_plmn_ns:Ljava/lang/StringBuilder;

    aget-object v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 64
    :cond_3
    if-ne v5, v9, :cond_1

    .line 65
    iget-object v6, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mBuilder_plmn_sp:Ljava/lang/StringBuilder;

    aget-object v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 72
    .end local v0           #getPlmnData:[Ljava/lang/String;
    .end local v4           #plmnData:Ljava/lang/String;
    .end local v5           #plmnType:I
    :cond_4
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f06006c

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f06006d

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f06006e

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mMenu:[Ljava/lang/String;

    .line 87
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mMenu:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->getPLMN()V

    .line 91
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x7f060074

    const v3, 0x7f060072

    const/4 v1, 0x0

    .line 120
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 145
    :goto_0
    return-object v0

    .line 122
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f06006f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mBuilder_plmn:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mBuilder_plmn:Ljava/lang/StringBuilder;

    goto :goto_1

    .line 129
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060070

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mBuilder_plmn_ns:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mBuilder_plmn_ns:Ljava/lang/StringBuilder;

    goto :goto_2

    .line 136
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060071

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mBuilder_plmn_sp:Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->mBuilder_plmn_sp:Ljava/lang/StringBuilder;

    goto :goto_3

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 96
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 97
    packed-switch p3, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 99
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->showDialog(I)V

    .line 100
    const-string v0, ""

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->showDialog(I)V

    goto :goto_0

    .line 108
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/QueryPLMN_IDs;->showDialog(I)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
