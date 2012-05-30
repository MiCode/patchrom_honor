.class Lcom/android/internal/telephony/DataConnection$1;
.super Ljava/lang/Object;
.source "DataConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v0}, Lcom/android/internal/telephony/DataConnection;->access$000(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;
    invoke-static {v1}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string/jumbo v1, "resetSync"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection;->mDca:Lcom/android/internal/telephony/DataConnectionAc;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 322
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string/jumbo v1, "removeCallbacks"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mResetConnection:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
