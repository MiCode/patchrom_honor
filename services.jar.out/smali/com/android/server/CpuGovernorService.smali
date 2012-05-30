.class Lcom/android/server/CpuGovernorService;
.super Ljava/lang/Object;
.source "CpuGovernorService.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSamplingRateChangeProcessor:Lcom/android/server/SamplingRateChangeProcessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v1, "CpuGovernorService"

    iput-object v1, p0, Lcom/android/server/CpuGovernorService;->TAG:Ljava/lang/String;

    .line 54
    new-instance v1, Lcom/android/server/SamplingRateChangeProcessor;

    invoke-direct {v1}, Lcom/android/server/SamplingRateChangeProcessor;-><init>()V

    iput-object v1, p0, Lcom/android/server/CpuGovernorService;->mSamplingRateChangeProcessor:Lcom/android/server/SamplingRateChangeProcessor;

    .line 56
    new-instance v1, Lcom/android/server/IOBusyVoteProcessor;

    invoke-direct {v1}, Lcom/android/server/IOBusyVoteProcessor;-><init>()V

    iput-object v1, p0, Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;

    .line 72
    new-instance v1, Lcom/android/server/CpuGovernorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/CpuGovernorService$1;-><init>(Lcom/android/server/CpuGovernorService;)V

    iput-object v1, p0, Lcom/android/server/CpuGovernorService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/server/CpuGovernorService;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "com.android.server.CpuGovernorService.action.IOBUSY_VOTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/CpuGovernorService;->mSamplingRateChangeProcessor:Lcom/android/server/SamplingRateChangeProcessor;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 68
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 69
    iget-object v1, p0, Lcom/android/server/CpuGovernorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/CpuGovernorService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/CpuGovernorService;)Lcom/android/server/SamplingRateChangeProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/CpuGovernorService;->mSamplingRateChangeProcessor:Lcom/android/server/SamplingRateChangeProcessor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/CpuGovernorService;)Lcom/android/server/IOBusyVoteProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/CpuGovernorService;->mIOBusyVoteChangeProcessor:Lcom/android/server/IOBusyVoteProcessor;

    return-object v0
.end method
