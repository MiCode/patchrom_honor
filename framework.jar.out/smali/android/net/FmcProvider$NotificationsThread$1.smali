.class Landroid/net/FmcProvider$NotificationsThread$1;
.super Landroid/os/Handler;
.source "FmcProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/FmcProvider$NotificationsThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/FmcProvider$NotificationsThread;


# direct methods
.method constructor <init>(Landroid/net/FmcProvider$NotificationsThread;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Landroid/net/FmcProvider$NotificationsThread$1;->this$1:Landroid/net/FmcProvider$NotificationsThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 195
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 206
    const-string v1, "FmcProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FmcProvider@handleMessage: msg.what"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 198
    .local v0, status:I
    iget-object v1, p0, Landroid/net/FmcProvider$NotificationsThread$1;->this$1:Landroid/net/FmcProvider$NotificationsThread;

    iget-object v1, v1, Landroid/net/FmcProvider$NotificationsThread;->this$0:Landroid/net/FmcProvider;

    #getter for: Landroid/net/FmcProvider;->mFmcNotifier:Landroid/net/FmcNotifier;
    invoke-static {v1}, Landroid/net/FmcProvider;->access$300(Landroid/net/FmcProvider;)Landroid/net/FmcNotifier;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Landroid/net/FmcProvider$NotificationsThread$1;->this$1:Landroid/net/FmcProvider$NotificationsThread;

    iget-object v1, v1, Landroid/net/FmcProvider$NotificationsThread;->this$0:Landroid/net/FmcProvider;

    #getter for: Landroid/net/FmcProvider;->mFmcNotifier:Landroid/net/FmcNotifier;
    invoke-static {v1}, Landroid/net/FmcProvider;->access$300(Landroid/net/FmcProvider;)Landroid/net/FmcNotifier;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/net/FmcNotifier;->onFmcStatus(I)V

    goto :goto_0

    .line 201
    :cond_0
    const-string v1, "FmcProvider"

    const-string v2, "FmcProvider@handleMessage: mFmcNotifier callback is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
