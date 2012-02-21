.class final Landroid/server/BluetoothHealthProfileHandler;
.super Ljava/lang/Object;
.source "BluetoothHealthProfileHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MESSAGE_CONNECT_CHANNEL:I = 0x2

.field private static final MESSAGE_REGISTER_APPLICATION:I = 0x0

.field private static final MESSAGE_UNREGISTER_APPLICATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothHealthProfileHandler"

.field private static final sChannelId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sInstance:Landroid/server/BluetoothHealthProfileHandler;


# instance fields
.field private mBluetoothService:Landroid/server/BluetoothService;

.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothHealthAppConfiguration;",
            "Landroid/bluetooth/IBluetoothHealthCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHealthAppConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothHealthAppConfiguration;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHealthChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/server/BluetoothHealthProfileHandler$HealthChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mHealthDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/server/BluetoothHealthProfileHandler;->sChannelId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/server/BluetoothHealthProfileHandler$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothHealthProfileHandler$1;-><init>(Landroid/server/BluetoothHealthProfileHandler;)V

    iput-object v0, p0, Landroid/server/BluetoothHealthProfileHandler;->mHandler:Landroid/os/Handler;

    .line 158
    iput-object p2, p0, Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthAppConfigs:Ljava/util/HashMap;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthChannels:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthDevices:Ljava/util/HashMap;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothHealthProfileHandler;->mCallbacks:Ljava/util/HashMap;

    .line 163
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothHealthProfileHandler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/server/BluetoothHealthProfileHandler;->getChannelId()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/server/BluetoothHealthProfileHandler;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/server/BluetoothHealthProfileHandler;->getStringRole(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/server/BluetoothHealthProfileHandler;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p6}, Landroid/server/BluetoothHealthProfileHandler;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothHealthProfileHandler;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothHealthProfileHandler;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/server/BluetoothHealthProfileHandler;->getStringChannelType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/BluetoothHealthProfileHandler;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->callHealthApplicationStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    return-void
.end method

.method static synthetic access$500(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler;->mCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthAppConfigs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Landroid/server/BluetoothHealthProfileHandler;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthChannels:Ljava/util/ArrayList;

    return-object v0
.end method

.method private broadcastHealthDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 6
    .parameter "device"
    .parameter "prevChannelState"
    .parameter "newChannelState"

    .prologue
    const/4 v5, 0x2

    .line 587
    iget-object v3, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthDevices:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 588
    iget-object v3, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthDevices:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthDevices:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 592
    .local v1, currDeviceState:I
    invoke-direct {p0, p3}, Landroid/server/BluetoothHealthProfileHandler;->convertState(I)I

    move-result v2

    .line 594
    .local v2, newDeviceState:I
    if-eq v1, v2, :cond_1

    .line 596
    packed-switch v1, :pswitch_data_0

    .line 634
    :cond_1
    :goto_0
    return-void

    .line 598
    :pswitch_0
    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothHealthProfileHandler;->updateAndSendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 602
    :pswitch_1
    if-ne v2, v5, :cond_2

    .line 603
    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothHealthProfileHandler;->updateAndSendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 606
    :cond_2
    new-array v3, v5, [I

    fill-array-data v3, :array_0

    invoke-direct {p0, p1, v3}, Landroid/server/BluetoothHealthProfileHandler;->findChannelByStates(Landroid/bluetooth/BluetoothDevice;[I)Ljava/util/List;

    move-result-object v0

    .line 609
    .local v0, chan:Ljava/util/List;,"Ljava/util/List<Landroid/server/BluetoothHealthProfileHandler$HealthChannel;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 610
    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothHealthProfileHandler;->updateAndSendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 616
    .end local v0           #chan:Ljava/util/List;,"Ljava/util/List<Landroid/server/BluetoothHealthProfileHandler$HealthChannel;>;"
    :pswitch_2
    new-array v3, v5, [I

    fill-array-data v3, :array_1

    invoke-direct {p0, p1, v3}, Landroid/server/BluetoothHealthProfileHandler;->findChannelByStates(Landroid/bluetooth/BluetoothDevice;[I)Ljava/util/List;

    move-result-object v0

    .line 619
    .restart local v0       #chan:Ljava/util/List;,"Ljava/util/List<Landroid/server/BluetoothHealthProfileHandler$HealthChannel;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 620
    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothHealthProfileHandler;->updateAndSendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 625
    .end local v0           #chan:Ljava/util/List;,"Ljava/util/List<Landroid/server/BluetoothHealthProfileHandler$HealthChannel;>;"
    :pswitch_3
    new-array v3, v5, [I

    fill-array-data v3, :array_2

    invoke-direct {p0, p1, v3}, Landroid/server/BluetoothHealthProfileHandler;->findChannelByStates(Landroid/bluetooth/BluetoothDevice;[I)Ljava/util/List;

    move-result-object v0

    .line 628
    .restart local v0       #chan:Ljava/util/List;,"Ljava/util/List<Landroid/server/BluetoothHealthProfileHandler$HealthChannel;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 629
    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothHealthProfileHandler;->updateAndSendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 606
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 616
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 625
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private callHealthApplicationStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    .locals 4
    .parameter "config"
    .parameter "status"

    .prologue
    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Health Device Application: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " State Change: status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 523
    iget-object v2, p0, Landroid/server/BluetoothHealthProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothHealthCallback;

    .line 524
    .local v0, callback:Landroid/bluetooth/IBluetoothHealthCallback;
    if-eqz v0, :cond_0

    .line 526
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothHealthCallback;->onHealthAppConfigurationStatusChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v1

    .line 528
    .local v1, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler;->errorLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    .locals 8
    .parameter "config"
    .parameter "device"
    .parameter "prevState"
    .parameter "state"
    .parameter "fd"
    .parameter "id"

    .prologue
    .line 494
    invoke-direct {p0, p2, p3, p4}, Landroid/server/BluetoothHealthProfileHandler;->broadcastHealthDeviceStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Health Device Callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State Change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 499
    const/4 v5, 0x0

    .line 500
    .local v5, dupedFd:Landroid/os/ParcelFileDescriptor;
    if-eqz p5, :cond_0

    .line 502
    :try_start_0
    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 509
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/server/BluetoothHealthProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothHealthCallback;

    .line 510
    .local v0, callback:Landroid/bluetooth/IBluetoothHealthCallback;
    if-eqz v0, :cond_1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    .line 512
    :try_start_1
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothHealthCallback;->onHealthChannelStateChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 517
    :cond_1
    :goto_1
    return-void

    .line 503
    .end local v0           #callback:Landroid/bluetooth/IBluetoothHealthCallback;
    :catch_0
    move-exception v7

    .line 504
    .local v7, e:Ljava/io/IOException;
    const/4 v5, 0x0

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while duping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    .line 513
    .end local v7           #e:Ljava/io/IOException;
    .restart local v0       #callback:Landroid/bluetooth/IBluetoothHealthCallback;
    :catch_1
    move-exception v7

    .line 514
    .local v7, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler;->errorLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private convertState(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 650
    packed-switch p1, :pswitch_data_0

    .line 660
    const-string v0, "Mismatch in Channel and Health Device State"

    invoke-static {v0}, Landroid/server/BluetoothHealthProfileHandler;->errorLog(Ljava/lang/String;)V

    .line 661
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 652
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 654
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 656
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 658
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 650
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static debugLog(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 666
    return-void
.end method

.method private static errorLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 669
    const-string v0, "BluetoothHealthProfileHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-void
.end method

.method private findChannelById(I)Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    .locals 3
    .parameter "id"

    .prologue
    .line 297
    iget-object v2, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthChannels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    .line 298
    .local v0, chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mId:I
    invoke-static {v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1100(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 300
    .end local v0           #chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findChannelByPath(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    .locals 3
    .parameter "device"
    .parameter "path"

    .prologue
    .line 304
    iget-object v2, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthChannels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    .line 305
    .local v0, chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelPath:Ljava/lang/String;
    invoke-static {v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1500(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1000(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    .end local v0           #chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findChannelByStates(Landroid/bluetooth/BluetoothDevice;[I)Ljava/util/List;
    .locals 8
    .parameter "device"
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/server/BluetoothHealthProfileHandler$HealthChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v2, channels:Ljava/util/List;,"Ljava/util/List<Landroid/server/BluetoothHealthProfileHandler$HealthChannel;>;"
    iget-object v7, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthChannels:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    .line 313
    .local v1, chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1000(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 314
    move-object v0, p2

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget v6, v0, v4

    .line 315
    .local v6, state:I
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v1}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$900(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v7

    if-ne v7, v6, :cond_1

    .line 316
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 321
    .end local v0           #arr$:[I
    .end local v1           #chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #state:I
    :cond_2
    return-object v2
.end method

.method private findConnectingChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    .locals 4
    .parameter "device"
    .parameter "config"

    .prologue
    .line 326
    iget-object v2, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthChannels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    .line 327
    .local v0, chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1000(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$800(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$900(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 330
    .end local v0           #chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findHealthApplication(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 7
    .parameter "device"
    .parameter "channelPath"

    .prologue
    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, config:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->findChannelByPath(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    move-result-object v0

    .line 409
    .local v0, chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    if-eqz v0, :cond_1

    .line 410
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$800(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v1

    .line 425
    :cond_0
    :goto_0
    return-object v1

    .line 412
    :cond_1
    iget-object v5, p0, Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p2}, Landroid/server/BluetoothService;->getChannelApplicationNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, configPath:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 414
    const-string v5, "Config path is null for application"

    invoke-static {v5}, Landroid/server/BluetoothHealthProfileHandler;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_2
    iget-object v5, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 418
    .local v3, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHealthAppConfiguration;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 419
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #config:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    check-cast v1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .restart local v1       #config:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_1

    .line 422
    .end local v3           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/bluetooth/BluetoothHealthAppConfiguration;Ljava/lang/String;>;"
    :cond_4
    if-nez v1, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No associated application for path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothHealthProfileHandler;->errorLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getChannelId()I
    .locals 5

    .prologue
    .line 258
    :cond_0
    sget-object v4, Landroid/server/BluetoothHealthProfileHandler;->sChannelId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 259
    .local v3, id:I
    const/4 v1, 0x0

    .line 260
    .local v1, found:Z
    iget-object v4, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthChannels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    .line 261
    .local v0, chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mId:I
    invoke-static {v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1100(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 263
    .end local v0           #chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    :cond_2
    if-nez v1, :cond_0

    .line 264
    return v3
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothHealthProfileHandler;
    .locals 2
    .parameter "context"
    .parameter "service"

    .prologue
    .line 167
    const-class v1, Landroid/server/BluetoothHealthProfileHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/server/BluetoothHealthProfileHandler;->sInstance:Landroid/server/BluetoothHealthProfileHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/server/BluetoothHealthProfileHandler;

    invoke-direct {v0, p0, p1}, Landroid/server/BluetoothHealthProfileHandler;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    sput-object v0, Landroid/server/BluetoothHealthProfileHandler;->sInstance:Landroid/server/BluetoothHealthProfileHandler;

    .line 168
    :cond_0
    sget-object v0, Landroid/server/BluetoothHealthProfileHandler;->sInstance:Landroid/server/BluetoothHealthProfileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMainChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    .locals 3
    .parameter "device"
    .parameter "config"

    .prologue
    .line 197
    iget-object v2, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthChannels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    .line 198
    .local v0, chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1000(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$800(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mMainChannel:Z
    invoke-static {v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1400(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    .end local v0           #chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStringChannelType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 231
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 232
    const-string v0, "Reliable"

    .line 236
    :goto_0
    return-object v0

    .line 233
    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 234
    const-string v0, "Streaming"

    goto :goto_0

    .line 236
    :cond_1
    const-string v0, "Any"

    goto :goto_0
.end method

.method private getStringRole(I)Ljava/lang/String;
    .locals 1
    .parameter "role"

    .prologue
    .line 241
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 242
    const-string v0, "Sink"

    .line 246
    :goto_0
    return-object v0

    .line 243
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 244
    const-string v0, "Streaming"

    goto :goto_0

    .line 246
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAndSendIntent(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2
    .parameter "device"
    .parameter "prevDeviceState"
    .parameter "newDeviceState"

    .prologue
    .line 638
    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthDevices:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, p3, p2}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 641
    return-void
.end method


# virtual methods
.method connectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 11
    .parameter "device"
    .parameter "config"
    .parameter "channelType"

    .prologue
    .line 207
    iget-object v1, p0, Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, deviceObjectPath:Ljava/lang/String;
    if-nez v9, :cond_0

    const/4 v1, 0x0

    .line 227
    :goto_0
    return v1

    .line 211
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 212
    .local v8, configPath:Ljava/lang/String;
    if-nez v8, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 214
    :cond_1
    new-instance v0, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;-><init>(Landroid/server/BluetoothHealthProfileHandler;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/os/ParcelFileDescriptor;ZLjava/lang/String;)V

    .line 215
    .local v0, chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    const/4 v1, 0x1

    #setter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v0, v1}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$902(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;I)I

    .line 216
    #setter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelType:I
    invoke-static {v0, p3}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1202(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;I)I

    .line 217
    iget-object v1, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthChannels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    const/4 v4, 0x0

    .line 220
    .local v4, prevState:I
    const/4 v5, 0x1

    .line 221
    .local v5, state:I
    const/4 v6, 0x0

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mId:I
    invoke-static {v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1100(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Landroid/server/BluetoothHealthProfileHandler;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    .line 223
    iget-object v1, p0, Landroid/server/BluetoothHealthProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 224
    .local v10, msg:Landroid/os/Message;
    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Landroid/server/BluetoothHealthProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    const/4 v1, 0x1

    goto :goto_0
.end method

.method connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 1
    .parameter "device"
    .parameter "config"

    .prologue
    .line 192
    const/16 v0, 0xc

    invoke-virtual {p0, p1, p2, v0}, Landroid/server/BluetoothHealthProfileHandler;->connectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    return v0
.end method

.method disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 10
    .parameter "device"
    .parameter "config"
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 269
    invoke-direct {p0, p3}, Landroid/server/BluetoothHealthProfileHandler;->findChannelById(I)Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    move-result-object v7

    .line 270
    .local v7, chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    if-nez v7, :cond_0

    move v0, v9

    .line 292
    :goto_0
    return v0

    .line 274
    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 277
    .local v8, deviceObjectPath:Ljava/lang/String;
    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelPath:Ljava/lang/String;
    invoke-static {v7}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1500(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->releaseChannelFdNative(Ljava/lang/String;)Z

    .line 279
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v7}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$900(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v3

    .line 280
    .local v3, prevState:I
    const/4 v0, 0x3

    #setter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v7, v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$902(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;I)I

    .line 281
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v7}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$900(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v4

    const/4 v5, 0x0

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mId:I
    invoke-static {v7}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1100(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/server/BluetoothHealthProfileHandler;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    .line 284
    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelPath:Ljava/lang/String;
    invoke-static {v7}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1500(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Ljava/lang/String;

    move-result-object v1

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mId:I
    invoke-static {v7}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1100(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v2

    invoke-virtual {v0, v8, v1, v2}, Landroid/server/BluetoothService;->destroyChannelNative(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v7}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$900(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v3

    .line 287
    const/4 v0, 0x2

    #setter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v7, v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$902(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;I)I

    .line 288
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v7}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$900(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v4

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static {v7}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1600(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mId:I
    invoke-static {v7}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1100(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/server/BluetoothHealthProfileHandler;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    move v0, v9

    .line 290
    goto :goto_0

    .line 292
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getConnectedHealthDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/server/BluetoothHealthProfileHandler;->lookupHealthDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    .line 543
    .local v0, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    return-object v0
.end method

.method getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 534
    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 535
    const/4 v0, 0x0

    .line 537
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Landroid/server/BluetoothHealthProfileHandler;->lookupHealthDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    .line 548
    .local v0, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    return-object v0
.end method

.method getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .parameter "device"
    .parameter "config"

    .prologue
    const/4 v5, 0x0

    .line 335
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothHealthProfileHandler;->getMainChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    move-result-object v0

    .line 336
    .local v0, chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    if-eqz v0, :cond_0

    .line 337
    const/4 v4, 0x0

    .line 339
    .local v4, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static {v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1600(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 366
    .end local v4           #pfd:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v4

    .line 341
    .restart local v4       #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move-object v4, v5

    .line 342
    goto :goto_0

    .line 346
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    iget-object v6, p0, Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, objectPath:Ljava/lang/String;
    if-nez v3, :cond_1

    move-object v4, v5

    goto :goto_0

    .line 350
    :cond_1
    iget-object v6, p0, Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v6, v3}, Landroid/server/BluetoothService;->getMainChannelNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, mainChannelPath:Ljava/lang/String;
    if-nez v2, :cond_2

    move-object v4, v5

    goto :goto_0

    .line 356
    :cond_2
    invoke-direct {p0, p1, v2}, Landroid/server/BluetoothHealthProfileHandler;->findChannelByPath(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    move-result-object v0

    .line 357
    if-nez v0, :cond_3

    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Main Channel present but we don\'t have any account of it:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothHealthProfileHandler;->errorLog(Ljava/lang/String;)V

    move-object v4, v5

    .line 360
    goto :goto_0

    .line 362
    :cond_3
    const/4 v6, 0x1

    #setter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mMainChannel:Z
    invoke-static {v0, v6}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1402(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;Z)Z

    .line 364
    :try_start_1
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static {v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1600(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_0

    .line 365
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    move-object v4, v5

    .line 366
    goto :goto_0
.end method

.method lookupHealthDevicesMatchingStates([I)Ljava/util/List;
    .locals 9
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v3, healthDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 555
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothHealthProfileHandler;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 556
    .local v2, healthDeviceState:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_0

    aget v7, v0, v5

    .line 557
    .local v7, state:I
    if-ne v7, v2, :cond_1

    .line 558
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 556
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 563
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #healthDeviceState:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #state:I
    :cond_2
    return-object v3
.end method

.method onHealthDeviceChannelChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 18
    .parameter "devicePath"
    .parameter "channelPath"
    .parameter "exists"

    .prologue
    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onHealthDeviceChannelChanged: devicePath: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ChannelPath: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "Exists: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothHealthProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 432
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v13

    .line 433
    .local v13, adapter:Landroid/bluetooth/BluetoothAdapter;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 434
    .local v14, address:Ljava/lang/String;
    if-nez v14, :cond_0

    .line 490
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-virtual {v13, v14}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 438
    .local v4, device:Landroid/bluetooth/BluetoothDevice;
    const/4 v9, 0x0

    .line 441
    .local v9, prevState:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothHealthProfileHandler;->findHealthApplication(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v5

    .line 443
    .local v5, config:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    if-eqz p3, :cond_6

    .line 444
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/server/BluetoothHealthProfileHandler;->findConnectingChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    move-result-object v2

    .line 445
    .local v2, channel:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    if-nez v2, :cond_1

    .line 446
    new-instance v2, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    .end local v2           #channel:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;-><init>(Landroid/server/BluetoothHealthProfileHandler;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/os/ParcelFileDescriptor;ZLjava/lang/String;)V

    .line 448
    .restart local v2       #channel:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    const/4 v3, 0x0

    #setter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v2, v3}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$902(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;I)I

    .line 449
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothHealthProfileHandler;->mHealthChannels:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_1
    move-object/from16 v0, p2

    #setter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelPath:Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1502(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->getChannelFdNative(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 454
    .local v15, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v15, :cond_2

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error obtaining fd for channel:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothHealthProfileHandler;->errorLog(Ljava/lang/String;)V

    .line 456
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mId:I
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1100(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v3}, Landroid/server/BluetoothHealthProfileHandler;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    goto :goto_0

    .line 459
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/server/BluetoothHealthProfileHandler;->getMainChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    move-result-object v3

    if-nez v3, :cond_3

    const/16 v16, 0x0

    .line 461
    .local v16, mainChannel:Z
    :goto_1
    if-nez v16, :cond_5

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->getMainChannelNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 464
    .local v17, mainChannelPath:Ljava/lang/String;
    if-nez v17, :cond_4

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Main Channel Path is null for devicePath:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothHealthProfileHandler;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 459
    .end local v16           #mainChannel:Z
    .end local v17           #mainChannelPath:Ljava/lang/String;
    :cond_3
    const/16 v16, 0x1

    goto :goto_1

    .line 468
    .restart local v16       #mainChannel:Z
    .restart local v17       #mainChannelPath:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v16, 0x1

    .line 471
    .end local v17           #mainChannelPath:Ljava/lang/String;
    :cond_5
    #setter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static {v2, v15}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1602(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 472
    move/from16 v0, v16

    #setter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mMainChannel:Z
    invoke-static {v2, v0}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1402(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;Z)Z

    .line 473
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$900(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v9

    .line 474
    const/4 v10, 0x2

    .line 487
    .end local v15           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v16           #mainChannel:Z
    .local v10, state:I
    :goto_2
    #setter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v2, v10}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$902(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;I)I

    .line 488
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1600(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mId:I
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1100(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v12

    move-object/from16 v6, p0

    move-object v7, v5

    move-object v8, v4

    invoke-direct/range {v6 .. v12}, Landroid/server/BluetoothHealthProfileHandler;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    goto/16 :goto_0

    .line 476
    .end local v2           #channel:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    .end local v10           #state:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothHealthProfileHandler;->findChannelByPath(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    move-result-object v2

    .line 477
    .restart local v2       #channel:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    if-nez v2, :cond_7

    .line 478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Channel not found:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothHealthProfileHandler;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 481
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/server/BluetoothHealthProfileHandler;->mHealthChannels:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 483
    const/4 v3, 0x0

    #setter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mChannelFd:Landroid/os/ParcelFileDescriptor;
    invoke-static {v2, v3}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1602(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 484
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v2}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$900(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v9

    .line 485
    const/4 v10, 0x0

    .restart local v10       #state:I
    goto :goto_2
.end method

.method onHealthDeviceChannelConnectionError(II)V
    .locals 8
    .parameter "chanCode"
    .parameter "state"

    .prologue
    .line 397
    invoke-direct {p0, p1}, Landroid/server/BluetoothHealthProfileHandler;->findChannelById(I)Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    move-result-object v7

    .line 398
    .local v7, channel:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    if-nez v7, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No record of this channel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothHealthProfileHandler;->errorLog(Ljava/lang/String;)V

    .line 400
    :cond_0
    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    invoke-static {v7}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$800(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v1

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1000(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    #getter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mState:I
    invoke-static {v7}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$900(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;)I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    move v4, p2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/server/BluetoothHealthProfileHandler;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    .line 402
    return-void
.end method

.method onHealthDevicePropertyChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "devicePath"
    .parameter "channelPath"

    .prologue
    .line 372
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 373
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v5, p0, Landroid/server/BluetoothHealthProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, address:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    const-string v5, "/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 382
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 383
    .local v4, device:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v4, p2}, Landroid/server/BluetoothHealthProfileHandler;->findHealthApplication(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    .line 385
    .local v3, config:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    if-eqz v3, :cond_0

    .line 386
    invoke-direct {p0, v4, p2}, Landroid/server/BluetoothHealthProfileHandler;->findChannelByPath(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/server/BluetoothHealthProfileHandler$HealthChannel;

    move-result-object v2

    .line 387
    .local v2, chan:Landroid/server/BluetoothHealthProfileHandler$HealthChannel;
    if-nez v2, :cond_2

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Health Channel is not present:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothHealthProfileHandler;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_2
    const/4 v5, 0x1

    #setter for: Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->mMainChannel:Z
    invoke-static {v2, v5}, Landroid/server/BluetoothHealthProfileHandler$HealthChannel;->access$1402(Landroid/server/BluetoothHealthProfileHandler$HealthChannel;Z)Z

    goto :goto_0
.end method

.method registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z
    .locals 3
    .parameter "config"
    .parameter "callback"

    .prologue
    .line 173
    iget-object v1, p0, Landroid/server/BluetoothHealthProfileHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 174
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 175
    iget-object v1, p0, Landroid/server/BluetoothHealthProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    iget-object v1, p0, Landroid/server/BluetoothHealthProfileHandler;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const/4 v1, 0x1

    return v1
.end method

.method unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 4
    .parameter "config"

    .prologue
    const/4 v2, 0x1

    .line 181
    iget-object v3, p0, Landroid/server/BluetoothHealthProfileHandler;->mHealthAppConfigs:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    .local v1, path:Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 187
    :goto_0
    return v2

    .line 184
    :cond_0
    iget-object v3, p0, Landroid/server/BluetoothHealthProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    iget-object v3, p0, Landroid/server/BluetoothHealthProfileHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
