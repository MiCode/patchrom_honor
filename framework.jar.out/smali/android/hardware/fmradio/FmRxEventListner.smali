.class Landroid/hardware/fmradio/FmRxEventListner;
.super Ljava/lang/Object;
.source "FmRxEventListner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FMRadio"


# instance fields
.field private final EVENT_LISTEN:I

.field private mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/fmradio/FmRxEventListner;->EVENT_LISTEN:I

    .line 39
    return-void
.end method


# virtual methods
.method public startListner(ILandroid/hardware/fmradio/FmRxEvCallbacks;)V
    .locals 1
    .parameter "fd"
    .parameter "cb"

    .prologue
    .line 64
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/fmradio/FmRxEventListner$1;-><init>(Landroid/hardware/fmradio/FmRxEventListner;ILandroid/hardware/fmradio/FmRxEvCallbacks;)V

    iput-object v0, p0, Landroid/hardware/fmradio/FmRxEventListner;->mThread:Ljava/lang/Thread;

    .line 163
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxEventListner;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    return-void
.end method

.method public stopListener()V
    .locals 2

    .prologue
    .line 172
    const-string v0, "FMRadio"

    const-string/jumbo v1, "stopping the Listener\n"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxEventListner;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxEventListner;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 176
    :cond_0
    return-void
.end method
