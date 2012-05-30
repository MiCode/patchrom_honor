.class public Landroid/net/LinkDatagramSocket;
.super Ljava/net/DatagramSocket;
.source "LinkDatagramSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkDatagramSocket$1;,
        Landroid/net/LinkDatagramSocket$MessageLoop;,
        Landroid/net/LinkDatagramSocket$MessageHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final ERROR_ALL_NETWORKS_DOWN:I = 0x1

.field public static final ERROR_NETWORKS_FAIL_REQUIREMENTS:I = 0x2

.field public static final ERROR_UNKNOWN:I = 0x0

.field private static final NOT_SET:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LinkDatagramSocket"


# instance fields
.field private isWaitingForResponse:Z

.field private mBindPort:I

.field private mHandler:Landroid/os/Handler;

.field private mHostname:Ljava/lang/String;

.field private mId:I

.field private mMsgHandler:Landroid/net/LinkDatagramSocket$MessageHandler;

.field private mMsgLoop:Landroid/net/LinkDatagramSocket$MessageLoop;

.field private mNeededCapabilities:Landroid/net/LinkCapabilities;

.field protected mNetSelectTimeout:I

.field private mNotifier:Landroid/net/LinkSocketNotifier;

.field private mProperties:Landroid/net/LinkProperties;

.field private mService:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0, v3}, Ljava/net/DatagramSocket;-><init>(Z)V

    .line 95
    iput-boolean v3, p0, Landroid/net/LinkDatagramSocket;->isWaitingForResponse:Z

    .line 99
    const/16 v0, 0x7530

    iput v0, p0, Landroid/net/LinkDatagramSocket;->mNetSelectTimeout:I

    .line 100
    iput-object v2, p0, Landroid/net/LinkDatagramSocket;->mService:Landroid/net/IConnectivityManager;

    .line 101
    iput-object v2, p0, Landroid/net/LinkDatagramSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    .line 102
    iput-object v2, p0, Landroid/net/LinkDatagramSocket;->mProperties:Landroid/net/LinkProperties;

    .line 103
    iput-object v2, p0, Landroid/net/LinkDatagramSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    .line 104
    iput-object v2, p0, Landroid/net/LinkDatagramSocket;->mHostname:Ljava/lang/String;

    .line 105
    iput v3, p0, Landroid/net/LinkDatagramSocket;->mBindPort:I

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/LinkDatagramSocket;->mId:I

    .line 108
    new-instance v0, Landroid/net/LinkDatagramSocket$MessageHandler;

    invoke-direct {v0, p0, v2}, Landroid/net/LinkDatagramSocket$MessageHandler;-><init>(Landroid/net/LinkDatagramSocket;Landroid/net/LinkDatagramSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkDatagramSocket;->mMsgHandler:Landroid/net/LinkDatagramSocket$MessageHandler;

    .line 109
    iput-object v2, p0, Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Landroid/net/LinkDatagramSocket$MessageLoop;

    invoke-direct {v0, p0, v2}, Landroid/net/LinkDatagramSocket$MessageLoop;-><init>(Landroid/net/LinkDatagramSocket;Landroid/net/LinkDatagramSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkDatagramSocket;->mMsgLoop:Landroid/net/LinkDatagramSocket$MessageLoop;

    .line 120
    const-string v0, "LinkDatagramSocket"

    const-string v1, "LinkDatagramSocket() EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0, v2, v3}, Landroid/net/LinkDatagramSocket;->constructor(Landroid/net/LinkSocketNotifier;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 148
    invoke-direct {p0, v1}, Ljava/net/DatagramSocket;-><init>(Z)V

    .line 95
    iput-boolean v1, p0, Landroid/net/LinkDatagramSocket;->isWaitingForResponse:Z

    .line 99
    const/16 v0, 0x7530

    iput v0, p0, Landroid/net/LinkDatagramSocket;->mNetSelectTimeout:I

    .line 100
    iput-object v2, p0, Landroid/net/LinkDatagramSocket;->mService:Landroid/net/IConnectivityManager;

    .line 101
    iput-object v2, p0, Landroid/net/LinkDatagramSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    .line 102
    iput-object v2, p0, Landroid/net/LinkDatagramSocket;->mProperties:Landroid/net/LinkProperties;

    .line 103
    iput-object v2, p0, Landroid/net/LinkDatagramSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    .line 104
    iput-object v2, p0, Landroid/net/LinkDatagramSocket;->mHostname:Ljava/lang/String;

    .line 105
    iput v1, p0, Landroid/net/LinkDatagramSocket;->mBindPort:I

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/LinkDatagramSocket;->mId:I

    .line 108
    new-instance v0, Landroid/net/LinkDatagramSocket$MessageHandler;

    invoke-direct {v0, p0, v2}, Landroid/net/LinkDatagramSocket$MessageHandler;-><init>(Landroid/net/LinkDatagramSocket;Landroid/net/LinkDatagramSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkDatagramSocket;->mMsgHandler:Landroid/net/LinkDatagramSocket$MessageHandler;

    .line 109
    iput-object v2, p0, Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Landroid/net/LinkDatagramSocket$MessageLoop;

    invoke-direct {v0, p0, v2}, Landroid/net/LinkDatagramSocket$MessageLoop;-><init>(Landroid/net/LinkDatagramSocket;Landroid/net/LinkDatagramSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkDatagramSocket;->mMsgLoop:Landroid/net/LinkDatagramSocket$MessageLoop;

    .line 149
    const-string v0, "LinkDatagramSocket"

    const-string v1, "LinkDatagramSocket(aPort) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0, v2, p1}, Landroid/net/LinkDatagramSocket;->constructor(Landroid/net/LinkSocketNotifier;I)V

    .line 151
    return-void
.end method

.method public constructor <init>(ILandroid/net/LinkSocketNotifier;)V
    .locals 3
    .parameter "aPort"
    .parameter "notifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0, v2}, Ljava/net/DatagramSocket;-><init>(Z)V

    .line 95
    iput-boolean v2, p0, Landroid/net/LinkDatagramSocket;->isWaitingForResponse:Z

    .line 99
    const/16 v0, 0x7530

    iput v0, p0, Landroid/net/LinkDatagramSocket;->mNetSelectTimeout:I

    .line 100
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mService:Landroid/net/IConnectivityManager;

    .line 101
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    .line 102
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mProperties:Landroid/net/LinkProperties;

    .line 103
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    .line 104
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mHostname:Ljava/lang/String;

    .line 105
    iput v2, p0, Landroid/net/LinkDatagramSocket;->mBindPort:I

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/LinkDatagramSocket;->mId:I

    .line 108
    new-instance v0, Landroid/net/LinkDatagramSocket$MessageHandler;

    invoke-direct {v0, p0, v1}, Landroid/net/LinkDatagramSocket$MessageHandler;-><init>(Landroid/net/LinkDatagramSocket;Landroid/net/LinkDatagramSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkDatagramSocket;->mMsgHandler:Landroid/net/LinkDatagramSocket$MessageHandler;

    .line 109
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Landroid/net/LinkDatagramSocket$MessageLoop;

    invoke-direct {v0, p0, v1}, Landroid/net/LinkDatagramSocket$MessageLoop;-><init>(Landroid/net/LinkDatagramSocket;Landroid/net/LinkDatagramSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkDatagramSocket;->mMsgLoop:Landroid/net/LinkDatagramSocket$MessageLoop;

    .line 170
    const-string v0, "LinkDatagramSocket"

    const-string v1, "LinkDatagramSocket(aPort, notifier) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0, p2, p1}, Landroid/net/LinkDatagramSocket;->constructor(Landroid/net/LinkSocketNotifier;I)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkDatagramSocket;)V
    .locals 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0, v2}, Ljava/net/DatagramSocket;-><init>(Z)V

    .line 95
    iput-boolean v2, p0, Landroid/net/LinkDatagramSocket;->isWaitingForResponse:Z

    .line 99
    const/16 v0, 0x7530

    iput v0, p0, Landroid/net/LinkDatagramSocket;->mNetSelectTimeout:I

    .line 100
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mService:Landroid/net/IConnectivityManager;

    .line 101
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    .line 102
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mProperties:Landroid/net/LinkProperties;

    .line 103
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    .line 104
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mHostname:Ljava/lang/String;

    .line 105
    iput v2, p0, Landroid/net/LinkDatagramSocket;->mBindPort:I

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/LinkDatagramSocket;->mId:I

    .line 108
    new-instance v0, Landroid/net/LinkDatagramSocket$MessageHandler;

    invoke-direct {v0, p0, v1}, Landroid/net/LinkDatagramSocket$MessageHandler;-><init>(Landroid/net/LinkDatagramSocket;Landroid/net/LinkDatagramSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkDatagramSocket;->mMsgHandler:Landroid/net/LinkDatagramSocket$MessageHandler;

    .line 109
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Landroid/net/LinkDatagramSocket$MessageLoop;

    invoke-direct {v0, p0, v1}, Landroid/net/LinkDatagramSocket$MessageLoop;-><init>(Landroid/net/LinkDatagramSocket;Landroid/net/LinkDatagramSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkDatagramSocket;->mMsgLoop:Landroid/net/LinkDatagramSocket$MessageLoop;

    .line 182
    const-string v0, "LinkDatagramSocket"

    const-string v1, "LinkDatagramSocket(source) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p1, Landroid/net/LinkDatagramSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    invoke-direct {p0, v0, v2}, Landroid/net/LinkDatagramSocket;->constructor(Landroid/net/LinkSocketNotifier;I)V

    .line 184
    invoke-virtual {p1}, Landroid/net/LinkDatagramSocket;->getNeededCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/LinkDatagramSocket;->setNeededCapabilities(Landroid/net/LinkCapabilities;)Z

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkSocketNotifier;)V
    .locals 3
    .parameter "notifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, v2}, Ljava/net/DatagramSocket;-><init>(Z)V

    .line 95
    iput-boolean v2, p0, Landroid/net/LinkDatagramSocket;->isWaitingForResponse:Z

    .line 99
    const/16 v0, 0x7530

    iput v0, p0, Landroid/net/LinkDatagramSocket;->mNetSelectTimeout:I

    .line 100
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mService:Landroid/net/IConnectivityManager;

    .line 101
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    .line 102
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mProperties:Landroid/net/LinkProperties;

    .line 103
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    .line 104
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mHostname:Ljava/lang/String;

    .line 105
    iput v2, p0, Landroid/net/LinkDatagramSocket;->mBindPort:I

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/LinkDatagramSocket;->mId:I

    .line 108
    new-instance v0, Landroid/net/LinkDatagramSocket$MessageHandler;

    invoke-direct {v0, p0, v1}, Landroid/net/LinkDatagramSocket$MessageHandler;-><init>(Landroid/net/LinkDatagramSocket;Landroid/net/LinkDatagramSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkDatagramSocket;->mMsgHandler:Landroid/net/LinkDatagramSocket$MessageHandler;

    .line 109
    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Landroid/net/LinkDatagramSocket$MessageLoop;

    invoke-direct {v0, p0, v1}, Landroid/net/LinkDatagramSocket$MessageLoop;-><init>(Landroid/net/LinkDatagramSocket;Landroid/net/LinkDatagramSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkDatagramSocket;->mMsgLoop:Landroid/net/LinkDatagramSocket$MessageLoop;

    .line 132
    const-string v0, "LinkDatagramSocket"

    const-string v1, "LinkDatagramSocket(notifier) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0, p1, v2}, Landroid/net/LinkDatagramSocket;->constructor(Landroid/net/LinkSocketNotifier;I)V

    .line 134
    return-void
.end method

.method static synthetic access$200(Landroid/net/LinkDatagramSocket;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/LinkDatagramSocket;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/LinkDatagramSocket;Landroid/net/LinkProperties;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/net/LinkDatagramSocket;->callbackOnLinkAvail(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/LinkDatagramSocket;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/net/LinkDatagramSocket;->callbackOnGetLinkFailure(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/LinkDatagramSocket;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/net/LinkDatagramSocket;->callbackOnBetterLinkAvail()V

    return-void
.end method

.method static synthetic access$600(Landroid/net/LinkDatagramSocket;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/net/LinkDatagramSocket;->callbackOnLinkLost()V

    return-void
.end method

.method static synthetic access$700(Landroid/net/LinkDatagramSocket;Landroid/net/LinkCapabilities;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/net/LinkDatagramSocket;->callbackOnCapabilitiesChanged(Landroid/net/LinkCapabilities;)V

    return-void
.end method

.method private callbackOnBetterLinkAvail()V
    .locals 3

    .prologue
    .line 830
    const-string v1, "LinkDatagramSocket"

    const-string/jumbo v2, "onBetterLinkAvail() EX"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v1, p0, Landroid/net/LinkDatagramSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    if-nez v1, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    iget-object v1, p0, Landroid/net/LinkDatagramSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 837
    :cond_2
    iget-object v1, p0, Landroid/net/LinkDatagramSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    invoke-interface {v1, p0}, Landroid/net/LinkSocketNotifier;->onBetterLinkAvailable(Landroid/net/LinkDatagramSocket;)V

    goto :goto_0
.end method

.method private callbackOnCapabilitiesChanged(Landroid/net/LinkCapabilities;)V
    .locals 3
    .parameter "changedCapabilities"

    .prologue
    .line 852
    const-string v1, "LinkDatagramSocket"

    const-string/jumbo v2, "onCapabilitiesChanged(changedCapabilities) EX"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v1, p0, Landroid/net/LinkDatagramSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    if-nez v1, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    iget-object v1, p0, Landroid/net/LinkDatagramSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 859
    :cond_2
    iget-object v1, p0, Landroid/net/LinkDatagramSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    invoke-interface {v1, p0, p1}, Landroid/net/LinkSocketNotifier;->onCapabilitiesChanged(Landroid/net/LinkDatagramSocket;Landroid/net/LinkCapabilities;)V

    goto :goto_0
.end method

.method private callbackOnGetLinkFailure(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 807
    const-string v0, "LinkDatagramSocket"

    const-string/jumbo v1, "onGetLinkFailure(reason) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Landroid/net/LinkDatagramSocket;->mProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    .line 827
    :goto_0
    return-void

    .line 820
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/LinkDatagramSocket;->mId:I

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/LinkDatagramSocket;->isWaitingForResponse:Z

    .line 824
    monitor-enter p0

    .line 825
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 826
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private callbackOnLinkAvail(Landroid/net/LinkProperties;)V
    .locals 2
    .parameter "properties"

    .prologue
    .line 782
    const-string v0, "LinkDatagramSocket"

    const-string/jumbo v1, "onLinkAvail(properties) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Landroid/net/LinkDatagramSocket;->mProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    .line 792
    invoke-direct {p0}, Landroid/net/LinkDatagramSocket;->callbackOnBetterLinkAvail()V

    .line 804
    :goto_0
    return-void

    .line 797
    :cond_0
    iput-object p1, p0, Landroid/net/LinkDatagramSocket;->mProperties:Landroid/net/LinkProperties;

    .line 800
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/LinkDatagramSocket;->isWaitingForResponse:Z

    .line 801
    monitor-enter p0

    .line 802
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 803
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private callbackOnLinkLost()V
    .locals 3

    .prologue
    .line 841
    const-string v1, "LinkDatagramSocket"

    const-string/jumbo v2, "onLinkLost() EX"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v1, p0, Landroid/net/LinkDatagramSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    if-nez v1, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    iget-object v1, p0, Landroid/net/LinkDatagramSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 848
    :cond_2
    iget-object v1, p0, Landroid/net/LinkDatagramSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    invoke-interface {v1, p0}, Landroid/net/LinkSocketNotifier;->onLinkLost(Landroid/net/LinkDatagramSocket;)V

    goto :goto_0
.end method

.method private constructor(Landroid/net/LinkSocketNotifier;I)V
    .locals 4
    .parameter "notifier"
    .parameter "bindPort"

    .prologue
    .line 719
    const-string v1, "LinkDatagramSocket"

    const-string v2, "constructor(notifier) EX"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v1, p0, Landroid/net/LinkDatagramSocket;->mMsgLoop:Landroid/net/LinkDatagramSocket$MessageLoop;

    invoke-virtual {v1}, Landroid/net/LinkDatagramSocket$MessageLoop;->start()V

    .line 723
    iput-object p1, p0, Landroid/net/LinkDatagramSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    .line 724
    iput p2, p0, Landroid/net/LinkDatagramSocket;->mBindPort:I

    .line 725
    const-string v1, "default"

    invoke-static {v1}, Landroid/net/LinkCapabilities;->createNeedsMap(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/LinkDatagramSocket;->setNeededCapabilities(Landroid/net/LinkCapabilities;)Z

    .line 726
    iget-object v1, p0, Landroid/net/LinkDatagramSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    const/16 v2, 0x15

    const-string/jumbo v3, "udp"

    invoke-virtual {v1, v2, v3}, Landroid/net/LinkCapabilities;->put(ILjava/lang/String;)V

    .line 728
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 729
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mService:Landroid/net/IConnectivityManager;

    .line 730
    return-void
.end method

.method private releaseLink()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 733
    iget v1, p0, Landroid/net/LinkDatagramSocket;->mId:I

    if-ne v1, v4, :cond_0

    .line 741
    :goto_0
    return-void

    .line 734
    :cond_0
    const-string v1, "LinkDatagramSocket"

    const-string/jumbo v2, "releasing link"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :try_start_0
    iget-object v1, p0, Landroid/net/LinkDatagramSocket;->mService:Landroid/net/IConnectivityManager;

    iget v2, p0, Landroid/net/LinkDatagramSocket;->mId:I

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->releaseLink(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :goto_1
    iput v4, p0, Landroid/net/LinkDatagramSocket;->mId:I

    goto :goto_0

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LinkDatagramSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LinkDatagramSocket was unable relinquish the current network link. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static declared-synchronized setDatagramSocketImplFactory(Ljava/net/DatagramSocketImplFactory;)V
    .locals 3
    .parameter "fac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 537
    const-class v1, Landroid/net/LinkDatagramSocket;

    monitor-enter v1

    :try_start_0
    const-string v0, "LinkDatagramSocket"

    const-string/jumbo v2, "setDatagramSocketImplFactory(fac) EX Deprecated"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "This method is deprecated, LinkDatagramSocket will automatically manage which factory to use"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 326
    const-string v0, "LinkDatagramSocket"

    const-string v1, "bind(localAddr) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LinkDatagamSocket will automatically bind to the optimum interface."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 515
    const-string v0, "LinkDatagramSocket"

    const-string v1, "close() EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Landroid/net/LinkDatagramSocket;->mMsgLoop:Landroid/net/LinkDatagramSocket$MessageLoop;

    invoke-virtual {v0}, Landroid/net/LinkDatagramSocket$MessageLoop;->quit()V

    .line 517
    invoke-direct {p0}, Landroid/net/LinkDatagramSocket;->releaseLink()V

    .line 518
    invoke-super {p0}, Ljava/net/DatagramSocket;->close()V

    .line 519
    return-void
.end method

.method public connect(Landroid/net/LinkDatagramSocket;)V
    .locals 2
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    const-string v0, "LinkDatagramSocket"

    const-string v1, "connect(source) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p1}, Landroid/net/LinkDatagramSocket;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkDatagramSocket;->getPort()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/net/LinkDatagramSocket;->connect(Ljava/lang/String;I)V

    .line 368
    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 2
    .parameter "dstName"
    .parameter "dstPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    const-string v0, "LinkDatagramSocket"

    const-string v1, "connect(dstName, dstPort) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-nez p1, :cond_0

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dstName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    iput-object p1, p0, Landroid/net/LinkDatagramSocket;->mHostname:Ljava/lang/String;

    .line 351
    iget v0, p0, Landroid/net/LinkDatagramSocket;->mNetSelectTimeout:I

    invoke-virtual {p0, v0}, Landroid/net/LinkDatagramSocket;->performNetworkSelection(I)V

    .line 353
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-super {p0, v0}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    .line 354
    return-void
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 4
    .parameter "address"
    .parameter "port"

    .prologue
    .line 375
    const-string v1, "LinkDatagramSocket"

    const-string v2, "connect(address, port) EX"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/net/LinkDatagramSocket;->connect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 384
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnknownHostException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 382
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 4
    .parameter "peer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 391
    const-string v1, "LinkDatagramSocket"

    const-string v2, "connect(peer) EX"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    if-nez p1, :cond_0

    .line 393
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "peer == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_0
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_1

    .line 397
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peer not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p1

    .line 401
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 402
    .local v0, isa:Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/net/LinkDatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 403
    return-void
.end method

.method public getCapabilities()Landroid/net/LinkCapabilities;
    .locals 5

    .prologue
    .line 237
    const-string v3, "LinkDatagramSocket"

    const-string v4, "getCapabilities() EX"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    .line 241
    .local v0, cap:Landroid/net/LinkCapabilities;
    const/16 v3, 0xc

    :try_start_0
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 255
    .local v2, keys:[I
    iget-object v3, p0, Landroid/net/LinkDatagramSocket;->mService:Landroid/net/IConnectivityManager;

    iget v4, p0, Landroid/net/LinkDatagramSocket;->mId:I

    invoke-interface {v3, v4, v2}, Landroid/net/IConnectivityManager;->requestCapabilities(I[I)Landroid/net/LinkCapabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 261
    .end local v2           #keys:[I
    :goto_0
    return-object v0

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "LinkDatagramSocket"

    const-string v4, "LinkSocket was unable to get capabilities from ConnectivityService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Landroid/net/LinkCapabilities;

    .end local v0           #cap:Landroid/net/LinkCapabilities;
    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    .restart local v0       #cap:Landroid/net/LinkCapabilities;
    goto :goto_0

    .line 241
    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getCapabilities(Ljava/util/Set;)Landroid/net/LinkCapabilities;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/LinkCapabilities;"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, capability_keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v5, "LinkDatagramSocket"

    const-string v6, "getCapabilities(capability_keys) EX"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, cap:Landroid/net/LinkCapabilities;
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 280
    .local v4, keys:[I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 281
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    :cond_0
    :try_start_0
    iget-object v5, p0, Landroid/net/LinkDatagramSocket;->mService:Landroid/net/IConnectivityManager;

    iget v6, p0, Landroid/net/LinkDatagramSocket;->mId:I

    invoke-interface {v5, v6, v4}, Landroid/net/IConnectivityManager;->requestCapabilities(I[I)Landroid/net/LinkCapabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 290
    :goto_1
    return-object v0

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "LinkDatagramSocket"

    const-string v6, "LinkDatagramSocket was unable to get capabilities from ConnectivityService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Landroid/net/LinkDatagramSocket;->mHostname:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 193
    const-string v0, "LinkDatagramSocket"

    const-string v1, "getLinkProperties() EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/LinkDatagramSocket;->mProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNeededCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 228
    const-string v0, "LinkDatagramSocket"

    const-string v1, "getNeededCapabilities() EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/LinkDatagramSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 559
    invoke-super {p0}, Ljava/net/DatagramSocket;->getPort()I

    move-result v0

    return v0
.end method

.method public getTrackedCapabilities()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    const-string v0, "LinkDatagramSocket"

    const-string v1, "getTrackedCapabilities() EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected declared-synchronized performNetworkSelection(I)V
    .locals 13
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 577
    monitor-enter p0

    :try_start_0
    const-string v8, "LinkDatagramSocket"

    const-string/jumbo v9, "performNetworkSelection(timeout) EX"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v8, p0, Landroid/net/LinkDatagramSocket;->mProperties:Landroid/net/LinkProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    .line 677
    :cond_0
    monitor-exit p0

    return-void

    .line 584
    :cond_1
    :try_start_1
    iget-object v8, p0, Landroid/net/LinkDatagramSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/net/LinkCapabilities;->containsKey(I)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/net/LinkDatagramSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/net/LinkCapabilities;->containsKey(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 586
    :cond_2
    new-instance v8, Ljava/io/IOException;

    const-string v9, "RW_ALLOWED_NETWORKS and RW_PROHIBITED_NETWORKS are not supported at this time"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 591
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 594
    .local v7, start:Ljava/util/Calendar;
    :goto_0
    iget-object v8, p0, Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;

    if-nez v8, :cond_4

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 604
    :cond_4
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 605
    :try_start_3
    iget v8, p0, Landroid/net/LinkDatagramSocket;->mId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    .line 607
    :try_start_4
    const-string v8, "LinkDatagramSocket"

    const-string/jumbo v9, "sending requestLink()"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/net/LinkDatagramSocket;->isWaitingForResponse:Z

    .line 609
    iget-object v8, p0, Landroid/net/LinkDatagramSocket;->mService:Landroid/net/IConnectivityManager;

    iget-object v9, p0, Landroid/net/LinkDatagramSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    iget-object v10, p0, Landroid/net/LinkDatagramSocket;->mHostname:Ljava/lang/String;

    iget-object v11, p0, Landroid/net/LinkDatagramSocket;->mMsgHandler:Landroid/net/LinkDatagramSocket$MessageHandler;

    invoke-interface {v8, v9, v10, v11}, Landroid/net/IConnectivityManager;->requestLink(Landroid/net/LinkCapabilities;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v8

    iput v8, p0, Landroid/net/LinkDatagramSocket;->mId:I

    .line 610
    :goto_1
    iget-boolean v8, p0, Landroid/net/LinkDatagramSocket;->isWaitingForResponse:Z

    if-eqz v8, :cond_6

    .line 611
    const-string v8, "LinkDatagramSocket"

    const-string v9, "Blocking: waiting for response"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    int-to-long v8, p1

    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 620
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v8, v8

    sub-int/2addr p1, v8

    .line 622
    if-gtz p1, :cond_5

    .line 623
    invoke-direct {p0}, Landroid/net/LinkDatagramSocket;->releaseLink()V

    .line 624
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Socket timed out during link acquisition."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 629
    :catch_0
    move-exception v3

    .line 630
    .local v3, ex:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-direct {p0}, Landroid/net/LinkDatagramSocket;->releaseLink()V

    .line 631
    new-instance v8, Ljava/io/IOException;

    const-string v9, "ConnectivityService failed to respond to request"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 637
    .end local v3           #ex:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v8

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 626
    :cond_5
    :try_start_7
    const-string v8, "LinkDatagramSocket"

    const-string v9, "Blocking: received notification or timeout"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 632
    :catch_1
    move-exception v3

    .line 633
    .local v3, ex:Landroid/os/RemoteException;
    :try_start_8
    invoke-direct {p0}, Landroid/net/LinkDatagramSocket;->releaseLink()V

    .line 634
    new-instance v8, Ljava/io/IOException;

    const-string v9, "LinkSocket was unable to acquire a new network link"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 628
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_6
    :try_start_9
    const-string v8, "LinkDatagramSocket"

    const-string v9, "Blocking: done"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    .line 637
    :cond_7
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 640
    :try_start_b
    iget-object v8, p0, Landroid/net/LinkDatagramSocket;->mProperties:Landroid/net/LinkProperties;

    if-nez v8, :cond_8

    .line 641
    invoke-direct {p0}, Landroid/net/LinkDatagramSocket;->releaseLink()V

    .line 642
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Unable to find a network that meets requirements."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 646
    :cond_8
    iget-object v8, p0, Landroid/net/LinkDatagramSocket;->mProperties:Landroid/net/LinkProperties;

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    .line 647
    .local v1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 648
    :cond_9
    invoke-direct {p0}, Landroid/net/LinkDatagramSocket;->releaseLink()V

    .line 649
    new-instance v8, Ljava/io/IOException;

    const-string v9, "No valid address to bind to"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 651
    :cond_a
    const/4 v2, 0x0

    .line 652
    .local v2, bindAddress:Ljava/net/InetAddress;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 653
    .local v0, address:Ljava/net/InetAddress;
    move-object v2, v0

    .line 658
    .end local v0           #address:Ljava/net/InetAddress;
    :cond_b
    const-string v8, "LinkDatagramSocket"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "attempting to bind: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " port: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/net/LinkDatagramSocket;->mBindPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 660
    :try_start_c
    new-instance v8, Ljava/net/InetSocketAddress;

    iget v9, p0, Landroid/net/LinkDatagramSocket;->mBindPort:I

    invoke-direct {v8, v2, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-super {p0, v8}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_3

    .line 665
    :try_start_d
    invoke-virtual {p0}, Landroid/net/LinkDatagramSocket;->getLocalPort()I

    move-result v8

    iput v8, p0, Landroid/net/LinkDatagramSocket;->mBindPort:I

    .line 666
    const-string v8, "LinkDatagramSocket"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bind successful: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/net/LinkDatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/net/LinkDatagramSocket;->mBindPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 671
    :try_start_e
    iget-object v8, p0, Landroid/net/LinkDatagramSocket;->mService:Landroid/net/IConnectivityManager;

    iget v9, p0, Landroid/net/LinkDatagramSocket;->mId:I

    iget v10, p0, Landroid/net/LinkDatagramSocket;->mBindPort:I

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v9, v10, v11}, Landroid/net/IConnectivityManager;->requestQoS(IILjava/lang/String;)Z

    move-result v8

    if-eq v8, v12, :cond_0

    .line 672
    new-instance v8, Ljava/io/IOException;

    const-string v9, "LinkSocket was unable to request for QoS"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_2

    .line 674
    :catch_2
    move-exception v5

    .line 675
    .local v5, re:Landroid/os/RemoteException;
    :try_start_f
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LinkSocket was unable to request for QoS, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 661
    .end local v5           #re:Landroid/os/RemoteException;
    :catch_3
    move-exception v6

    .line 662
    .local v6, se:Ljava/net/SocketException;
    invoke-direct {p0}, Landroid/net/LinkDatagramSocket;->releaseLink()V

    .line 663
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Desired source port is already consumed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/net/LinkDatagramSocket;->mBindPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
.end method

.method public declared-synchronized receive(Ljava/net/DatagramPacket;)V
    .locals 2
    .parameter "pack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    monitor-enter p0

    :try_start_0
    const-string v0, "LinkDatagramSocket"

    const-string/jumbo v1, "receive(pack) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget v0, p0, Landroid/net/LinkDatagramSocket;->mNetSelectTimeout:I

    invoke-virtual {p0, v0}, Landroid/net/LinkDatagramSocket;->performNetworkSelection(I)V

    .line 421
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit p0

    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resumeQoS()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 497
    iget v2, p0, Landroid/net/LinkDatagramSocket;->mId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 498
    const-string v2, "LinkDatagramSocket"

    const-string v3, "Cannot resume QoS as link not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_0
    return v1

    .line 502
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/LinkDatagramSocket;->mService:Landroid/net/IConnectivityManager;

    iget v3, p0, Landroid/net/LinkDatagramSocket;->mId:I

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->resumeQoS(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 505
    .local v0, re:Landroid/os/RemoteException;
    const-string v2, "LinkDatagramSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resumeQoS experienced remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 3
    .parameter "pack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    const-string v1, "LinkDatagramSocket"

    const-string/jumbo v2, "send(pack) EX"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p0}, Landroid/net/LinkDatagramSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .local v0, dstAddress:Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 448
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 451
    :cond_0
    if-nez v0, :cond_1

    .line 452
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Destination address is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    :cond_1
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/LinkDatagramSocket;->mHostname:Ljava/lang/String;

    .line 457
    iget v1, p0, Landroid/net/LinkDatagramSocket;->mNetSelectTimeout:I

    invoke-virtual {p0, v1}, Landroid/net/LinkDatagramSocket;->performNetworkSelection(I)V

    .line 458
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 459
    return-void
.end method

.method public setNeededCapabilities(Landroid/net/LinkCapabilities;)Z
    .locals 3
    .parameter "needs"

    .prologue
    .line 208
    const-string v0, "LinkDatagramSocket"

    const-string/jumbo v1, "setNeededCapabilities(needs) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Landroid/net/LinkDatagramSocket;->mProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    .line 213
    :cond_0
    iput-object p1, p0, Landroid/net/LinkDatagramSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    .line 214
    iget-object v0, p0, Landroid/net/LinkDatagramSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    const/16 v1, 0x15

    const-string/jumbo v2, "udp"

    invoke-virtual {v0, v1, v2}, Landroid/net/LinkCapabilities;->put(ILjava/lang/String;)V

    .line 215
    iget-object v0, p0, Landroid/net/LinkDatagramSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Landroid/net/LinkDatagramSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    const/16 v1, 0x12

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/LinkCapabilities;->put(ILjava/lang/String;)V

    .line 220
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTrackedCapabilities(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, capabilities:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v0, "LinkDatagramSocket"

    const-string/jumbo v1, "setTrackedCapabilities(capabilities) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method public suspendQoS()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 472
    iget v2, p0, Landroid/net/LinkDatagramSocket;->mId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 473
    const-string v2, "LinkDatagramSocket"

    const-string v3, "Cannot suspend QoS as link not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_0
    return v1

    .line 477
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/LinkDatagramSocket;->mService:Landroid/net/IConnectivityManager;

    iget v3, p0, Landroid/net/LinkDatagramSocket;->mId:I

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->suspendQoS(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 480
    .local v0, re:Landroid/os/RemoteException;
    const-string v2, "LinkDatagramSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "suspendQoS experienced remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 564
    invoke-virtual {p0}, Landroid/net/LinkDatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 565
    iget v0, p0, Landroid/net/LinkDatagramSocket;->mId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 566
    const-string v0, "LinkDatagramSocket id:none unconnected"

    .line 571
    :goto_0
    return-object v0

    .line 568
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkDatagramSocket id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/LinkDatagramSocket;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " unconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 571
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkDatagramSocket id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/LinkDatagramSocket;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/net/DatagramSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/net/DatagramSocket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " local_port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
