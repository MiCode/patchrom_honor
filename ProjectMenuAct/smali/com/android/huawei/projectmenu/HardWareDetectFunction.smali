.class public Lcom/android/huawei/projectmenu/HardWareDetectFunction;
.super Landroid/app/ListActivity;
.source "HardWareDetectFunction.java"


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
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f060009

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/HardWareDetectFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f06000a

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/HardWareDetectFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/huawei/projectmenu/HardWareDetectFunction;->mMenu:[Ljava/lang/String;

    .line 23
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/android/huawei/projectmenu/HardWareDetectFunction;->mMenu:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/HardWareDetectFunction;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 29
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 31
    packed-switch p3, :pswitch_data_0

    .line 45
    :goto_0
    :pswitch_0
    return-void

    .line 37
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 38
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.BatteryInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/HardWareDetectFunction;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
