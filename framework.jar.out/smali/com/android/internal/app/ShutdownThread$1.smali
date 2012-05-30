.class final Lcom/android/internal/app/ShutdownThread$1;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 244
    const-string v5, "ShutdownThread"

    const-string v6, "begin shutdownThread"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string/jumbo v5, "persist.sys.quickpoweron"

    const-string/jumbo v6, "startshutdown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v5, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/Powerstate;->sendStopBC(Landroid/content/Context;)V

    .line 249
    iget-object v5, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/Powerstate;->savePhoneSate(Landroid/content/Context;)V

    .line 250
    iget-object v5, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/Powerstate;->setPoweroffState(Landroid/content/Context;)V

    .line 251
    iget-object v5, p0, Lcom/android/internal/app/ShutdownThread$1;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/policy/Powerstate;->killRunningProcess(Landroid/content/Context;)V

    .line 254
    new-instance v4, Landroid/os/Vibrator;

    invoke-direct {v4}, Landroid/os/Vibrator;-><init>()V

    .line 256
    .local v4, vibrator:Landroid/os/Vibrator;
    const-wide/16 v5, 0x1f4

    :try_start_0
    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    const-wide/16 v5, 0x1f4

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 267
    :goto_1
    const-string/jumbo v5, "persist.sys.quickpoweron"

    const-string/jumbo v6, "shutdown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {v8}, Landroid/os/Power;->notifyArmNineSleep(Z)Z

    move-result v0

    .line 270
    .local v0, bResult:Z
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "modem to sleep = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :try_start_2
    const-string/jumbo v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 275
    .local v3, mPowerManagerService:Landroid/os/IPowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v5, v6}, Landroid/os/IPowerManager;->goToSleep(J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 281
    .end local v3           #mPowerManagerService:Landroid/os/IPowerManager;
    :goto_2
    const-wide/16 v5, 0x1f4

    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 286
    :goto_3
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$000()Z

    move-result v5

    if-ne v5, v8, :cond_1

    .line 287
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$100()Ljava/lang/Process;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 288
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$100()Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    .line 289
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/internal/app/ShutdownThread;->access$102(Ljava/lang/Process;)Ljava/lang/Process;

    .line 296
    :cond_0
    :goto_4
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$300()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 297
    const/4 v5, 0x0

    :try_start_4
    invoke-static {v5}, Lcom/android/internal/app/ShutdownThread;->access$402(Z)Z

    .line 298
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 299
    return-void

    .line 257
    .end local v0           #bResult:Z
    :catch_0
    move-exception v1

    .line 259
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to vibrate during shutdown."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bResult:Z
    :catch_1
    move-exception v2

    .line 277
    .local v2, ex:Landroid/os/RemoteException;
    const-string v5, "ShutdownThread"

    const-string v6, "go to sleep error "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 282
    .end local v2           #ex:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 283
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v5, "ShutdownThread"

    const-string/jumbo v6, "shutdown animation thread sleep 0.5s failed"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 292
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$200()Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 293
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$200()Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_4

    .line 298
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 264
    .end local v0           #bResult:Z
    :catch_3
    move-exception v5

    goto/16 :goto_1
.end method
