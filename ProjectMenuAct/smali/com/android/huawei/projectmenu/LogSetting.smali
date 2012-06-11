.class public Lcom/android/huawei/projectmenu/LogSetting;
.super Landroid/app/ListActivity;
.source "LogSetting.java"


# static fields
.field private static final DEBUG:I = 0x3

.field private static final DIALOG_LOG_LEVEL:I = 0x2

.field private static final DIALOG_LOG_SWITCH:I = 0x1

.field private static final ERROR:I = 0x6

.field private static final FATAL:I = 0x7

.field private static final INFO:I = 0x4

.field private static final ITEM_LOG_LEVEL_POSITION:I = 0x1

.field private static final ITEM_LOG_SWITCH_POSITION:I = 0x0

.field private static LOGCAT_KEY:Ljava/lang/String; = null

.field private static LOGCAT_VALUE_START:Ljava/lang/String; = null

.field private static LOGCAT_VALUE_STOP:Ljava/lang/String; = null

.field private static final LOG_CLOSE:I = 0x1

.field private static final LOG_OPEN:I = 0x0

.field private static final LOG_PRIORITY_DEBUG:I = 0x1

.field private static final LOG_PRIORITY_ERROR:I = 0x4

.field private static final LOG_PRIORITY_FATAL:I = 0x5

.field private static final LOG_PRIORITY_INFO:I = 0x2

.field private static final LOG_PRIORITY_SILENT:I = 0x6

.field private static final LOG_PRIORITY_VERBOSE:I = 0x0

.field private static final LOG_PRIORITY_WARN:I = 0x3

.field private static final SILENT:I = 0x8

.field private static final VERBOSE:I = 0x2

.field private static final WARN:I = 0x5

.field private static sLogLevelValue:I

.field private static sLogOnOffValue:I


# instance fields
.field private isRetLogLevelValue:Z

.field private isRetLogSwitchValue:Z

.field private mMenu:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 34
    const-string v0, "1"

    sput-object v0, Lcom/android/huawei/projectmenu/LogSetting;->LOGCAT_VALUE_START:Ljava/lang/String;

    .line 35
    const-string v0, "0"

    sput-object v0, Lcom/android/huawei/projectmenu/LogSetting;->LOGCAT_VALUE_STOP:Ljava/lang/String;

    .line 36
    const-string v0, "persist.service.logcat.enable"

    sput-object v0, Lcom/android/huawei/projectmenu/LogSetting;->LOGCAT_KEY:Ljava/lang/String;

    .line 39
    sput v1, Lcom/android/huawei/projectmenu/LogSetting;->sLogOnOffValue:I

    .line 40
    sput v1, Lcom/android/huawei/projectmenu/LogSetting;->sLogLevelValue:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/huawei/projectmenu/LogSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/android/huawei/projectmenu/LogSetting;->isRetLogSwitchValue:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/huawei/projectmenu/LogSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/android/huawei/projectmenu/LogSetting;->isRetLogSwitchValue:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/huawei/projectmenu/LogSetting;->LOGCAT_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/huawei/projectmenu/LogSetting;->LOGCAT_VALUE_START:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    sput p0, Lcom/android/huawei/projectmenu/LogSetting;->sLogOnOffValue:I

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/huawei/projectmenu/LogSetting;->LOGCAT_VALUE_STOP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/huawei/projectmenu/LogSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/android/huawei/projectmenu/LogSetting;->isRetLogLevelValue:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/huawei/projectmenu/LogSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/android/huawei/projectmenu/LogSetting;->isRetLogLevelValue:Z

    return p1
.end method

.method static synthetic access$602(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    sput p0, Lcom/android/huawei/projectmenu/LogSetting;->sLogLevelValue:I

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f060024

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/LogSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f060025

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/LogSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/huawei/projectmenu/LogSetting;->mMenu:[Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/android/huawei/projectmenu/LogSetting;->mMenu:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/LogSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x7f060075

    .line 92
    packed-switch p1, :pswitch_data_0

    .line 203
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 94
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060024

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000e

    sget v2, Lcom/android/huawei/projectmenu/LogSetting;->sLogOnOffValue:I

    new-instance v3, Lcom/android/huawei/projectmenu/LogSetting$2;

    invoke-direct {v3, p0}, Lcom/android/huawei/projectmenu/LogSetting$2;-><init>(Lcom/android/huawei/projectmenu/LogSetting;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/huawei/projectmenu/LogSetting$1;

    invoke-direct {v1, p0}, Lcom/android/huawei/projectmenu/LogSetting$1;-><init>(Lcom/android/huawei/projectmenu/LogSetting;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 138
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000f

    sget v2, Lcom/android/huawei/projectmenu/LogSetting;->sLogLevelValue:I

    new-instance v3, Lcom/android/huawei/projectmenu/LogSetting$4;

    invoke-direct {v3, p0}, Lcom/android/huawei/projectmenu/LogSetting$4;-><init>(Lcom/android/huawei/projectmenu/LogSetting;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/huawei/projectmenu/LogSetting$3;

    invoke-direct {v1, p0}, Lcom/android/huawei/projectmenu/LogSetting$3;-><init>(Lcom/android/huawei/projectmenu/LogSetting;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 76
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 78
    packed-switch p3, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 80
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/LogSetting;->showDialog(I)V

    goto :goto_0

    .line 84
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/LogSetting;->showDialog(I)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
