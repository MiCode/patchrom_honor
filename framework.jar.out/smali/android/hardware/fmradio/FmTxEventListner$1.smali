.class Landroid/hardware/fmradio/FmTxEventListner$1;
.super Ljava/lang/Thread;
.source "FmTxEventListner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/fmradio/FmTxEventListner;->startListner(ILandroid/hardware/fmradio/FmTransmitterCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fmradio/FmTxEventListner;

.field final synthetic val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

.field final synthetic val$fd:I


# direct methods
.method constructor <init>(Landroid/hardware/fmradio/FmTxEventListner;ILandroid/hardware/fmradio/FmTransmitterCallbacks;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->this$0:Landroid/hardware/fmradio/FmTxEventListner;

    iput p2, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$fd:I

    iput-object p3, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 54
    const-string v4, "FMTxEventListner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting Tx Event listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$fd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 58
    const/4 v3, 0x0

    .line 59
    .local v3, index:I
    const/16 v4, 0x80

    :try_start_0
    new-array v0, v4, [B

    .line 60
    .local v0, buff:[B
    const-string v4, "FMTxEventListner"

    const-string v5, "getBufferNative called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$fd:I

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    move-result v1

    .line 62
    .local v1, eventCount:I
    const-string v4, "FMTxEventListner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received event. Count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    .line 65
    const-string v4, "FMTxEventListner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    aget-byte v4, v0, v3

    sparse-switch v4, :sswitch_data_0

    .line 84
    const-string v4, "FMTxEventListner"

    const-string v5, "Unknown event"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 68
    :sswitch_0
    const-string v4, "FMTxEventListner"

    const-string v5, "Got TUNE_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

    iget v5, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$fd:I

    invoke-static {v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/hardware/fmradio/FmTransmitterCallbacks;->onTuneStatusChange(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 88
    .end local v0           #buff:[B
    .end local v1           #eventCount:I
    :catch_0
    move-exception v2

    .line 89
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "FMTxEventListner"

    const-string v5, "RunningThread InterruptedException"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    .line 72
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #buff:[B
    .restart local v1       #eventCount:I
    :sswitch_1
    :try_start_1
    const-string v4, "FMTxEventListner"

    const-string v5, "Got TXRDSDAT_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmTransmitterCallbacks;->onRDSGroupsAvailable()V

    goto :goto_2

    .line 76
    :sswitch_2
    const-string v4, "FMTxEventListner"

    const-string v5, "Got TXRDSDONE_EVENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmTransmitterCallbacks;->onContRDSGroupsComplete()V

    goto :goto_2

    .line 80
    :sswitch_3
    const-string v4, "FMTxEventListner"

    const-string v5, "Got RADIO_DISABLED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v4, p0, Landroid/hardware/fmradio/FmTxEventListner$1;->val$cb:Landroid/hardware/fmradio/FmTransmitterCallbacks;

    invoke-interface {v4}, Landroid/hardware/fmradio/FmTransmitterCallbacks;->onRadioDisabled()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 93
    .end local v0           #buff:[B
    .end local v1           #eventCount:I
    .end local v3           #index:I
    :cond_1
    const-string v4, "FMTxEventListner"

    const-string v5, "Came out of the while loop"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 66
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch
.end method
