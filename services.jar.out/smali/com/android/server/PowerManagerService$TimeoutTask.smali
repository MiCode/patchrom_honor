.class Lcom/android/server/PowerManagerService$TimeoutTask;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTask"
.end annotation


# instance fields
.field nextState:I

.field remainingTimeoutOverride:J

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1344
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$TimeoutTask;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v6

    monitor-enter v6

    .line 1355
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1356
    monitor-exit v6

    .line 1376
    :goto_0
    return-void

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    #setter for: Lcom/android/server/PowerManagerService;->mUserState:I
    invoke-static {v0, v3}, Lcom/android/server/PowerManagerService;->access$2702(Lcom/android/server/PowerManagerService;I)I

    .line 1360
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    iget-object v4, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)I

    move-result v4

    or-int/2addr v3, v4

    #calls: Lcom/android/server/PowerManagerService;->setPowerState(I)V
    invoke-static {v0, v3}, Lcom/android/server/PowerManagerService;->access$2900(Lcom/android/server/PowerManagerService;I)V

    .line 1362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1364
    .local v1, now:J
    iget v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    packed-switch v0, :pswitch_data_0

    .line 1375
    :goto_1
    :pswitch_0
    monitor-exit v6

    goto :goto_0

    .end local v1           #now:J
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1367
    .restart local v1       #now:J
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDimDelay:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1368
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget-wide v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    const/4 v5, 0x1

    #calls: Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;JJI)V

    goto :goto_1

    .line 1372
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget-wide v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    const/4 v5, 0x0

    #calls: Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;JJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
