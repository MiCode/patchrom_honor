.class Landroid/server/BluetoothEventLoop$EventLoopHandler;
.super Landroid/os/Handler;
.source "BluetoothEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventLoopHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothEventLoop;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothEventLoop;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothEventLoop;Landroid/server/BluetoothEventLoop$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Landroid/server/BluetoothEventLoop$EventLoopHandler;-><init>(Landroid/server/BluetoothEventLoop;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 193
    const/4 v0, 0x0

    .line 196
    .local v0, address:Ljava/lang/String;
    const/4 v2, 0x0

    .line 198
    .local v2, objs:[Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 200
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #address:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 201
    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 202
    iget-object v3, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->access$200(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Landroid/server/BluetoothService;->setPairingConfirmation(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 208
    :sswitch_1
    iget-object v3, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->access$200(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->listInState(I)[Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, devices:[Ljava/lang/String;
    array-length v3, v1

    if-eqz v3, :cond_0

    .line 211
    array-length v3, v1

    if-le v3, v6, :cond_1

    .line 212
    const-string v3, "BluetoothEventLoop"

    const-string v4, " There is more than one device in the Bonding State"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :cond_1
    aget-object v0, v1, v7

    .line 216
    iget-object v3, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->access$200(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v3

    const/16 v4, 0xa

    const/16 v5, 0x8

    invoke-virtual {v3, v0, v4, v5}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    goto :goto_0

    .line 223
    .end local v1           #devices:[Ljava/lang/String;
    :sswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 224
    iget-object v5, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    aget-object v3, v2, v7

    check-cast v3, Ljava/lang/String;

    aget-object v4, v2, v6

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    #calls: Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v5, v3, v4}, Landroid/server/BluetoothEventLoop;->access$300(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :sswitch_3
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    #calls: Landroid/server/BluetoothEventLoop;->processPropertyChangedEvent([Ljava/lang/String;)V
    invoke-static {v4, v3}, Landroid/server/BluetoothEventLoop;->access$400(Landroid/server/BluetoothEventLoop;[Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 231
    iget-object v5, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    aget-object v3, v2, v7

    check-cast v3, Ljava/lang/String;

    aget-object v4, v2, v6

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    #calls: Landroid/server/BluetoothEventLoop;->processDevicePropertyChangedEvent(Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v5, v3, v4}, Landroid/server/BluetoothEventLoop;->access$500(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :sswitch_5
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/server/BluetoothEventLoop;->processDeviceCreatedEvent(Ljava/lang/String;)V
    invoke-static {v4, v3}, Landroid/server/BluetoothEventLoop;->access$600(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :sswitch_6
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/server/BluetoothEventLoop;->processDeviceRemovedEvent(Ljava/lang/String;)V
    invoke-static {v4, v3}, Landroid/server/BluetoothEventLoop;->access$700(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
    .end sparse-switch
.end method
