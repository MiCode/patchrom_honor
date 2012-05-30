.class abstract Lcom/android/server/FmcStateMachine$FmcState;
.super Lcom/android/internal/util/State;
.source "FmcStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FmcStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "FmcState"
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/FmcStateMachine;

.field protected timeout:I


# direct methods
.method protected constructor <init>(Lcom/android/server/FmcStateMachine;)V
    .locals 2
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/server/FmcStateMachine$FmcState;->this$0:Lcom/android/server/FmcStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 328
    const-string v0, "FmcState"

    iput-object v0, p0, Lcom/android/server/FmcStateMachine$FmcState;->TAG:Ljava/lang/String;

    .line 330
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/server/FmcStateMachine$FmcState;->timeout:I

    .line 333
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method


# virtual methods
.method protected final handleActiveRouting([B)V
    .locals 15
    .parameter "hostRoutingIpAddr"

    .prologue
    .line 453
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleActiveRouting hostRoutingIpAddr="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    :try_start_1
    sget-object v12, Lcom/android/server/FmcStateMachine;->mConnSvc:Lcom/android/server/ConnectivityService;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v7

    .line 461
    .local v7, lp:Landroid/net/LinkProperties;
    if-nez v7, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "handleActiveRouting LinkProperties is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 501
    .end local v7           #lp:Landroid/net/LinkProperties;
    :goto_1
    return-void

    .line 454
    :catch_0
    move-exception v2

    .line 455
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleActiveRouting Exception="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v7       #lp:Landroid/net/LinkProperties;
    :cond_0
    :try_start_2
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 466
    .local v5, iface:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/RouteInfo;

    invoke-virtual {v12}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    .line 467
    .local v3, gateway:Ljava/net/InetAddress;
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    .line 468
    .local v6, ipAddr:Ljava/net/InetAddress;
    invoke-static {v6, v3}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v10

    .line 471
    .local v10, rInfo:Landroid/net/RouteInfo;
    const-string v12, "network_management"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 472
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v8

    .line 473
    .local v8, nms:Landroid/os/INetworkManagementService;
    if-nez v8, :cond_1

    .line 474
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "handleActiveRouting INetworkManagementService is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 498
    .end local v0           #b:Landroid/os/IBinder;
    .end local v3           #gateway:Ljava/net/InetAddress;
    .end local v5           #iface:Ljava/lang/String;
    .end local v6           #ipAddr:Ljava/net/InetAddress;
    .end local v7           #lp:Landroid/net/LinkProperties;
    .end local v8           #nms:Landroid/os/INetworkManagementService;
    .end local v10           #rInfo:Landroid/net/RouteInfo;
    :catch_1
    move-exception v2

    .line 499
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleActiveRouting Exception="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 478
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v3       #gateway:Ljava/net/InetAddress;
    .restart local v5       #iface:Ljava/lang/String;
    .restart local v6       #ipAddr:Ljava/net/InetAddress;
    .restart local v7       #lp:Landroid/net/LinkProperties;
    .restart local v8       #nms:Landroid/os/INetworkManagementService;
    .restart local v10       #rInfo:Landroid/net/RouteInfo;
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleActiveRouting addRoute iface="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " gateway="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-interface {v8, v5, v10}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 482
    sget-object v12, Lcom/android/server/FmcStateMachine;->mConnSvc:Lcom/android/server/ConnectivityService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v7

    .line 483
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 484
    const/4 v1, 0x0

    .line 485
    .local v1, defGateway:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v11

    .line 486
    .local v11, routes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/RouteInfo;

    .line 487
    .local v9, r:Landroid/net/RouteInfo;
    invoke-virtual {v9}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 488
    invoke-virtual {v9}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 491
    .end local v9           #r:Landroid/net/RouteInfo;
    :cond_3
    if-nez v1, :cond_4

    .line 492
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "handleActiveRouting defGateway is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 496
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleActiveRouting replaceV4DefaultRoute iface="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " gateway="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-interface {v8, v5, v1}, Landroid/os/INetworkManagementService;->replaceV4DefaultRoute(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method protected final handleCleanUpRouting([B)V
    .locals 10
    .parameter "hostRoutingIpAddr"

    .prologue
    .line 544
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCleanUpRouting hostRoutingIpAddr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    if-nez p1, :cond_0

    .line 584
    :goto_1
    return-void

    .line 545
    :catch_0
    move-exception v1

    .line 546
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCleanUpRouting Exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 556
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    sget-object v7, Lcom/android/server/FmcStateMachine;->mConnSvc:Lcom/android/server/ConnectivityService;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v4

    .line 557
    .local v4, lp:Landroid/net/LinkProperties;
    if-nez v4, :cond_1

    .line 558
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "handleCleanUpRouting LinkProperties is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 581
    .end local v4           #lp:Landroid/net/LinkProperties;
    :catch_1
    move-exception v1

    .line 582
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "FmcState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCleanUpRouting Exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 561
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #lp:Landroid/net/LinkProperties;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 562
    .local v3, iface:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    invoke-virtual {v7}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    .line 563
    .local v2, gateway:Ljava/net/InetAddress;
    new-instance v6, Landroid/net/RouteInfo;

    new-instance v7, Landroid/net/LinkAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v8

    const/16 v9, 0x20

    invoke-direct {v7, v8, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v6, v7, v2}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 566
    .local v6, rInfo:Landroid/net/RouteInfo;
    const-string v7, "network_management"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 567
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    .line 568
    .local v5, nms:Landroid/os/INetworkManagementService;
    if-nez v5, :cond_2

    .line 569
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "handleCleanUpRouting INetworkManagementService is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 573
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCleanUpRouting removeRoute iface="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " gateway="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-interface {v5, v3, v6}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 579
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCleanUpRouting addRoute iface="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " gateway="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    sget-object v7, Lcom/android/server/FmcStateMachine;->wlanDefault:Landroid/net/RouteInfo;

    invoke-interface {v5, v3, v7}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    goto/16 :goto_1

    .line 575
    :catch_2
    move-exception v1

    .line 576
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "FmcState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCleanUpRouting Exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2
.end method

.method protected final handleRegisteredRouting()V
    .locals 11

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "handleRegisteredRouting"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :try_start_0
    sget-object v8, Lcom/android/server/FmcStateMachine;->mConnSvc:Lcom/android/server/ConnectivityService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v4

    .line 509
    .local v4, lp:Landroid/net/LinkProperties;
    if-nez v4, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "handleRegisteredRouting LinkProperties is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v4           #lp:Landroid/net/LinkProperties;
    :goto_0
    return-void

    .line 513
    .restart local v4       #lp:Landroid/net/LinkProperties;
    :cond_0
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 514
    .local v3, iface:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v7

    .line 515
    .local v7, routes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 516
    .local v6, r:Landroid/net/RouteInfo;
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loop handleRegisteredRouting rInfo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v6}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 519
    sput-object v6, Lcom/android/server/FmcStateMachine;->wlanDefault:Landroid/net/RouteInfo;

    .line 523
    .end local v6           #r:Landroid/net/RouteInfo;
    :cond_2
    sget-object v8, Lcom/android/server/FmcStateMachine;->wlanDefault:Landroid/net/RouteInfo;

    if-nez v8, :cond_3

    .line 524
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "handleActiveRouting wlanDefault is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 537
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #iface:Ljava/lang/String;
    .end local v4           #lp:Landroid/net/LinkProperties;
    .end local v7           #routes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    :catch_0
    move-exception v1

    .line 538
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "FmcState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleRegisteredRouting Exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 528
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #iface:Ljava/lang/String;
    .restart local v4       #lp:Landroid/net/LinkProperties;
    .restart local v7       #routes:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    :cond_3
    :try_start_1
    const-string v8, "network_management"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 529
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    .line 530
    .local v5, nms:Landroid/os/INetworkManagementService;
    if-nez v5, :cond_4

    .line 531
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "handleRegisteredRouting INetworkManagementService is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleRegisteredRouting removeRoute iface="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rInfo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/FmcStateMachine;->wlanDefault:Landroid/net/RouteInfo;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    sget-object v8, Lcom/android/server/FmcStateMachine;->wlanDefault:Landroid/net/RouteInfo;

    invoke-interface {v5, v3, v8}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected final sendDisableData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 422
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendDisableData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0, v2}, Lcom/android/server/FmcStateMachine$FmcState;->setDataReadiness(Z)V

    .line 424
    sget-object v0, Lcom/android/server/FmcStateMachine;->mConnSvc:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0, v2}, Lcom/android/server/ConnectivityService;->bringDownRat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendDisableData bringDownRat true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcState;->this$0:Lcom/android/server/FmcStateMachine;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/FmcStateMachine;->sendMessage(I)V

    .line 431
    :goto_0
    return-void

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendDisableData bringDownRat false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final sendDisableFmc()V
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendDisableFmc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcState;->sendFmc(I)V

    .line 390
    const-string v0, "FmcState"

    const-string v1, "sendDisableFmc (exit)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method

.method protected final sendEnableData()V
    .locals 2

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendEnableData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcState;->setDataReadiness(Z)V

    .line 412
    sget-object v0, Lcom/android/server/FmcStateMachine;->mConnSvc:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->bringUpRat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendEnableData bringUpRat true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendEnableData bringUpRat false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcState;->this$0:Lcom/android/server/FmcStateMachine;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/FmcStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method protected final sendEnableFmc()V
    .locals 2

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendEnableFmc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcState;->sendFmc(I)V

    .line 382
    const-string v0, "FmcState"

    const-string v1, "sendEnableFmc (exit)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void
.end method

.method protected final sendFmc(I)V
    .locals 4
    .parameter "command"

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendFmc"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget-object v1, Lcom/android/server/FmcStateMachine;->fmcComSendThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendFmc fmcComSendThread not active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :goto_0
    return-void

    .line 401
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/FmcStateMachine;->sendQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_1
    const-string v1, "FmcState"

    const-string v2, "sendFmc (exit)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFmc IllegalStateException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected final setDataReadiness(Z)V
    .locals 5
    .parameter "bypass"

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setDataReadiness"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 439
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz p1, :cond_0

    .line 442
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->setDataReadinessChecks(ZZZ)V

    .line 449
    :goto_0
    return-void

    .line 444
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->setDataReadinessChecks(ZZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "remoteException while calling setDataReadinessChecks"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setStatus(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStatus status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {p1}, Lcom/android/server/FmcStateMachine;->access$302(I)I

    .line 366
    sget-object v1, Lcom/android/server/FmcStateMachine;->mListener:Landroid/net/IFmcEventListener;

    if-eqz v1, :cond_0

    .line 368
    :try_start_0
    sget-object v1, Lcom/android/server/FmcStateMachine;->mListener:Landroid/net/IFmcEventListener;

    invoke-interface {v1, p1}, Landroid/net/IFmcEventListener;->onFmcStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStatus RemoteException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setStatus mListener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final startStateTimer(Ljava/lang/String;)V
    .locals 6
    .parameter "prop"

    .prologue
    const/16 v5, 0x4e20

    .line 337
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startStateTimer prop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, sTimeout:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 342
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/FmcStateMachine$FmcState;->timeout:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startStateTimer timeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/FmcStateMachine$FmcState;->timeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget-object v2, Lcom/android/server/FmcStateMachine;->fmcTimer:Lcom/android/server/FmcTimer;

    new-instance v3, Lcom/android/server/FmcStateMachine$FmcTimerCallback;

    iget-object v4, p0, Lcom/android/server/FmcStateMachine$FmcState;->this$0:Lcom/android/server/FmcStateMachine;

    invoke-direct {v3, v4}, Lcom/android/server/FmcStateMachine$FmcTimerCallback;-><init>(Lcom/android/server/FmcStateMachine;)V

    iget v4, p0, Lcom/android/server/FmcStateMachine$FmcState;->timeout:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/FmcTimer;->startTimer(Ljava/util/TimerTask;I)Z

    .line 353
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "FmcState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startStateTimer NumberFormatException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iput v5, p0, Lcom/android/server/FmcStateMachine$FmcState;->timeout:I

    goto :goto_0

    .line 348
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "startStateTimer default timeout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iput v5, p0, Lcom/android/server/FmcStateMachine$FmcState;->timeout:I

    goto :goto_0
.end method

.method protected final transitionToState(Lcom/android/internal/util/IState;)V
    .locals 3
    .parameter "destState"

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcState;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transitionToState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget-object v0, Lcom/android/server/FmcStateMachine;->fmcTimer:Lcom/android/server/FmcTimer;

    invoke-virtual {v0}, Lcom/android/server/FmcTimer;->clearTimer()Z

    .line 359
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcState;->this$0:Lcom/android/server/FmcStateMachine;

    #calls: Lcom/android/server/FmcStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, p1}, Lcom/android/server/FmcStateMachine;->access$200(Lcom/android/server/FmcStateMachine;Lcom/android/internal/util/IState;)V

    .line 360
    return-void
.end method
