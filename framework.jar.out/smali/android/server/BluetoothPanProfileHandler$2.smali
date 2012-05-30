.class Landroid/server/BluetoothPanProfileHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPanProfileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/server/BluetoothPanProfileHandler;->setBluetoothTethering(Z)V
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
    .line 138
    iput-object p1, p0, Landroid/server/BluetoothPanProfileHandler$2;->this$0:Landroid/server/BluetoothPanProfileHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 141
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/16 v1, 0xa

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Landroid/server/BluetoothPanProfileHandler$2;->this$0:Landroid/server/BluetoothPanProfileHandler;

    #setter for: Landroid/server/BluetoothPanProfileHandler;->mTetheringOn:Z
    invoke-static {v0, v2}, Landroid/server/BluetoothPanProfileHandler;->access$002(Landroid/server/BluetoothPanProfileHandler;Z)Z

    .line 144
    iget-object v0, p0, Landroid/server/BluetoothPanProfileHandler$2;->this$0:Landroid/server/BluetoothPanProfileHandler;

    #getter for: Landroid/server/BluetoothPanProfileHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/server/BluetoothPanProfileHandler;->access$200(Landroid/server/BluetoothPanProfileHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothPanProfileHandler$2;->this$0:Landroid/server/BluetoothPanProfileHandler;

    #getter for: Landroid/server/BluetoothPanProfileHandler;->mTetheringReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Landroid/server/BluetoothPanProfileHandler;->access$100(Landroid/server/BluetoothPanProfileHandler;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    iget-object v0, p0, Landroid/server/BluetoothPanProfileHandler$2;->this$0:Landroid/server/BluetoothPanProfileHandler;

    invoke-virtual {v0}, Landroid/server/BluetoothPanProfileHandler;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Landroid/server/BluetoothPanProfileHandler$2;->this$0:Landroid/server/BluetoothPanProfileHandler;

    #getter for: Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/server/BluetoothPanProfileHandler;->access$300(Landroid/server/BluetoothPanProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/server/BluetoothService;->setBluetoothPanSdpNative(I)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Landroid/server/BluetoothPanProfileHandler$2;->this$0:Landroid/server/BluetoothPanProfileHandler;

    #getter for: Landroid/server/BluetoothPanProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/server/BluetoothPanProfileHandler;->access$300(Landroid/server/BluetoothPanProfileHandler;)Landroid/server/BluetoothService;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->setBluetoothPanSdpNative(I)V

    goto :goto_0
.end method
