.class Lcom/android/server/FmcStateMachine$FmcStateShutDown;
.super Lcom/android/server/FmcStateMachine$FmcState;
.source "FmcStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FmcStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FmcStateShutDown"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FmcStateMachine;


# direct methods
.method protected constructor <init>(Lcom/android/server/FmcStateMachine;)V
    .locals 2
    .parameter

    .prologue
    .line 812
    iput-object p1, p0, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->this$0:Lcom/android/server/FmcStateMachine;

    .line 813
    invoke-direct {p0, p1}, Lcom/android/server/FmcStateMachine$FmcState;-><init>(Lcom/android/server/FmcStateMachine;)V

    .line 814
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->setStatus(I)V

    .line 822
    const-string v0, "fmc.shut.down.timeout"

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->startStateTimer(Ljava/lang/String;)V

    .line 823
    sget-object v0, Lcom/android/server/FmcStateMachine;->mConnSvc:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->setFmcDisabled()V

    .line 824
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->sendDisableFmc()V

    .line 825
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->sendDisableData()V

    .line 826
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessage message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 846
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processMessage not handled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 834
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateBearerDown:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$1300(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 837
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateDataDown:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$1400(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 840
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateInactive:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$1500(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 843
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateFailure:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$1000(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateShutDown;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 832
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x4 -> :sswitch_0
        0x6 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method
