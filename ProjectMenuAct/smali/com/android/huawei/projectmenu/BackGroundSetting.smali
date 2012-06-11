.class public Lcom/android/huawei/projectmenu/BackGroundSetting;
.super Landroid/app/ListActivity;
.source "BackGroundSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/huawei/projectmenu/BackGroundSetting$MyAdapter;,
        Lcom/android/huawei/projectmenu/BackGroundSetting$Item;
    }
.end annotation


# static fields
.field private static final DIAG_DUALMIC_CLOSE:I = 0x1

.field private static final DIAG_DUALMIC_OPEN:I = 0x0

.field private static final DIAG_LOCK:I = 0x1

.field private static final DIAG_SYS_SLEEP_INDICATOR_CLOSE:I = 0x1

.field private static final DIAG_SYS_SLEEP_INDICATOR_OPEN:I = 0x0

.field private static final DIAG_UNLOCK:I = 0x0

.field private static final DIALOG_DIAG_LOCK:I = 0x1

.field private static final DIALOG_DUALMIC_SWITCH:I = 0x4

.field private static final DIALOG_PHU_LOCK:I = 0x5

.field private static final DIALOG_QCN_SWITCH:I = 0x2

.field private static final DIALOG_SLEEP_SWITCH:I = 0x3

.field private static final LIST_ITEM_DUALMIC_SWITCH:I = 0x5

.field private static final LIST_ITEM_DUMP_LOG_SWITCH:I = 0x6

.field private static final LIST_ITEM_INNER_SDCARD:I = 0x7

.field private static final LIST_ITEM_LOCK_STATE_QUERY:I = 0x0

.field private static final LIST_ITEM_LOG_SETTING:I = 0x1

.field private static final LIST_ITEM_OTP_QCN:I = 0x2

.field private static final LIST_ITEM_PHU_STATE_QUERY:I = 0x8

.field private static final LIST_ITEM_SLEEP_SWITCH:I = 0x4

.field private static final LIST_ITEM_USB_SETTING:I = 0x3

.field private static final PHU_LOCK:I = 0x1

.field private static final PHU_UNLOCK:I = 0x0

.field private static final SYS_SLEEP_CLOSE:I = 0x0

.field private static final SYS_SLEEP_OPEN:I = 0x1


# instance fields
.field diagLockState:Z

.field entryEditText:Landroid/widget/EditText;

.field private isRetDiagValue:Z

.field private isRetPhuValue:Z

.field private mCheckedItem:I

.field private mLock:I

.field private mMenu:[Ljava/lang/String;

.field private mPhuCheckedItem:I

.field private mPhuLock:I

.field mTextView:Landroid/widget/TextView;

.field private mWakeFlag:I

.field phuLockState:Z

.field private qcnOpen:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 91
    iput v1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mWakeFlag:I

    .line 95
    iput v1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mCheckedItem:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->qcnOpen:I

    .line 107
    iput v1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mPhuCheckedItem:I

    .line 114
    iput-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->entryEditText:Landroid/widget/EditText;

    .line 116
    iput-object v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mTextView:Landroid/widget/TextView;

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/android/huawei/projectmenu/BackGroundSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mLock:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/huawei/projectmenu/BackGroundSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mLock:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/huawei/projectmenu/BackGroundSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->isRetDiagValue:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/huawei/projectmenu/BackGroundSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->isRetDiagValue:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/huawei/projectmenu/BackGroundSetting;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mPhuLock:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/huawei/projectmenu/BackGroundSetting;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mPhuLock:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/huawei/projectmenu/BackGroundSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->isRetPhuValue:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/huawei/projectmenu/BackGroundSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->isRetPhuValue:Z

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 120
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/huawei/projectmenu/BackGroundSetting$Item;>;"
    new-instance v5, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;

    const v6, 0x7f060010

    invoke-virtual {p0, v6}, Lcom/android/huawei/projectmenu/BackGroundSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v5, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;

    const v6, 0x7f060011

    invoke-virtual {p0, v6}, Lcom/android/huawei/projectmenu/BackGroundSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6}, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v5, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;

    const/4 v6, 0x2

    const v7, 0x7f060012

    invoke-virtual {p0, v7}, Lcom/android/huawei/projectmenu/BackGroundSetting;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v5, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;

    const/4 v6, 0x3

    const v7, 0x7f060013

    invoke-virtual {p0, v7}, Lcom/android/huawei/projectmenu/BackGroundSetting;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v5, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;

    const/4 v6, 0x4

    const v7, 0x7f06001e

    invoke-virtual {p0, v7}, Lcom/android/huawei/projectmenu/BackGroundSetting;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v5, "ro.config.dualmic"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    new-instance v5, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;

    const/4 v6, 0x5

    const v7, 0x7f06009e

    invoke-virtual {p0, v7}, Lcom/android/huawei/projectmenu/BackGroundSetting;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 136
    .local v4, size:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0600a3

    invoke-virtual {p0, v6}, Lcom/android/huawei/projectmenu/BackGroundSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, dump:Ljava/lang/String;
    new-instance v5, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;

    const/4 v6, 0x6

    invoke-direct {v5, v6, v1}, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v5, "hw_internal_sd"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-ne v9, v5, :cond_1

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0600ab

    invoke-virtual {p0, v6}, Lcom/android/huawei/projectmenu/BackGroundSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, innerSdcard:Ljava/lang/String;
    new-instance v5, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;

    const/4 v6, 0x7

    invoke-direct {v5, v6, v2}, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v2           #innerSdcard:Ljava/lang/String;
    :cond_1
    const-string v5, "hw_phu_license"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-ne v9, v5, :cond_2

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0600b9

    invoke-virtual {p0, v6}, Lcom/android/huawei/projectmenu/BackGroundSetting;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, phuBGSetting:Ljava/lang/String;
    new-instance v5, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v3}, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v3           #phuBGSetting:Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/android/huawei/projectmenu/BackGroundSetting$MyAdapter;

    invoke-direct {v5, v0, p0}, Lcom/android/huawei/projectmenu/BackGroundSetting$MyAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/android/huawei/projectmenu/BackGroundSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v3, 0x7f060022

    const/4 v0, 0x1

    const v7, 0x7f060074

    const v6, 0x7f060075

    .line 286
    packed-switch p1, :pswitch_data_0

    .line 615
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 290
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f05000b

    iget v4, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mCheckedItem:I

    new-instance v5, Lcom/android/huawei/projectmenu/BackGroundSetting$3;

    invoke-direct {v5, p0}, Lcom/android/huawei/projectmenu/BackGroundSetting$3;-><init>(Lcom/android/huawei/projectmenu/BackGroundSetting;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/huawei/projectmenu/BackGroundSetting$2;

    invoke-direct {v3, p0}, Lcom/android/huawei/projectmenu/BackGroundSetting$2;-><init>(Lcom/android/huawei/projectmenu/BackGroundSetting;)V

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/huawei/projectmenu/BackGroundSetting$1;

    invoke-direct {v3, p0}, Lcom/android/huawei/projectmenu/BackGroundSetting$1;-><init>(Lcom/android/huawei/projectmenu/BackGroundSetting;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 399
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060026

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget v2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->qcnOpen:I

    if-ne v2, v0, :cond_0

    const v2, 0x7f060032

    :goto_1
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/huawei/projectmenu/BackGroundSetting$4;

    invoke-direct {v3, p0}, Lcom/android/huawei/projectmenu/BackGroundSetting$4;-><init>(Lcom/android/huawei/projectmenu/BackGroundSetting;)V

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    :cond_0
    const v2, 0x7f060033

    goto :goto_1

    .line 411
    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f06001f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f05000c

    iget v4, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mWakeFlag:I

    new-instance v5, Lcom/android/huawei/projectmenu/BackGroundSetting$6;

    invoke-direct {v5, p0}, Lcom/android/huawei/projectmenu/BackGroundSetting$6;-><init>(Lcom/android/huawei/projectmenu/BackGroundSetting;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/huawei/projectmenu/BackGroundSetting$5;

    invoke-direct {v3, p0}, Lcom/android/huawei/projectmenu/BackGroundSetting$5;-><init>(Lcom/android/huawei/projectmenu/BackGroundSetting;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 454
    :pswitch_3
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/BackGroundSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 455
    .local v1, tmpAudioManager:Landroid/media/AudioManager;
    const-string v2, "dualmic_enabled"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 456
    .local v0, dualMicDefautVal:I
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f06009f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f05000d

    new-instance v4, Lcom/android/huawei/projectmenu/BackGroundSetting$8;

    invoke-direct {v4, p0, v1}, Lcom/android/huawei/projectmenu/BackGroundSetting$8;-><init>(Lcom/android/huawei/projectmenu/BackGroundSetting;Landroid/media/AudioManager;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/huawei/projectmenu/BackGroundSetting$7;

    invoke-direct {v3, p0}, Lcom/android/huawei/projectmenu/BackGroundSetting$7;-><init>(Lcom/android/huawei/projectmenu/BackGroundSetting;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 501
    .end local v0           #dualMicDefautVal:I
    .end local v1           #tmpAudioManager:Landroid/media/AudioManager;
    :pswitch_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f050012

    iget v4, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mPhuCheckedItem:I

    new-instance v5, Lcom/android/huawei/projectmenu/BackGroundSetting$11;

    invoke-direct {v5, p0}, Lcom/android/huawei/projectmenu/BackGroundSetting$11;-><init>(Lcom/android/huawei/projectmenu/BackGroundSetting;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/huawei/projectmenu/BackGroundSetting$10;

    invoke-direct {v3, p0}, Lcom/android/huawei/projectmenu/BackGroundSetting$10;-><init>(Lcom/android/huawei/projectmenu/BackGroundSetting;)V

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/huawei/projectmenu/BackGroundSetting$9;

    invoke-direct {v3, p0}, Lcom/android/huawei/projectmenu/BackGroundSetting$9;-><init>(Lcom/android/huawei/projectmenu/BackGroundSetting;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 158
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 161
    .local v1, tag:I
    packed-switch v1, :pswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 164
    :pswitch_0
    const-string v3, "######################"

    const-string v6, "onListItemClick"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->diagLockStateQuery()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->diagLockState:Z

    .line 166
    iget-boolean v3, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->diagLockState:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_1
    iput v3, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mCheckedItem:I

    .line 167
    iput v7, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mLock:I

    .line 168
    const-string v3, "########################################"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCheckedItem = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mCheckedItem:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0, v4}, Lcom/android/huawei/projectmenu/BackGroundSetting;->showDialog(I)V

    goto :goto_0

    :cond_0
    move v3, v5

    .line 166
    goto :goto_1

    .line 173
    :pswitch_1
    const-string v3, "######################"

    const-string v6, "onListItemClick"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->phuLockStateQuery()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->phuLockState:Z

    .line 175
    iget-boolean v3, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->phuLockState:Z

    if-eqz v3, :cond_1

    :goto_2
    iput v5, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mPhuCheckedItem:I

    .line 176
    iput v7, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mPhuLock:I

    .line 177
    const-string v3, "########################################"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPhuCheckedItem = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mPhuCheckedItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/BackGroundSetting;->showDialog(I)V

    goto :goto_0

    :cond_1
    move v5, v4

    .line 175
    goto :goto_2

    .line 183
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.huawei.LOG_SETTING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/BackGroundSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 188
    :pswitch_3
    :try_start_0
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->export_OTP_QCN()I

    move-result v3

    iput v3, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->qcnOpen:I

    .line 189
    const-string v3, "BackGroundSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "qcnOpen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->qcnOpen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_3
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/BackGroundSetting;->showDialog(I)V

    goto/16 :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 198
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_4
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.huawei.USB_SETTING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/BackGroundSetting;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 204
    :pswitch_5
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->getWakeFlag()I

    move-result v2

    .line 205
    .local v2, tempWakeFlag:I
    if-ne v2, v4, :cond_2

    :goto_4
    iput v5, p0, Lcom/android/huawei/projectmenu/BackGroundSetting;->mWakeFlag:I

    .line 207
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/BackGroundSetting;->showDialog(I)V

    goto/16 :goto_0

    :cond_2
    move v5, v4

    .line 205
    goto :goto_4

    .line 211
    .end local v2           #tempWakeFlag:I
    :pswitch_6
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/BackGroundSetting;->showDialog(I)V

    goto/16 :goto_0

    .line 216
    :pswitch_7
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.huawei.DUMP_PREFERENCE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/BackGroundSetting;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 221
    :pswitch_8
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.huawei.INNER_SDCARD"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/huawei/projectmenu/BackGroundSetting;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
    .end packed-switch
.end method
