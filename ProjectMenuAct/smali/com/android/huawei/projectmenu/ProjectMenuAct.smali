.class public Lcom/android/huawei/projectmenu/ProjectMenuAct;
.super Landroid/app/ListActivity;
.source "ProjectMenuAct.java"


# static fields
.field private static final RECOVERY_SYSTEM:I = 0x3


# instance fields
.field private mMenu:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f060002

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f060003

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f060004

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f060005

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f060006

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x7f060007

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const v3, 0x7f060008

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/huawei/projectmenu/ProjectMenuAct;->mMenu:[Ljava/lang/String;

    .line 47
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/android/huawei/projectmenu/ProjectMenuAct;->mMenu:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 49
    .local v0, intAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 55
    packed-switch p1, :pswitch_data_0

    .line 108
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060085

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060074

    new-instance v2, Lcom/android/huawei/projectmenu/ProjectMenuAct$2;

    invoke-direct {v2, p0}, Lcom/android/huawei/projectmenu/ProjectMenuAct$2;-><init>(Lcom/android/huawei/projectmenu/ProjectMenuAct;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060075

    new-instance v2, Lcom/android/huawei/projectmenu/ProjectMenuAct$1;

    invoke-direct {v2, p0}, Lcom/android/huawei/projectmenu/ProjectMenuAct$1;-><init>(Lcom/android/huawei/projectmenu/ProjectMenuAct;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 113
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 115
    packed-switch p3, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 118
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.huawei.HARDWARE_FUNCTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.huawei.RADIO_TEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 128
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.huawei.BACKGROUNDSETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 133
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.huawei.VENEERINFOQUERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 138
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.huawei.NETSETING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    :pswitch_5
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->showDialog(I)V

    goto :goto_0

    .line 148
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.huawei.UPDATE_SDCARD_AND_TOUCHSCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/ProjectMenuAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
