.class Landroid/net/FmcProvider$FmcEventListener;
.super Landroid/net/IFmcEventListener$Stub;
.source "FmcProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/FmcProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmcEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/FmcProvider;


# direct methods
.method private constructor <init>(Landroid/net/FmcProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Landroid/net/FmcProvider$FmcEventListener;->this$0:Landroid/net/FmcProvider;

    invoke-direct {p0}, Landroid/net/IFmcEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/FmcProvider;Landroid/net/FmcProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Landroid/net/FmcProvider$FmcEventListener;-><init>(Landroid/net/FmcProvider;)V

    return-void
.end method


# virtual methods
.method public onFmcStatus(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 181
    iget-object v1, p0, Landroid/net/FmcProvider$FmcEventListener;->this$0:Landroid/net/FmcProvider;

    #getter for: Landroid/net/FmcProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/FmcProvider;->access$200(Landroid/net/FmcProvider;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 182
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/net/FmcProvider$FmcEventListener;->this$0:Landroid/net/FmcProvider;

    #getter for: Landroid/net/FmcProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/FmcProvider;->access$200(Landroid/net/FmcProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 183
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 184
    return-void
.end method
