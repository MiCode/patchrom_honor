.class public Lcom/android/huawei/projectmenu/LockFrequency;
.super Landroid/app/ListActivity;
.source "LockFrequency.java"


# static fields
.field private static final LOCK_SCREEN:I = 0x1

.field private static final LOCK_SCREEN_INFO:I = 0x2

.field private static final STOP_LOCK_SCREEN:I = 0x3

.field private static mMenu:[Ljava/lang/String;


# instance fields
.field bandClassText:Landroid/widget/EditText;

.field cdmaFreqText:Landroid/widget/EditText;

.field entryEditText:Landroid/widget/EditText;

.field evdoBandText:Landroid/widget/EditText;

.field evdoFreqText:Landroid/widget/EditText;

.field isCDMA:Z

.field lockSuccess:Z

.field nIDText:Landroid/widget/EditText;

.field sIDText:Landroid/widget/EditText;

.field stopLock:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/huawei/projectmenu/LockFrequency;->entryEditText:Landroid/widget/EditText;

    .line 27
    iput-object v0, p0, Lcom/android/huawei/projectmenu/LockFrequency;->bandClassText:Landroid/widget/EditText;

    .line 28
    iput-object v0, p0, Lcom/android/huawei/projectmenu/LockFrequency;->cdmaFreqText:Landroid/widget/EditText;

    .line 29
    iput-object v0, p0, Lcom/android/huawei/projectmenu/LockFrequency;->sIDText:Landroid/widget/EditText;

    .line 30
    iput-object v0, p0, Lcom/android/huawei/projectmenu/LockFrequency;->nIDText:Landroid/widget/EditText;

    .line 31
    iput-object v0, p0, Lcom/android/huawei/projectmenu/LockFrequency;->evdoBandText:Landroid/widget/EditText;

    .line 32
    iput-object v0, p0, Lcom/android/huawei/projectmenu/LockFrequency;->evdoFreqText:Landroid/widget/EditText;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/huawei/projectmenu/LockFrequency;->isCDMA:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 40
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f06000e

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/LockFrequency;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f06000f

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/LockFrequency;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sput-object v1, Lcom/android/huawei/projectmenu/LockFrequency;->mMenu:[Ljava/lang/String;

    .line 47
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    sget-object v3, Lcom/android/huawei/projectmenu/LockFrequency;->mMenu:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/huawei/projectmenu/LockFrequency;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 52
    .local v0, activePhoneType:I
    if-ne v5, v0, :cond_0

    .line 53
    iput-boolean v4, p0, Lcom/android/huawei/projectmenu/LockFrequency;->isCDMA:Z

    .line 55
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const v5, 0x7f060075

    const v4, 0x7f060074

    .line 87
    packed-switch p1, :pswitch_data_0

    .line 247
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 90
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/huawei/projectmenu/LockFrequency;->isCDMA:Z

    if-eqz v2, :cond_0

    .line 91
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 92
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030001

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 93
    .local v1, textEntryView:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/huawei/projectmenu/LockFrequency$2;

    invoke-direct {v3, p0, v1}, Lcom/android/huawei/projectmenu/LockFrequency$2;-><init>(Lcom/android/huawei/projectmenu/LockFrequency;Landroid/view/View;)V

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/huawei/projectmenu/LockFrequency$1;

    invoke-direct {v3, p0}, Lcom/android/huawei/projectmenu/LockFrequency$1;-><init>(Lcom/android/huawei/projectmenu/LockFrequency;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 175
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .end local v1           #textEntryView:Landroid/view/View;
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 176
    .restart local v0       #factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030002

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 177
    .restart local v1       #textEntryView:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/huawei/projectmenu/LockFrequency$4;

    invoke-direct {v3, p0, v1}, Lcom/android/huawei/projectmenu/LockFrequency$4;-><init>(Lcom/android/huawei/projectmenu/LockFrequency;Landroid/view/View;)V

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/huawei/projectmenu/LockFrequency$3;

    invoke-direct {v3, p0}, Lcom/android/huawei/projectmenu/LockFrequency$3;-><init>(Lcom/android/huawei/projectmenu/LockFrequency;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 221
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .end local v1           #textEntryView:Landroid/view/View;
    :pswitch_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v2, p0, Lcom/android/huawei/projectmenu/LockFrequency;->lockSuccess:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/huawei/projectmenu/LockFrequency;->isCDMA:Z

    if-eqz v2, :cond_1

    const v2, 0x7f060078

    :goto_1
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/huawei/projectmenu/LockFrequency$5;

    invoke-direct {v3, p0}, Lcom/android/huawei/projectmenu/LockFrequency$5;-><init>(Lcom/android/huawei/projectmenu/LockFrequency;)V

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v2, 0x7f060077

    goto :goto_1

    :cond_2
    const v2, 0x7f060079

    goto :goto_1

    .line 233
    :pswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v2, p0, Lcom/android/huawei/projectmenu/LockFrequency;->stopLock:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/huawei/projectmenu/LockFrequency;->isCDMA:Z

    if-eqz v2, :cond_3

    const v2, 0x7f06007b

    :goto_2
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/huawei/projectmenu/LockFrequency$6;

    invoke-direct {v3, p0}, Lcom/android/huawei/projectmenu/LockFrequency$6;-><init>(Lcom/android/huawei/projectmenu/LockFrequency;)V

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    :cond_3
    const v2, 0x7f06007a

    goto :goto_2

    :cond_4
    const v2, 0x7f06007c

    goto :goto_2

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 59
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 60
    packed-switch p3, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 62
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/huawei/projectmenu/LockFrequency;->showDialog(I)V

    goto :goto_0

    .line 67
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/huawei/projectmenu/LockFrequency;->isCDMA:Z

    if-eqz v1, :cond_0

    .line 68
    const-string v0, "enable=0 band_class=0 cdma_freq=0 sid=0 nid=0 evdo_band_class=0 evdo_freq=0 "

    .line 71
    .local v0, res:Ljava/lang/String;
    const-string v1, "LockCDMAFre"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {v0}, Lcom/android/huawei/projectmenu/ProjectMenu;->lockCdmaFreq(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/huawei/projectmenu/LockFrequency;->stopLock:Z

    .line 78
    .end local v0           #res:Ljava/lang/String;
    :goto_1
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopLock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/huawei/projectmenu/LockFrequency;->stopLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/huawei/projectmenu/LockFrequency;->showDialog(I)V

    goto :goto_0

    .line 75
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/huawei/projectmenu/ProjectMenu;->lockFreq(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/huawei/projectmenu/LockFrequency;->stopLock:Z

    goto :goto_1

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
