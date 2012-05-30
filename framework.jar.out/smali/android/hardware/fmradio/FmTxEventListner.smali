.class Landroid/hardware/fmradio/FmTxEventListner;
.super Ljava/lang/Object;
.source "FmTxEventListner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FMTxEventListner"


# instance fields
.field private final EVENT_LISTEN:I

.field private final RADIO_DISABLED:I

.field private final TUNE_EVENT:I

.field private final TXRDSDAT_EVENT:I

.field private final TXRDSDONE_EVENT:I

.field private mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Landroid/hardware/fmradio/FmTxEventListner;->EVENT_LISTEN:I

    .line 40
    iput v0, p0, Landroid/hardware/fmradio/FmTxEventListner;->TUNE_EVENT:I

    .line 41
    const/16 v0, 0x10

    iput v0, p0, Landroid/hardware/fmradio/FmTxEventListner;->TXRDSDAT_EVENT:I

    .line 42
    const/16 v0, 0x11

    iput v0, p0, Landroid/hardware/fmradio/FmTxEventListner;->TXRDSDONE_EVENT:I

    .line 43
    const/16 v0, 0x12

    iput v0, p0, Landroid/hardware/fmradio/FmTxEventListner;->RADIO_DISABLED:I

    return-void
.end method


# virtual methods
.method public startListner(ILandroid/hardware/fmradio/FmTransmitterCallbacks;)V
    .locals 1
    .parameter "fd"
    .parameter "cb"

    .prologue
    .line 51
    new-instance v0, Landroid/hardware/fmradio/FmTxEventListner$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/fmradio/FmTxEventListner$1;-><init>(Landroid/hardware/fmradio/FmTxEventListner;ILandroid/hardware/fmradio/FmTransmitterCallbacks;)V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTxEventListner;->mThread:Ljava/lang/Thread;

    .line 96
    iget-object v0, p0, Landroid/hardware/fmradio/FmTxEventListner;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 97
    return-void
.end method

.method public stopListener()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "/dev/radio0"

    invoke-static {v0}, Landroid/hardware/fmradio/FmTransceiver;->release(Ljava/lang/String;)Z

    .line 102
    const-string v0, "FMTxEventListner"

    const-string v1, "Thread Stopped\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v0, "FMTxEventListner"

    const-string/jumbo v1, "stopping the Listener\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Landroid/hardware/fmradio/FmTxEventListner;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Landroid/hardware/fmradio/FmTxEventListner;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 113
    :cond_0
    const-string v0, "FMTxEventListner"

    const-string v1, "Thread Stopped\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method
