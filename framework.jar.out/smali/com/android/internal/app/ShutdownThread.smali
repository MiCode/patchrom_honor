.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_ACTURAL_SHUTDOWN:Ljava/lang/String; = "com.android.internal.app.SHUTDOWNBROADCAST"

.field private static final ACTION_ACTURAL_SHUTDOWN_TRY:Ljava/lang/String; = "com.android.internal.app.SHUTDOWNBROADCAST"

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final RADIO_SHUTDOWN_PROPERTY:Ljava/lang/String; = "sys.radio.shutdown"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_ANIMATION_WAIT_TIME:I = 0x7d0

.field private static final SHUTDOWN_ANIMATION_WAIT_TIME_MORE:I = 0x1f4

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static animProcess:Ljava/lang/Process;

.field private static isHaveShutdownAnimation:Z

.field private static mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field static mReboot:Z

.field static mRebootReason:Ljava/lang/String;

.field private static mShutdown_path1:Ljava/lang/String;

.field private static mShutdown_path2:Ljava/lang/String;

.field private static mShutdown_path3:Ljava/lang/String;

.field private static pd:Landroid/app/ProgressDialog;

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsRestart:Z

.field static sIsStarted:Z

.field static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->isHaveShutdownAnimation:Z

    .line 93
    const-string v0, "/data/cust/media/shutdownanimation.zip"

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mShutdown_path1:Ljava/lang/String;

    .line 94
    const-string v0, "/data/local/shutdownanimation.zip"

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mShutdown_path2:Ljava/lang/String;

    .line 95
    const-string v0, "/system/media/shutdownanimation.zip"

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mShutdown_path3:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 101
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 111
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    .line 123
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsRestart:Z

    .line 139
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->animProcess:Ljava/lang/Process;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 135
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->isHaveShutdownAnimation:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Process;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->animProcess:Ljava/lang/Process;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/Process;)Ljava/lang/Process;
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    sput-object p0, Lcom/android/internal/app/ShutdownThread;->animProcess:Ljava/lang/Process;

    return-object p0
.end method

.method static synthetic access$200()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    return p0
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->sIsRestart:Z

    return p0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const v9, 0x1040128

    const v8, 0x1040124

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 413
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.app.SHUTDOWNBROADCAST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v2, shutdownBroadcast:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 416
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 417
    :try_start_0
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    .line 418
    const-string v3, "ShutdownThread"

    const-string v5, "Shutdown sequence already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    monitor-exit v4

    .line 498
    :goto_0
    return-void

    .line 421
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 422
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mShutdown_path1:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mShutdown_path2:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mShutdown_path3:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 428
    :cond_1
    sput-boolean v5, Lcom/android/internal/app/ShutdownThread;->isHaveShutdownAnimation:Z

    .line 430
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "/system/bin/shutdownanimation"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 465
    :goto_1
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object p0, v3, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 466
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 469
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 471
    :try_start_2
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    const-string v6, "ShutdownThread-cpu"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 473
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 474
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 481
    :goto_2
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 482
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 484
    :try_start_3
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v5, 0x1a

    const-string v6, "ShutdownThread-screen"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 486
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 487
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 495
    :cond_2
    :goto_3
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v4, Lcom/android/internal/app/ShutdownThread$4;

    invoke-direct {v4}, Lcom/android/internal/app/ShutdownThread$4;-><init>()V

    iput-object v4, v3, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 497
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v3}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 422
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Ljava/io/IOException;
    const-string v3, "ShutdownThread"

    const-string/jumbo v4, "run shutdown animation failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 437
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 440
    .local v1, pd:Landroid/app/ProgressDialog;
    const-string/jumbo v3, "true"

    const-string/jumbo v4, "ro.config.hw_quickpoweron"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "fast_power_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_5

    .line 443
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsRestart:Z

    if-ne v3, v5, :cond_4

    .line 444
    const v3, 0x202000b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 445
    const v3, 0x202000f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 456
    :goto_4
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 457
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 458
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->createShutDownDialog(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 448
    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 452
    :cond_5
    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 453
    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 475
    .end local v1           #pd:Landroid/app/ProgressDialog;
    :catch_1
    move-exception v0

    .line 476
    .local v0, e:Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_2

    .line 488
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 489
    .restart local v0       #e:Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_3
.end method

.method public static disableNFC(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 715
    const-string v1, "ShutdownThread"

    const-string v2, "disableNFC: before"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 717
    .local v0, mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    const-string v1, "ShutdownThread"

    const-string v2, "disableNFC: disalbe NFC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableWithoutChangeState()Z

    .line 721
    :cond_0
    const-string v1, "ShutdownThread"

    const-string v2, "disableNFC: after sleep"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return-void
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 405
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    .line 406
    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 407
    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 408
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 5
    .parameter "reboot"
    .parameter "reason"

    .prologue
    .line 735
    const-string/jumbo v2, "persist.sys.actualpoweron"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    if-eqz p0, :cond_0

    .line 739
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :try_start_0
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_0
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 779
    return-void

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 750
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->isHaveShutdownAnimation:Z

    if-eqz v2, :cond_1

    .line 752
    const-wide/16 v2, 0x7d0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 761
    :cond_1
    :goto_1
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    .line 763
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 771
    :goto_2
    const-wide/16 v2, 0x1f4

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 772
    :catch_1
    move-exception v2

    goto :goto_0

    .line 753
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :catch_2
    move-exception v0

    .line 754
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "ShutdownThread"

    const-string/jumbo v3, "shutdown animation thread sleep 2s failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 764
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #vibrator:Landroid/os/Vibrator;
    :catch_3
    move-exception v0

    .line 766
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static restart(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 343
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 344
    :try_start_0
    sget-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_0

    .line 345
    const-string v1, "ShutdownThread"

    const-string v3, "Request to shutdown already running, returning."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    monitor-exit v2

    .line 370
    :goto_0
    return-void

    .line 348
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    const-string v1, "ShutdownThread"

    const-string v2, "Notifying thread to restart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x202000d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x202000e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/android/internal/app/ShutdownThread$3;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ShutdownThread$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 364
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 367
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 369
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 348
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static showPowerOffWait(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 142
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mShutdown_path1:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mShutdown_path2:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mShutdown_path3:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    :cond_0
    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->isHaveShutdownAnimation:Z

    .line 149
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "/system/bin/shutdownanimation"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    sput-object v1, Lcom/android/internal/app/ShutdownThread;->animProcess:Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ShutdownThread"

    const-string/jumbo v2, "run shutdown animation failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 155
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    :cond_3
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 157
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v2, 0x1040124

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v2, 0x1040128

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 159
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 160
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 161
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 164
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 167
    :cond_4
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v11, 0x1

    .line 185
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    .line 186
    :try_start_0
    sget-boolean v7, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v7, :cond_0

    .line 187
    const-string v7, "ShutdownThread"

    const-string v9, "Request to shutdown already running, returning."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    monitor-exit v8

    .line 338
    :goto_0
    return-void

    .line 190
    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0012

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 194
    .local v5, longPressBehavior:I
    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    const v6, 0x104012a

    .line 198
    .local v6, resourceId:I
    :goto_1
    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string/jumbo v7, "true"

    const-string/jumbo v8, "ro.config.hw_quickpoweron"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 202
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/internal/app/ShutdownThread;->sIsRestart:Z

    .line 209
    :cond_1
    const-string/jumbo v7, "persist.sys.actualpoweron"

    const-string/jumbo v8, "true"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz p1, :cond_7

    .line 217
    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "shutdown settingon: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "fast_power_on"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string/jumbo v7, "true"

    const-string/jumbo v8, "ro.config.hw_quickpoweron"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "fast_power_on"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_6

    .line 221
    const-string v7, "batteryinfo"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    sput-object v7, Lcom/android/internal/app/ShutdownThread;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, bBattery:Z
    :try_start_1
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7}, Lcom/android/internal/app/IBatteryStats;->isOnBattery()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 231
    :goto_2
    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "shutdown bBattery: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-eqz v0, :cond_4

    .line 233
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    .line 234
    :try_start_2
    sget-boolean v7, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v7, :cond_3

    .line 235
    const-string v7, "ShutdownThread"

    const-string v9, " Poweroff shutdown already return  running, returning."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    monitor-exit v8

    goto/16 :goto_0

    .line 239
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 190
    .end local v0           #bBattery:Z
    .end local v5           #longPressBehavior:I
    .end local v6           #resourceId:I
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 194
    .restart local v5       #longPressBehavior:I
    :cond_2
    const v6, 0x1040129

    goto/16 :goto_1

    .line 226
    .restart local v0       #bBattery:Z
    .restart local v6       #resourceId:I
    :catch_0
    move-exception v3

    .line 227
    .local v3, e:Landroid/os/RemoteException;
    const-string v7, "ShutdownThread"

    const-string v8, "RemoteException:"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    const/4 v0, 0x0

    goto :goto_2

    .line 238
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_3
    const/4 v7, 0x1

    :try_start_4
    sput-boolean v7, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 239
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.internal.app.SHUTDOWNBROADCAST"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->showPowerOffWait(Landroid/content/Context;)V

    .line 245
    new-instance v4, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v4, p0}, Lcom/android/internal/app/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    .line 305
    .local v4, fakeshutdownThread:Ljava/lang/Thread;
    const-string/jumbo v7, "shutdown"

    invoke-virtual {v4, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 311
    .end local v4           #fakeshutdownThread:Ljava/lang/Thread;
    :cond_4
    const-string/jumbo v7, "true"

    const-string/jumbo v8, "ro.config.hw_quickpoweron"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "true"

    const-string/jumbo v8, "ro.poweroff_alarm"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 312
    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->synAirplaneMode(Landroid/content/Context;)V

    .line 316
    :cond_5
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 319
    .end local v0           #bBattery:Z
    :cond_6
    new-instance v1, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 320
    .local v1, closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x1040124

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040013

    new-instance v9, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v9, p0}, Lcom/android/internal/app/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040009

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 330
    .local v2, dialog:Landroid/app/AlertDialog;
    iput-object v2, v1, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 331
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 332
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 333
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 336
    .end local v1           #closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    :cond_7
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 503
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 504
    monitor-exit v1

    .line 505
    return-void

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 29

    .prologue
    .line 515
    new-instance v5, Lcom/android/internal/app/ShutdownThread$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/app/ShutdownThread$5;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 528
    .local v5, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_7

    const-string v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 529
    .local v28, reason:Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 539
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v18, v2, v6

    .line 540
    .local v18, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 541
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_0

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v18, v6

    .line 543
    .local v13, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v13, v6

    if-gtz v2, :cond_9

    .line 544
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .end local v13           #delay:J
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsRestart:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "ro.config.disable.nfc"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/app/ShutdownThread;->disableNFC(Landroid/content/Context;)V

    .line 562
    :cond_2
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v10

    .line 564
    .local v10, am:Landroid/app/IActivityManager;
    if-eqz v10, :cond_3

    .line 566
    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8

    .line 571
    :cond_3
    :goto_3
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v26

    .line 573
    .local v26, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v11

    .line 577
    .local v11, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v23

    .line 582
    .local v23, mount:Landroid/os/storage/IMountService;
    if-eqz v11, :cond_4

    :try_start_2
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_a

    :cond_4
    const/4 v12, 0x1

    .line 584
    .local v12, bluetoothOff:Z
    :goto_4
    if-nez v12, :cond_5

    .line 585
    const-string v2, "ShutdownThread"

    const-string v3, "Disabling Bluetooth..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 594
    :cond_5
    :goto_5
    const/16 v27, 0x1

    .line 595
    .local v27, radioOff:Z
    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 596
    const-string/jumbo v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v24

    .line 598
    .local v24, mphone:Lcom/android/internal/telephony/ITelephonyMSim;
    if-eqz v24, :cond_e

    .line 600
    const/16 v21, 0x0

    .local v21, i:I
    :goto_6
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_e

    .line 601
    if-eqz v27, :cond_b

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyMSim;->isRadioOn(I)Z

    move-result v2

    if-nez v2, :cond_b

    const/16 v27, 0x1

    .line 602
    :goto_7
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyMSim;->isRadioOn(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 603
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Turning off radio on Subscription :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/4 v2, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/ITelephonyMSim;->setRadio(ZI)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 600
    :cond_6
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 528
    .end local v10           #am:Landroid/app/IActivityManager;
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v18           #endTime:J
    .end local v21           #i:I
    .end local v23           #mount:Landroid/os/storage/IMountService;
    .end local v24           #mphone:Lcom/android/internal/telephony/ITelephonyMSim;
    .end local v26           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v27           #radioOff:Z
    .end local v28           #reason:Ljava/lang/String;
    :cond_7
    const-string v2, "0"

    goto/16 :goto_0

    :cond_8
    const-string v2, ""

    goto/16 :goto_1

    .line 548
    .restart local v13       #delay:J
    .restart local v18       #endTime:J
    .restart local v28       #reason:Ljava/lang/String;
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 549
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 552
    .end local v13           #delay:J
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 582
    .restart local v10       #am:Landroid/app/IActivityManager;
    .restart local v11       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v23       #mount:Landroid/os/storage/IMountService;
    .restart local v26       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 588
    :catch_1
    move-exception v20

    .line 589
    .local v20, ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    const/4 v12, 0x1

    .restart local v12       #bluetoothOff:Z
    goto/16 :goto_5

    .line 601
    .end local v20           #ex:Landroid/os/RemoteException;
    .restart local v21       #i:I
    .restart local v24       #mphone:Lcom/android/internal/telephony/ITelephonyMSim;
    .restart local v27       #radioOff:Z
    :cond_b
    const/16 v27, 0x0

    goto :goto_7

    .line 609
    .end local v21           #i:I
    .end local v24           #mphone:Lcom/android/internal/telephony/ITelephonyMSim;
    :cond_c
    if-eqz v26, :cond_d

    :try_start_6
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_d
    const/16 v27, 0x1

    .line 610
    :goto_8
    if-nez v27, :cond_e

    .line 611
    const-string v2, "ShutdownThread"

    const-string v3, "Turning off radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 620
    :cond_e
    :goto_9
    const-string/jumbo v2, "sys.radio.shutdown"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v2, "ShutdownThread"

    const-string v3, "Waiting for Bluetooth and Radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_a
    const/16 v2, 0x10

    move/from16 v0, v21

    if-ge v0, v2, :cond_15

    .line 625
    if-nez v12, :cond_f

    .line 627
    :try_start_7
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    const/4 v12, 0x1

    .line 634
    :cond_f
    :goto_b
    if-nez v27, :cond_14

    .line 636
    :try_start_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 637
    const/16 v27, 0x1

    .line 638
    const-string/jumbo v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v24

    .line 640
    .restart local v24       #mphone:Lcom/android/internal/telephony/ITelephonyMSim;
    const/16 v22, 0x0

    .local v22, j:I
    :goto_c
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_14

    .line 641
    if-eqz v27, :cond_12

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephonyMSim;->isRadioOn(I)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    move-result v2

    if-nez v2, :cond_12

    const/16 v27, 0x1

    .line 640
    :goto_d
    add-int/lit8 v22, v22, 0x1

    goto :goto_c

    .line 609
    .end local v21           #i:I
    .end local v22           #j:I
    .end local v24           #mphone:Lcom/android/internal/telephony/ITelephonyMSim;
    :cond_10
    const/16 v27, 0x0

    goto :goto_8

    .line 615
    :catch_2
    move-exception v20

    .line 616
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 617
    const/16 v27, 0x1

    goto :goto_9

    .line 627
    .end local v20           #ex:Landroid/os/RemoteException;
    .restart local v21       #i:I
    :cond_11
    const/4 v12, 0x0

    goto :goto_b

    .line 629
    :catch_3
    move-exception v20

    .line 630
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    const/4 v12, 0x1

    goto :goto_b

    .line 641
    .end local v20           #ex:Landroid/os/RemoteException;
    .restart local v22       #j:I
    .restart local v24       #mphone:Lcom/android/internal/telephony/ITelephonyMSim;
    :cond_12
    const/16 v27, 0x0

    goto :goto_d

    .line 644
    .end local v22           #j:I
    .end local v24           #mphone:Lcom/android/internal/telephony/ITelephonyMSim;
    :cond_13
    :try_start_9
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    move-result v2

    if-nez v2, :cond_18

    const/16 v27, 0x1

    .line 651
    :cond_14
    :goto_e
    if-eqz v27, :cond_19

    if-eqz v12, :cond_19

    .line 652
    const-string v2, "ShutdownThread"

    const-string v3, "Radio and Bluetooth shutdown complete."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_15
    new-instance v25, Lcom/android/internal/app/ShutdownThread$6;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$6;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 666
    .local v25, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 669
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v16, v2, v6

    .line 670
    .local v16, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 672
    if-eqz v23, :cond_1a

    .line 673
    :try_start_a
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 680
    :goto_f
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_16

    .line 681
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v16, v6

    .line 682
    .restart local v13       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v13, v6

    if-gtz v2, :cond_1b

    .line 683
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    .end local v13           #delay:J
    :cond_16
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 694
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "ro.config.hw_quickpoweron"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 695
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsRestart:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 696
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->isHaveShutdownAnimation:Z

    if-eqz v2, :cond_17

    .line 698
    const-wide/16 v2, 0x7d0

    :try_start_c
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_7

    .line 703
    :cond_17
    :goto_10
    const/4 v2, 0x1

    const-string/jumbo v3, "restart phone"

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 712
    :goto_11
    return-void

    .line 644
    .end local v16           #endShutTime:J
    .end local v25           #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_18
    const/16 v27, 0x0

    goto :goto_e

    .line 646
    :catch_4
    move-exception v20

    .line 647
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    const/16 v27, 0x1

    goto/16 :goto_e

    .line 655
    .end local v20           #ex:Landroid/os/RemoteException;
    :cond_19
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 624
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_a

    .line 675
    .restart local v16       #endShutTime:J
    .restart local v25       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_1a
    :try_start_d
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_f

    .line 677
    :catch_5
    move-exception v15

    .line 678
    .local v15, e:Ljava/lang/Exception;
    :try_start_e
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    invoke-static {v2, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 691
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v2

    .line 687
    .restart local v13       #delay:J
    :cond_1b
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_f

    .line 688
    :catch_6
    move-exception v2

    goto :goto_f

    .line 699
    .end local v13           #delay:J
    :catch_7
    move-exception v15

    .line 700
    .local v15, e:Ljava/lang/InterruptedException;
    const-string v2, "ShutdownThread"

    const-string/jumbo v3, "shutdown animation thread sleep 2s failed"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 705
    .end local v15           #e:Ljava/lang/InterruptedException;
    :cond_1c
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto :goto_11

    .line 708
    :cond_1d
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto :goto_11

    .line 567
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v16           #endShutTime:J
    .end local v21           #i:I
    .end local v23           #mount:Landroid/os/storage/IMountService;
    .end local v25           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v26           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v27           #radioOff:Z
    :catch_8
    move-exception v2

    goto/16 :goto_3
.end method

.method private static getResourceId(I)I
    .locals 1
    .parameter "id"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v0, :cond_0

    const/high16 p0, 0x60c

    .end local p0
    :cond_0
    return p0
.end method

.method private static getTitleResourceId()I
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v0, :cond_0

    const v0, 0x1040318

    :goto_0
    return v0

    :cond_0
    const v0, 0x1040124

    goto :goto_0
.end method

.method private static createShutDownDialog(Landroid/content/Context;)V
    .locals 8
    .parameter "context"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    new-instance v2, Landroid/app/Dialog;

    const v6, 0x10300f1

    invoke-direct {v2, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .local v2, bootMsgDialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .local v3, layoutInflater:Landroid/view/LayoutInflater;
    const v6, 0x603002e

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .local v5, view:Landroid/view/View;
    const v6, 0x60b0021

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, msgText:Landroid/widget/TextView;
    const v6, 0x60b0022

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .local v1, animationView:Landroid/widget/ImageView;
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_0

    const v6, 0x60c0001

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7e5

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x60201e4

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .local v0, animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    .end local v0           #animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    const v6, 0x1040128

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
