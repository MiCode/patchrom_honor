.class public Lcom/android/huawei/projectmenu/RadioTest;
.super Landroid/app/ListActivity;
.source "RadioTest.java"


# instance fields
.field private mMenu:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f06000b

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/RadioTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/huawei/projectmenu/RadioTest;->mMenu:[Ljava/lang/String;

    .line 21
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/android/huawei/projectmenu/RadioTest;->mMenu:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/RadioTest;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 24
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 29
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 30
    packed-switch p3, :pswitch_data_0

    .line 38
    :goto_0
    return-void

    .line 32
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.huawei.LOCK_FREQUENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/RadioTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
