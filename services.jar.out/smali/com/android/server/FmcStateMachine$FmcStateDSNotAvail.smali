.class Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;
.super Lcom/android/server/FmcStateMachine$FmcStateShutDown;
.source "FmcStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FmcStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FmcStateDSNotAvail"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FmcStateMachine;


# direct methods
.method protected constructor <init>(Lcom/android/server/FmcStateMachine;)V
    .locals 2
    .parameter

    .prologue
    .line 920
    iput-object p1, p0, Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;->this$0:Lcom/android/server/FmcStateMachine;

    .line 921
    invoke-direct {p0, p1}, Lcom/android/server/FmcStateMachine$FmcStateShutDown;-><init>(Lcom/android/server/FmcStateMachine;)V

    .line 922
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    sget-object v0, Lcom/android/server/FmcStateMachine;->mConnSvc:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->setFmcDisabled()V

    .line 929
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;->setStatus(I)V

    .line 930
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$402(Z)Z

    .line 931
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;->sendDisableFmc()V

    .line 932
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateDSNotAvail;->sendDisableData()V

    .line 933
    return-void
.end method
