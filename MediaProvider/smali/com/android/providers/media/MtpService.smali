.class public Lcom/android/providers/media/MtpService;
.super Landroid/app/Service;
.source "MtpService.java"


# static fields
.field private static final PTP_DIRECTORIES:[Ljava/lang/String;


# instance fields
.field private final mBinder:Lcom/android/providers/media/IMtpService$Stub;

.field private mDatabase:Landroid/mtp/MtpDatabase;

.field private mMtpDisabled:Z

.field private mPtpMode:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServer:Landroid/mtp/MtpServer;

.field private final mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private mVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MtpService;->PTP_DIRECTORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    new-instance v0, Lcom/android/providers/media/MtpService$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$1;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    new-instance v0, Lcom/android/providers/media/MtpService$2;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$2;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    .line 186
    new-instance v0, Lcom/android/providers/media/MtpService$3;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$3;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/media/MtpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/providers/media/MtpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/providers/media/MtpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/providers/media/MtpService;->addStorageDevicesLocked()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/providers/media/MtpService;[Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/providers/media/MtpService;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/providers/media/MtpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/providers/media/MtpService;->volumeMountedLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/media/MtpService;Landroid/mtp/MtpStorage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/providers/media/MtpService;->removeStorageLocked(Landroid/mtp/MtpStorage;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    return-object v0
.end method

.method private addStorageDevicesLocked()V
    .locals 5

    .prologue
    .line 56
    iget-boolean v3, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-eqz v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, primaryStorage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpStorage;

    invoke-direct {p0, v3}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/mtp/MtpStorage;)V

    .line 70
    .end local v1           #primaryStorage:Ljava/lang/String;
    :cond_0
    return-void

    .line 66
    :cond_1
    iget-object v3, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorage;

    .line 67
    .local v2, storage:Landroid/mtp/MtpStorage;
    invoke-direct {p0, v2}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/mtp/MtpStorage;)V

    goto :goto_0
.end method

.method private addStorageLocked(Landroid/mtp/MtpStorage;)V
    .locals 3
    .parameter "storage"

    .prologue
    .line 242
    if-nez p1, :cond_1

    .line 243
    const-string v0, "MtpService"

    const-string v1, "addStorageLocked: no storage mounted!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    const-string v0, "MtpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStorageLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpDatabase;->addStorage(Landroid/mtp/MtpStorage;)V

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpServer;->addStorage(Landroid/mtp/MtpStorage;)V

    goto :goto_0
.end method

.method private removeStorageLocked(Landroid/mtp/MtpStorage;)V
    .locals 3
    .parameter "storage"

    .prologue
    .line 258
    const-string v0, "MtpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeStorageLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpDatabase;->removeStorage(Landroid/mtp/MtpStorage;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpServer;->removeStorage(Landroid/mtp/MtpStorage;)V

    .line 265
    :cond_1
    return-void
.end method

.method private volumeMountedLocked(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    .line 221
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 222
    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v5, v6, v0

    .line 223
    .local v5, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    invoke-static {v0}, Landroid/mtp/MtpStorage;->getStorageId(I)I

    move-result v4

    .line 225
    .local v4, storageId:I
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getMtpReserveSpace()I

    move-result v6

    mul-int/lit16 v6, v6, 0x400

    mul-int/lit16 v6, v6, 0x400

    int-to-long v1, v6

    .line 227
    .local v1, reserveSpace:J
    new-instance v3, Landroid/mtp/MtpStorage;

    invoke-direct {v3, v5}, Landroid/mtp/MtpStorage;-><init>(Landroid/os/storage/StorageVolume;)V

    .line 228
    .local v3, storage:Landroid/mtp/MtpStorage;
    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-boolean v6, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    if-nez v6, :cond_1

    .line 231
    if-eqz v0, :cond_0

    iget-boolean v6, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-nez v6, :cond_1

    .line 232
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/mtp/MtpStorage;)V

    .line 238
    .end local v1           #reserveSpace:J
    .end local v3           #storage:Landroid/mtp/MtpStorage;
    .end local v4           #storageId:I
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    return-void

    .line 221
    .restart local v5       #volume:Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 118
    const-string v9, "keyguard"

    invoke-virtual {p0, v9}, Lcom/android/providers/media/MtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 122
    .local v1, keyguardManager:Landroid/app/KeyguardManager;
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/providers/media/MtpService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 123
    .local v2, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/providers/media/MtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 124
    .local v5, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    if-ne v9, v7, :cond_2

    .line 125
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    if-eqz v9, :cond_1

    :goto_0
    iput-boolean v7, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    .line 130
    :goto_1
    iget-object v7, p0, Lcom/android/providers/media/MtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.USER_PRESENT"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Lcom/android/providers/media/MtpService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    const-string v7, "storage"

    invoke-virtual {p0, v7}, Lcom/android/providers/media/MtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    iput-object v7, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 133
    iget-object v8, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    monitor-enter v8

    .line 134
    :try_start_0
    iget-object v7, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v9, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v7, v9}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 135
    iget-object v7, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 136
    .local v6, volumes:[Landroid/os/storage/StorageVolume;
    iput-object v6, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    .line 137
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_4

    .line 138
    aget-object v7, v6, v0

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, path:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, state:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 141
    invoke-direct {p0, v3}, Lcom/android/providers/media/MtpService;->volumeMountedLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #state:Ljava/lang/String;
    .end local v6           #volumes:[Landroid/os/storage/StorageVolume;
    :cond_1
    move v7, v8

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v9

    if-eqz v9, :cond_3

    :goto_3
    iput-boolean v7, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    goto :goto_1

    :cond_3
    move v7, v8

    goto :goto_3

    .line 144
    .restart local v0       #i:I
    .restart local v6       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_4
    :try_start_1
    monitor-exit v8

    .line 145
    return-void

    .line 144
    .end local v0           #i:I
    .end local v6           #volumes:[Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/providers/media/MtpService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 184
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    monitor-enter v5

    .line 150
    :try_start_0
    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-nez v6, :cond_4

    .line 151
    if-nez p1, :cond_0

    :goto_0
    iput-boolean v4, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    .line 153
    const-string v6, "MtpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "starting MTP server in "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v4, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-eqz v4, :cond_1

    const-string v4, "PTP mode"

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v3, 0x0

    .line 155
    .local v3, subdirs:[Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-eqz v4, :cond_2

    .line 156
    sget-object v4, Lcom/android/providers/media/MtpService;->PTP_DIRECTORIES:[Ljava/lang/String;

    array-length v0, v4

    .line 157
    .local v0, count:I
    new-array v3, v0, [Ljava/lang/String;

    .line 158
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 159
    sget-object v4, Lcom/android/providers/media/MtpService;->PTP_DIRECTORIES:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 162
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 163
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 151
    .end local v0           #count:I
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i:I
    .end local v3           #subdirs:[Ljava/lang/String;
    :cond_0
    const-string v4, "ptp"

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_0

    .line 153
    :cond_1
    const-string v4, "MTP mode"

    goto :goto_1

    .line 166
    .restart local v3       #subdirs:[Ljava/lang/String;
    :cond_2
    new-instance v4, Landroid/mtp/MtpDatabase;

    const-string v6, "external"

    iget-object v7, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, p0, v6, v7, v3}, Landroid/mtp/MtpDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 168
    new-instance v4, Landroid/mtp/MtpServer;

    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    iget-boolean v7, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    invoke-direct {v4, v6, v7}, Landroid/mtp/MtpServer;-><init>(Landroid/mtp/MtpDatabase;Z)V

    iput-object v4, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    .line 169
    iget-boolean v4, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    if-nez v4, :cond_3

    .line 170
    invoke-direct {p0}, Lcom/android/providers/media/MtpService;->addStorageDevicesLocked()V

    .line 172
    :cond_3
    iget-object v4, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v4}, Landroid/mtp/MtpServer;->start()V

    .line 174
    .end local v3           #subdirs:[Ljava/lang/String;
    :cond_4
    monitor-exit v5

    .line 176
    const/4 v4, 0x1

    return v4

    .line 174
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
