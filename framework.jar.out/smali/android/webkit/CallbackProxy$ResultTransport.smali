.class Landroid/webkit/CallbackProxy$ResultTransport;
.super Ljava/lang/Object;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, this:Landroid/webkit/CallbackProxy$ResultTransport;,"Landroid/webkit/CallbackProxy$ResultTransport<TE;>;"
    .local p1, defaultResult:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Landroid/webkit/CallbackProxy$ResultTransport;->mResult:Ljava/lang/Object;

    .line 143
    return-void
.end method


# virtual methods
.method public declared-synchronized getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, this:Landroid/webkit/CallbackProxy$ResultTransport;,"Landroid/webkit/CallbackProxy$ResultTransport<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/CallbackProxy$ResultTransport;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setResult(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Landroid/webkit/CallbackProxy$ResultTransport;,"Landroid/webkit/CallbackProxy$ResultTransport<TE;>;"
    .local p1, result:Ljava/lang/Object;,"TE;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/CallbackProxy$ResultTransport;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
