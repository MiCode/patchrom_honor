.class public Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;
.super Landroid/app/ListActivity;
.source "UpdateSDCardAndTouchscreen.java"


# static fields
.field private static final BATTERY_LEVER_LIMIT:I = 0x14

.field private static final BATTERY_VOLTAGE_LIMIT:I = 0xe74

.field private static final DIALOG_UPDATE_SDCARD:I = 0x0

.field private static final DIALOG_UPDATE_TOUCHSCREEN:I = 0x1

.field private static final LIST_UPDATE_COMPASS:I = 0x2

.field private static final LIST_UPDATE_SDCARD:I = 0x0

.field private static final LIST_UPDATE_TOUCHSCREEN:I = 0x1

.field private static final QUERY_TOUCHSCREEN_VERSION:I = 0x0

.field private static final UPDATE_TOUCHSCREEN:I = 0x1

.field private static iBatteryLevel:I

.field private static iBatteryVoltage:I

.field private static mMenu:[Ljava/lang/String;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput v0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->iBatteryLevel:I

    .line 42
    sput v0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->iBatteryVoltage:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 198
    new-instance v0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen$3;

    invoke-direct {v0, p0}, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen$3;-><init>(Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;)V

    iput-object v0, p0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->iBatteryVoltage:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput p0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->iBatteryVoltage:I

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->iBatteryLevel:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    sput p0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->iBatteryLevel:I

    return p0
.end method

.method public static isHasCard()Z
    .locals 2

    .prologue
    .line 95
    const-string v0, "removed"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bad_removal"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f06008f

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f060090

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f060091

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->mMenu:[Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    sget-object v2, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->mMenu:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const v5, 0x7f060075

    const v4, 0x7f060074

    const/4 v0, 0x0

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_0
    return-object v0

    .line 105
    :pswitch_0
    const-string v1, "BatteryInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Level : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->iBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v1, "BatteryInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Voltage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->iBatteryVoltage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget v1, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->iBatteryLevel:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    sget v1, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->iBatteryVoltage:I

    const/16 v2, 0xe74

    if-ge v1, v2, :cond_1

    .line 109
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0600c1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 116
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060093

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen$1;

    invoke-direct {v2, p0}, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen$1;-><init>(Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 138
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060092

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050011

    const/4 v3, -0x1

    new-instance v4, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen$2;

    invoke-direct {v4, p0}, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen$2;-><init>(Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 67
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 68
    packed-switch p3, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 70
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->showDialog(I)V

    goto :goto_0

    .line 75
    :pswitch_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->showDialog(I)V

    goto :goto_0

    .line 79
    :pswitch_2
    const v1, 0x7f060098

    .line 80
    .local v1, message:I
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->updateCompass()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const v1, 0x7f060097

    .line 83
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060074

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 87
    .local v0, dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 195
    iget-object v0, p0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 188
    iget-object v0, p0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    return-void
.end method
