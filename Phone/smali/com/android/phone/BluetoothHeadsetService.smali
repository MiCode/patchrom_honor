.class public Lcom/android/phone/BluetoothHeadsetService;
.super Landroid/app/Service;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;,
        Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;
    }
.end annotation


# static fields
.field private static final PREF_NAME:Ljava/lang/String;

.field private static sHasStarted:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAg:Landroid/bluetooth/BluetoothAudioGateway;

.field private mAudioConnectedDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothService:Landroid/bluetooth/IBluetooth;

.field private mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

.field private final mConnectedStatusHandler:Landroid/os/Handler;

.field private final mConnectingStatusHandler:Landroid/os/Handler;

.field private mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;

.field private mHandler:Landroid/os/Handler;

.field private final mIncomingConnectionHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/phone/BluetoothHeadsetService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BluetoothHeadsetService;->PREF_NAME:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 151
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$1;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;

    .line 255
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$2;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 310
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$3;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$3;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;

    .line 423
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$4;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$4;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectingStatusHandler:Landroid/os/Handler;

    .line 454
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$5;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$5;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectedStatusHandler:Landroid/os/Handler;

    .line 587
    new-instance v0, Lcom/android/phone/BluetoothHeadsetService$6;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothHeadsetService$6;-><init>(Lcom/android/phone/BluetoothHeadsetService;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetoothHeadset$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAudioGateway;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mDeviceSdpQuery:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->getSdpRecordsAndConnect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectedStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    return-object p1
.end method

.method static synthetic access$1800(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectingStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAudioConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService;->mAudioConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->rejectIncomingConnection(Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V

    return-void
.end method

.method private adjustOtherHeadsetPriorities(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "connectedDevice"

    .prologue
    .line 506
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 507
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 509
    const/16 v2, 0x64

    invoke-direct {p0, v0, v2}, Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 512
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-void
.end method

.method private declared-synchronized getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 125
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 126
    .local v2, state:I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 131
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    invoke-virtual {v1, p1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 528
    :goto_0
    return v1

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Bluetooth HSHFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while getting priority for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private declared-synchronized getSdpRecordsAndConnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .parameter "device"

    .prologue
    const/16 v6, 0x3e8

    .line 532
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 581
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 538
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 542
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    .line 543
    .local v3, uuids:[Landroid/os/ParcelUuid;
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 544
    .local v1, localUuids:[Landroid/os/ParcelUuid;
    const/4 v2, 0x0

    .line 545
    .local v2, type:I
    if-eqz v3, :cond_5

    .line 546
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {v1, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 548
    const-string v4, "SDP UUID: TYPE_HANDSFREE"

    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 549
    const/4 v2, 0x2

    .line 550
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v4, v2}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$702(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 551
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v0

    .line 552
    .local v0, channel:I
    new-instance v4, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    invoke-direct {v4, p0, p1, v0, v2}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;-><init>(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 553
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 554
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 556
    :cond_2
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->start()V

    .line 557
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ge v4, v6, :cond_0

    .line 558
    const/16 v4, 0x3e8

    invoke-direct {p0, p1, v4}, Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 532
    .end local v0           #channel:I
    .end local v1           #localUuids:[Landroid/os/ParcelUuid;
    .end local v2           #type:I
    .end local v3           #uuids:[Landroid/os/ParcelUuid;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 561
    .restart local v1       #localUuids:[Landroid/os/ParcelUuid;
    .restart local v2       #type:I
    .restart local v3       #uuids:[Landroid/os/ParcelUuid;
    :cond_3
    :try_start_2
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {v1, v4}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 563
    const-string v4, "SDP UUID: TYPE_HEADSET"

    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 564
    const/4 v2, 0x1

    .line 565
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v4, v2}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$702(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 566
    sget-object v4, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v0

    .line 567
    .restart local v0       #channel:I
    new-instance v4, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    invoke-direct {v4, p0, p1, v0, v2}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;-><init>(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;II)V

    iput-object v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 568
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 569
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 571
    :cond_4
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;->start()V

    .line 572
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ge v4, v6, :cond_0

    .line 573
    const/16 v4, 0x3e8

    invoke-direct {p0, p1, v4}, Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    .line 578
    .end local v0           #channel:I
    :cond_5
    const-string v4, "SDP UUID: TYPE_UNKNOWN"

    invoke-static {v4}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 579
    iget-object v4, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v4, v2}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$702(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 580
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 925
    const-string v0, "Bluetooth HSHFP"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    return-void
.end method

.method private rejectIncomingConnection(Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    .line 249
    new-instance v0, Landroid/bluetooth/HeadsetBase;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p1, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget v4, p1, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mSocketFd:I

    iget v5, p1, Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;->mRfcommChan:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/HeadsetBase;-><init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V

    .line 251
    .local v0, headset:Landroid/bluetooth/HeadsetBase;
    invoke-virtual {v0}, Landroid/bluetooth/HeadsetBase;->disconnect()V

    .line 252
    return-void
.end method

.method private setPriority(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 516
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Bluetooth HSHFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while setting priority for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized setState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v5, 0x2

    .line 471
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v2

    .line 472
    .local v2, prevState:I
    if-eq p2, v2, :cond_3

    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Headset  state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 475
    if-ne v2, v5, :cond_0

    .line 477
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->disconnectHeadset()V

    .line 479
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 481
    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 483
    if-nez p2, :cond_1

    .line 484
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2102(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;

    .line 485
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$702(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 488
    :cond_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v3, p2}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$002(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;I)I

    .line 490
    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/BluetoothHeadsetService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 491
    if-ne p2, v5, :cond_2

    .line 493
    const/16 v3, 0x3e8

    invoke-direct {p0, p1, v3}, Lcom/android/phone/BluetoothHeadsetService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)V

    .line 494
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHeadsetService;->adjustOtherHeadsetPriorities(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    const/4 v4, 0x1

    invoke-interface {v3, p1, v4, p2, v2}, Landroid/bluetooth/IBluetooth;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 503
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 499
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 500
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Bluetooth HSHFP"

    const-string v4, "sendConnectionStateChange: exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 471
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #prevState:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBinder:Landroid/bluetooth/IBluetoothHeadset$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 80
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 81
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/phone/BluetoothHeadsetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mPowerManager:Landroid/os/PowerManager;

    .line 82
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 83
    new-instance v2, Landroid/bluetooth/BluetoothAudioGateway;

    iget-object v3, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v3}, Landroid/bluetooth/BluetoothAudioGateway;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    .line 84
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v2, "android.bluetooth.device.action.UUID"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/BluetoothHeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 92
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 93
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Bluetooth service not available"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_0
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    .line 96
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 910
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 911
    const-string v1, "Stopping BluetoothHeadsetService"

    invoke-static {v1}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 912
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/BluetoothHeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 913
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothDisabled()V

    .line 914
    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAudioGateway;->stop()V

    .line 915
    sput-boolean v2, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    .line 916
    invoke-direct {p0}, Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 917
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 918
    invoke-direct {p0, v0, v2}, Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V

    .line 920
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 137
    const-string v0, "Bluetooth HSHFP"

    const-string v1, "Stopping BluetoothHeadsetService: device does not have BT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/android/phone/BluetoothHeadsetService;->stopSelf()V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    sget-boolean v0, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    if-nez v0, :cond_0

    .line 141
    const-string v0, "Starting BluetoothHeadsetService"

    invoke-static {v0}, Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mAg:Landroid/bluetooth/BluetoothAudioGateway;

    iget-object v1, p0, Lcom/android/phone/BluetoothHeadsetService;->mIncomingConnectionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;->start(Landroid/os/Handler;)Z

    .line 144
    iget-object v0, p0, Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->onBluetoothEnabled()V

    .line 146
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/BluetoothHeadsetService;->sHasStarted:Z

    goto :goto_0
.end method
