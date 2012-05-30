.class Landroid/server/BluetoothPanProfileHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPanProfileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothPanProfileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothPanProfileHandler;


# direct methods
.method constructor <init>(Landroid/server/BluetoothPanProfileHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Landroid/server/BluetoothPanProfileHandler$1;->this$0:Landroid/server/BluetoothPanProfileHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 76
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 88
    .end local v1           #state:I
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v1       #state:I
    :pswitch_0
    iget-object v2, p0, Landroid/server/BluetoothPanProfileHandler$1;->this$0:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v2}, Landroid/server/BluetoothPanProfileHandler;->isTetheringOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const-string v2, "BluetoothPanProfileHandler"

    const-string v3, "Tethering On"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v2, p0, Landroid/server/BluetoothPanProfileHandler$1;->this$0:Landroid/server/BluetoothPanProfileHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/server/BluetoothPanProfileHandler;->setBluetoothTethering(Z)V

    goto :goto_0

    .line 83
    :cond_1
    const-string v2, "BluetoothPanProfileHandler"

    const-string v3, "Tethering Off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
