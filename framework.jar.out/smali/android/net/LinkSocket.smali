.class public Landroid/net/LinkSocket;
.super Ljava/net/Socket;
.source "LinkSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkSocket$1;,
        Landroid/net/LinkSocket$LinkRequestReason;,
        Landroid/net/LinkSocket$MessageLoop;,
        Landroid/net/LinkSocket$MessageHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final ERROR_ALL_NETWORKS_DOWN:I = 0x1

.field public static final ERROR_NETWORKS_FAIL_REQUIREMENTS:I = 0x2

.field public static final ERROR_UNKNOWN:I = 0x0

.field private static final NOT_SET:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LinkSocket"


# instance fields
.field private isWaitingForResponse:Z

.field private mHandler:Landroid/os/Handler;

.field private mHostname:Ljava/lang/String;

.field private mId:I

.field private mMsgHandler:Landroid/net/LinkSocket$MessageHandler;

.field private mMsgLoop:Landroid/net/LinkSocket$MessageLoop;

.field private mNeededCapabilities:Landroid/net/LinkCapabilities;

.field private mNotifier:Landroid/net/LinkSocketNotifier;

.field private mProperties:Landroid/net/LinkProperties;

.field private mService:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/LinkSocket;->isWaitingForResponse:Z

    .line 85
    iput-object v2, p0, Landroid/net/LinkSocket;->mService:Landroid/net/IConnectivityManager;

    .line 86
    iput-object v2, p0, Landroid/net/LinkSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    .line 87
    iput-object v2, p0, Landroid/net/LinkSocket;->mProperties:Landroid/net/LinkProperties;

    .line 88
    iput-object v2, p0, Landroid/net/LinkSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    .line 89
    iput-object v2, p0, Landroid/net/LinkSocket;->mHostname:Ljava/lang/String;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/LinkSocket;->mId:I

    .line 92
    new-instance v0, Landroid/net/LinkSocket$MessageHandler;

    invoke-direct {v0, p0, v2}, Landroid/net/LinkSocket$MessageHandler;-><init>(Landroid/net/LinkSocket;Landroid/net/LinkSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkSocket;->mMsgHandler:Landroid/net/LinkSocket$MessageHandler;

    .line 93
    iput-object v2, p0, Landroid/net/LinkSocket;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/net/LinkSocket$MessageLoop;

    invoke-direct {v0, p0, v2}, Landroid/net/LinkSocket$MessageLoop;-><init>(Landroid/net/LinkSocket;Landroid/net/LinkSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkSocket;->mMsgLoop:Landroid/net/LinkSocket$MessageLoop;

    .line 101
    const-string v0, "LinkSocket"

    const-string v1, "LinkSocket() EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0, v2}, Landroid/net/LinkSocket;->constructor(Landroid/net/LinkSocketNotifier;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkSocket;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/LinkSocket;->isWaitingForResponse:Z

    .line 85
    iput-object v1, p0, Landroid/net/LinkSocket;->mService:Landroid/net/IConnectivityManager;

    .line 86
    iput-object v1, p0, Landroid/net/LinkSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    .line 87
    iput-object v1, p0, Landroid/net/LinkSocket;->mProperties:Landroid/net/LinkProperties;

    .line 88
    iput-object v1, p0, Landroid/net/LinkSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    .line 89
    iput-object v1, p0, Landroid/net/LinkSocket;->mHostname:Ljava/lang/String;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/LinkSocket;->mId:I

    .line 92
    new-instance v0, Landroid/net/LinkSocket$MessageHandler;

    invoke-direct {v0, p0, v1}, Landroid/net/LinkSocket$MessageHandler;-><init>(Landroid/net/LinkSocket;Landroid/net/LinkSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkSocket;->mMsgHandler:Landroid/net/LinkSocket$MessageHandler;

    .line 93
    iput-object v1, p0, Landroid/net/LinkSocket;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/net/LinkSocket$MessageLoop;

    invoke-direct {v0, p0, v1}, Landroid/net/LinkSocket$MessageLoop;-><init>(Landroid/net/LinkSocket;Landroid/net/LinkSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkSocket;->mMsgLoop:Landroid/net/LinkSocket$MessageLoop;

    .line 142
    const-string v0, "LinkSocket"

    const-string v1, "LinkSocket(source) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p1, Landroid/net/LinkSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    invoke-direct {p0, v0}, Landroid/net/LinkSocket;->constructor(Landroid/net/LinkSocketNotifier;)V

    .line 144
    invoke-virtual {p1}, Landroid/net/LinkSocket;->getNeededCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/LinkSocket;->setNeededCapabilities(Landroid/net/LinkCapabilities;)Z

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkSocketNotifier;)V
    .locals 2
    .parameter "notifier"

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/LinkSocket;->isWaitingForResponse:Z

    .line 85
    iput-object v1, p0, Landroid/net/LinkSocket;->mService:Landroid/net/IConnectivityManager;

    .line 86
    iput-object v1, p0, Landroid/net/LinkSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    .line 87
    iput-object v1, p0, Landroid/net/LinkSocket;->mProperties:Landroid/net/LinkProperties;

    .line 88
    iput-object v1, p0, Landroid/net/LinkSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    .line 89
    iput-object v1, p0, Landroid/net/LinkSocket;->mHostname:Ljava/lang/String;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/LinkSocket;->mId:I

    .line 92
    new-instance v0, Landroid/net/LinkSocket$MessageHandler;

    invoke-direct {v0, p0, v1}, Landroid/net/LinkSocket$MessageHandler;-><init>(Landroid/net/LinkSocket;Landroid/net/LinkSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkSocket;->mMsgHandler:Landroid/net/LinkSocket$MessageHandler;

    .line 93
    iput-object v1, p0, Landroid/net/LinkSocket;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/net/LinkSocket$MessageLoop;

    invoke-direct {v0, p0, v1}, Landroid/net/LinkSocket$MessageLoop;-><init>(Landroid/net/LinkSocket;Landroid/net/LinkSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkSocket;->mMsgLoop:Landroid/net/LinkSocket$MessageLoop;

    .line 113
    const-string v0, "LinkSocket"

    const-string v1, "LinkSocket(notifier) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0, p1}, Landroid/net/LinkSocket;->constructor(Landroid/net/LinkSocketNotifier;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/net/LinkSocketNotifier;Ljava/net/Proxy;)V
    .locals 2
    .parameter "notifier"
    .parameter "proxy"

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0, p2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/LinkSocket;->isWaitingForResponse:Z

    .line 85
    iput-object v1, p0, Landroid/net/LinkSocket;->mService:Landroid/net/IConnectivityManager;

    .line 86
    iput-object v1, p0, Landroid/net/LinkSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    .line 87
    iput-object v1, p0, Landroid/net/LinkSocket;->mProperties:Landroid/net/LinkProperties;

    .line 88
    iput-object v1, p0, Landroid/net/LinkSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    .line 89
    iput-object v1, p0, Landroid/net/LinkSocket;->mHostname:Ljava/lang/String;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/LinkSocket;->mId:I

    .line 92
    new-instance v0, Landroid/net/LinkSocket$MessageHandler;

    invoke-direct {v0, p0, v1}, Landroid/net/LinkSocket$MessageHandler;-><init>(Landroid/net/LinkSocket;Landroid/net/LinkSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkSocket;->mMsgHandler:Landroid/net/LinkSocket$MessageHandler;

    .line 93
    iput-object v1, p0, Landroid/net/LinkSocket;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/net/LinkSocket$MessageLoop;

    invoke-direct {v0, p0, v1}, Landroid/net/LinkSocket$MessageLoop;-><init>(Landroid/net/LinkSocket;Landroid/net/LinkSocket$1;)V

    iput-object v0, p0, Landroid/net/LinkSocket;->mMsgLoop:Landroid/net/LinkSocket$MessageLoop;

    .line 130
    const-string v0, "LinkSocket"

    const-string v1, "LinkSocket(notifier, proxy) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0, p1}, Landroid/net/LinkSocket;->constructor(Landroid/net/LinkSocketNotifier;)V

    .line 132
    return-void
.end method

.method static synthetic access$200(Landroid/net/LinkSocket;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/net/LinkSocket;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/LinkSocket;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Landroid/net/LinkSocket;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/LinkSocket;Landroid/net/LinkProperties;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/net/LinkSocket;->callbackOnLinkAvail(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/LinkSocket;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/net/LinkSocket;->callbackOnGetLinkFailure(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/LinkSocket;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/net/LinkSocket;->callbackOnBetterLinkAvail()V

    return-void
.end method

.method static synthetic access$600(Landroid/net/LinkSocket;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/net/LinkSocket;->callbackOnLinkLost()V

    return-void
.end method

.method static synthetic access$700(Landroid/net/LinkSocket;Landroid/net/LinkCapabilities;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/net/LinkSocket;->callbackOnCapabilitiesChanged(Landroid/net/LinkCapabilities;)V

    return-void
.end method

.method private callbackOnBetterLinkAvail()V
    .locals 3

    .prologue
    .line 689
    const-string v1, "LinkSocket"

    const-string/jumbo v2, "onBetterLinkAvail() EX"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v1, p0, Landroid/net/LinkSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    if-nez v1, :cond_1

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget-object v1, p0, Landroid/net/LinkSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    :cond_2
    iget-object v1, p0, Landroid/net/LinkSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    invoke-interface {v1, p0}, Landroid/net/LinkSocketNotifier;->onBetterLinkAvailable(Landroid/net/LinkSocket;)V

    goto :goto_0
.end method

.method private callbackOnCapabilitiesChanged(Landroid/net/LinkCapabilities;)V
    .locals 3
    .parameter "changedCapabilities"

    .prologue
    .line 711
    const-string v1, "LinkSocket"

    const-string/jumbo v2, "onCapabilitiesChanged(changedCapabilities) EX"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v1, p0, Landroid/net/LinkSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    if-nez v1, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v1, p0, Landroid/net/LinkSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 718
    :cond_2
    iget-object v1, p0, Landroid/net/LinkSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    invoke-interface {v1, p0, p1}, Landroid/net/LinkSocketNotifier;->onCapabilitiesChanged(Landroid/net/LinkSocket;Landroid/net/LinkCapabilities;)V

    goto :goto_0
.end method

.method private callbackOnGetLinkFailure(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 666
    const-string v0, "LinkSocket"

    const-string/jumbo v1, "onGetLinkFailure(reason) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Landroid/net/LinkSocket;->mProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    .line 686
    :goto_0
    return-void

    .line 679
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/LinkSocket;->mId:I

    .line 682
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/LinkSocket;->isWaitingForResponse:Z

    .line 683
    monitor-enter p0

    .line 684
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 685
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
    .line 641
    const-string v0, "LinkSocket"

    const-string/jumbo v1, "onLinkAvail(properties) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Landroid/net/LinkSocket;->mProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    .line 651
    invoke-direct {p0}, Landroid/net/LinkSocket;->callbackOnBetterLinkAvail()V

    .line 663
    :goto_0
    return-void

    .line 656
    :cond_0
    iput-object p1, p0, Landroid/net/LinkSocket;->mProperties:Landroid/net/LinkProperties;

    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/LinkSocket;->isWaitingForResponse:Z

    .line 660
    monitor-enter p0

    .line 661
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 662
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
    .line 700
    const-string v1, "LinkSocket"

    const-string/jumbo v2, "onLinkLost() EX"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v1, p0, Landroid/net/LinkSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    if-nez v1, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    iget-object v1, p0, Landroid/net/LinkSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    :cond_2
    iget-object v1, p0, Landroid/net/LinkSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    invoke-interface {v1, p0}, Landroid/net/LinkSocketNotifier;->onLinkLost(Landroid/net/LinkSocket;)V

    goto :goto_0
.end method

.method private constructor(Landroid/net/LinkSocketNotifier;)V
    .locals 4
    .parameter "notifier"

    .prologue
    .line 579
    const-string v1, "LinkSocket"

    const-string v2, "constructor(notifier, proxy) EX"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v1, p0, Landroid/net/LinkSocket;->mMsgLoop:Landroid/net/LinkSocket$MessageLoop;

    invoke-virtual {v1}, Landroid/net/LinkSocket$MessageLoop;->start()V

    .line 583
    iput-object p1, p0, Landroid/net/LinkSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    .line 584
    const-string v1, "default"

    invoke-static {v1}, Landroid/net/LinkCapabilities;->createNeedsMap(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/LinkSocket;->setNeededCapabilities(Landroid/net/LinkCapabilities;)Z

    .line 585
    iget-object v1, p0, Landroid/net/LinkSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    const/16 v2, 0x15

    const-string/jumbo v3, "tcp"

    invoke-virtual {v1, v2, v3}, Landroid/net/LinkCapabilities;->put(ILjava/lang/String;)V

    .line 587
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 588
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Landroid/net/LinkSocket;->mService:Landroid/net/IConnectivityManager;

    .line 589
    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 752
    const-string v0, "LinkSocket"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return-void
.end method

.method private releaseLink()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 592
    iget v1, p0, Landroid/net/LinkSocket;->mId:I

    if-ne v1, v4, :cond_0

    .line 600
    :goto_0
    return-void

    .line 593
    :cond_0
    const-string v1, "LinkSocket"

    const-string/jumbo v2, "releasing link"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :try_start_0
    iget-object v1, p0, Landroid/net/LinkSocket;->mService:Landroid/net/IConnectivityManager;

    iget v2, p0, Landroid/net/LinkSocket;->mId:I

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->releaseLink(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_1
    iput v4, p0, Landroid/net/LinkSocket;->mId:I

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "LinkSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LinkSocket was unable relinquish the current network link. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
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
    .line 501
    const-string v0, "LinkSocket"

    const-string v1, "bind(localAddr) EX throws Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "bind is deprecated for LinkSocket"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    const-string v0, "LinkSocket"

    const-string v1, "close() EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Landroid/net/LinkSocket;->mMsgLoop:Landroid/net/LinkSocket$MessageLoop;

    invoke-virtual {v0}, Landroid/net/LinkSocket$MessageLoop;->quit()V

    .line 487
    invoke-direct {p0}, Landroid/net/LinkSocket;->releaseLink()V

    .line 488
    invoke-super {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit p0

    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Landroid/net/LinkSocket;)V
    .locals 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    const-string v0, "LinkSocket"

    const-string v1, "connect(source) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p1}, Landroid/net/LinkSocket;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkSocket;->getPort()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/LinkSocket;->connect(Ljava/lang/String;II)V

    .line 440
    return-void
.end method

.method public connect(Landroid/net/LinkSocket;I)V
    .locals 2
    .parameter "source"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    const-string v0, "LinkSocket"

    const-string v1, "connect(source) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p1}, Landroid/net/LinkSocket;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkSocket;->getPort()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Landroid/net/LinkSocket;->connect(Ljava/lang/String;II)V

    .line 426
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
    .line 408
    const-string v0, "LinkSocket"

    const-string v1, "connect(dstName, dstPort) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/net/LinkSocket;->connect(Ljava/lang/String;II)V

    .line 410
    return-void
.end method

.method public connect(Ljava/lang/String;II)V
    .locals 11
    .parameter "dstName"
    .parameter "dstPort"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 279
    const-string v7, "LinkSocket"

    const-string v8, "connect(dstName, dstPort, timeout) EX"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v7, Ljava/net/UnknownHostException;

    const-string v8, "destination address is not set"

    invoke-direct {v7, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 284
    :cond_0
    if-gez p2, :cond_1

    .line 285
    new-instance v7, Ljava/net/UnknownHostException;

    const-string v8, "destination port is not set"

    invoke-direct {v7, v8}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 296
    :cond_1
    iget-object v7, p0, Landroid/net/LinkSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/net/LinkCapabilities;->containsKey(I)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Landroid/net/LinkSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/net/LinkCapabilities;->containsKey(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 298
    :cond_2
    new-instance v7, Ljava/io/IOException;

    const-string v8, "RW_ALLOWED_NETWORKS and RW_PROHIBITED_NETWORKS are not supported at this time"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 303
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 306
    .local v6, start:Ljava/util/Calendar;
    :goto_0
    iget-object v7, p0, Landroid/net/LinkSocket;->mHandler:Landroid/os/Handler;

    if-nez v7, :cond_4

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 318
    :cond_4
    iput-object p1, p0, Landroid/net/LinkSocket;->mHostname:Ljava/lang/String;

    .line 321
    monitor-enter p0

    .line 322
    :try_start_0
    iget v7, p0, Landroid/net/LinkSocket;->mId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    .line 324
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Landroid/net/LinkSocket;->isWaitingForResponse:Z

    .line 325
    const-string v7, "LinkSocket"

    const-string/jumbo v8, "sending requestLink()"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v7, p0, Landroid/net/LinkSocket;->mService:Landroid/net/IConnectivityManager;

    iget-object v8, p0, Landroid/net/LinkSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    iget-object v9, p0, Landroid/net/LinkSocket;->mHostname:Ljava/lang/String;

    iget-object v10, p0, Landroid/net/LinkSocket;->mMsgHandler:Landroid/net/LinkSocket$MessageHandler;

    invoke-interface {v7, v8, v9, v10}, Landroid/net/IConnectivityManager;->requestLink(Landroid/net/LinkCapabilities;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v7

    iput v7, p0, Landroid/net/LinkSocket;->mId:I

    .line 327
    const-string v7, "LinkSocket"

    const-string v8, "Blocking: waiting for response"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_1
    iget-boolean v7, p0, Landroid/net/LinkSocket;->isWaitingForResponse:Z

    if-eqz v7, :cond_8

    .line 329
    if-nez p3, :cond_7

    .line 330
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 350
    :cond_5
    const-string v7, "LinkSocket"

    const-string v8, "Blocking: received notification or timeout"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 353
    :catch_0
    move-exception v3

    .line 354
    .local v3, ex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v7, "LinkSocket"

    const-string v8, "ConnectivityService failed to respond to request."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-direct {p0}, Landroid/net/LinkSocket;->releaseLink()V

    .line 361
    .end local v3           #ex:Ljava/lang/InterruptedException;
    :cond_6
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    iget-object v7, p0, Landroid/net/LinkSocket;->mProperties:Landroid/net/LinkProperties;

    if-nez v7, :cond_9

    .line 365
    invoke-direct {p0}, Landroid/net/LinkSocket;->releaseLink()V

    .line 366
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Unable to find a network that meets requirements."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 332
    :cond_7
    int-to-long v7, p3

    :try_start_3
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 342
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-int v7, v7

    sub-int/2addr p3, v7

    .line 344
    if-gtz p3, :cond_5

    .line 345
    invoke-direct {p0}, Landroid/net/LinkSocket;->releaseLink()V

    .line 346
    new-instance v7, Ljava/net/SocketTimeoutException;

    const-string v8, "Socket timed out during link acquisition."

    invoke-direct {v7, v8}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 356
    :catch_1
    move-exception v3

    .line 357
    .local v3, ex:Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "LinkSocket"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LinkSocket was unable to acquire a new network link. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-direct {p0}, Landroid/net/LinkSocket;->releaseLink()V

    goto :goto_2

    .line 361
    .end local v3           #ex:Landroid/os/RemoteException;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 352
    :cond_8
    :try_start_5
    const-string v7, "LinkSocket"

    const-string v8, "Blocking: done"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 370
    :cond_9
    iget-object v7, p0, Landroid/net/LinkSocket;->mProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v1

    .line 371
    .local v1, addresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 372
    :cond_a
    invoke-direct {p0}, Landroid/net/LinkSocket;->releaseLink()V

    .line 373
    new-instance v7, Ljava/io/IOException;

    const-string v8, "No valid address to bind to"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 375
    :cond_b
    const/4 v2, 0x0

    .line 376
    .local v2, bindAddress:Ljava/net/InetAddress;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 377
    .local v0, address:Ljava/net/InetAddress;
    move-object v2, v0

    .line 382
    .end local v0           #address:Ljava/net/InetAddress;
    :cond_c
    const-string v7, "LinkSocket"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attempting to bind: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v7, Ljava/net/InetSocketAddress;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-super {p0, v7}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 384
    const-string v7, "LinkSocket"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bind successful: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/net/LinkSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v7, "LinkSocket"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attempting to connect: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/LinkSocket;->mHostname:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-super {p0}, Ljava/net/Socket;->getPort()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :try_start_6
    iget-object v7, p0, Landroid/net/LinkSocket;->mService:Landroid/net/IConnectivityManager;

    iget v8, p0, Landroid/net/LinkSocket;->mId:I

    invoke-super {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v9

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Landroid/net/IConnectivityManager;->requestQoS(IILjava/lang/String;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 393
    :goto_3
    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-direct {v7, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-super {p0, v7, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 394
    const-string v7, "LinkSocket"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "connect successful: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/net/LinkSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-super {p0}, Ljava/net/Socket;->getPort()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void

    .line 390
    :catch_2
    move-exception v5

    .line 391
    .local v5, re:Landroid/os/RemoteException;
    const-string v7, "LinkSocket"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requestQoS experienced remote exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 2
    .parameter "remoteAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 473
    const-string v0, "LinkSocket"

    const-string v1, "connect(remoteAddr) EX DEPRECATED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connect(remoteAddr) is deprecated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 2
    .parameter "remoteAddr"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 456
    const-string v0, "LinkSocket"

    const-string v1, "connect(remoteAddr, timeout) EX DEPRECATED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connect(remoteAddr, timeout) is deprecated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCapabilities()Landroid/net/LinkCapabilities;
    .locals 5

    .prologue
    .line 192
    const-string v3, "LinkSocket"

    const-string v4, "getCapabilities() EX"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x0

    .line 196
    .local v0, cap:Landroid/net/LinkCapabilities;
    const/16 v3, 0xb

    :try_start_0
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 209
    .local v2, keys:[I
    iget-object v3, p0, Landroid/net/LinkSocket;->mService:Landroid/net/IConnectivityManager;

    iget v4, p0, Landroid/net/LinkSocket;->mId:I

    invoke-interface {v3, v4, v2}, Landroid/net/IConnectivityManager;->requestCapabilities(I[I)Landroid/net/LinkCapabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 215
    .end local v2           #keys:[I
    :goto_0
    return-object v0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, ex:Landroid/os/RemoteException;
    const-string v3, "LinkSocket"

    const-string v4, "LinkSocket was unable to get capabilities from ConnectivityService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Landroid/net/LinkCapabilities;

    .end local v0           #cap:Landroid/net/LinkCapabilities;
    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    .restart local v0       #cap:Landroid/net/LinkCapabilities;
    goto :goto_0

    .line 196
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
    .line 228
    .local p1, capability_keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v5, "LinkSocket"

    const-string v6, "getCapabilities(capabilities) EX"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, cap:Landroid/net/LinkCapabilities;
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 233
    .local v4, keys:[I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 234
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

    .line 238
    :cond_0
    :try_start_0
    iget-object v5, p0, Landroid/net/LinkSocket;->mService:Landroid/net/IConnectivityManager;

    iget v6, p0, Landroid/net/LinkSocket;->mId:I

    invoke-interface {v5, v6, v4}, Landroid/net/IConnectivityManager;->requestCapabilities(I[I)Landroid/net/LinkCapabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 242
    :goto_1
    return-object v0

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "LinkSocket"

    const-string v6, "LinkSocket was unable to get capabilities from ConnectivityService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Landroid/net/LinkSocket;->mHostname:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 151
    const-string v0, "LinkSocket"

    const-string v1, "LinkProperties() EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/LinkSocket;->mProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNeededCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 183
    const-string v0, "LinkSocket"

    const-string v1, "getNeeds() EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/LinkSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 522
    invoke-super {p0}, Ljava/net/Socket;->getPort()I

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
    .line 260
    const-string v0, "LinkSocket"

    const-string v1, "getTrackedCapabilities() EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public requestNewLink(Landroid/net/LinkSocket$LinkRequestReason;)V
    .locals 1
    .parameter "linkRequestReason"

    .prologue
    .line 731
    const-string/jumbo v0, "requestNewLink(linkRequestReason) EX"

    invoke-static {v0}, Landroid/net/LinkSocket;->log(Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public setNeededCapabilities(Landroid/net/LinkCapabilities;)Z
    .locals 3
    .parameter "needs"

    .prologue
    .line 164
    const-string v0, "LinkSocket"

    const-string/jumbo v1, "setNeeds() EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Landroid/net/LinkSocket;->mProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    .line 169
    :cond_0
    iput-object p1, p0, Landroid/net/LinkSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    .line 170
    iget-object v0, p0, Landroid/net/LinkSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    const/16 v1, 0x15

    const-string/jumbo v2, "tcp"

    invoke-virtual {v0, v1, v2}, Landroid/net/LinkCapabilities;->put(ILjava/lang/String;)V

    .line 171
    iget-object v0, p0, Landroid/net/LinkSocket;->mNotifier:Landroid/net/LinkSocketNotifier;

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Landroid/net/LinkSocket;->mNeededCapabilities:Landroid/net/LinkCapabilities;

    const/16 v1, 0x12

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/LinkCapabilities;->put(ILjava/lang/String;)V

    .line 176
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
    .line 252
    .local p1, capabilities:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const-string v0, "LinkSocket"

    const-string/jumbo v1, "setTrackedCapabilities(capabilities) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 527
    invoke-virtual {p0}, Landroid/net/LinkSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    iget v0, p0, Landroid/net/LinkSocket;->mId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 529
    const-string v0, "LinkSocket id:none unconnected"

    .line 534
    :goto_0
    return-object v0

    .line 531
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkSocket id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/LinkSocket;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " unconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 534
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkSocket id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/LinkSocket;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/net/Socket;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " local_port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
