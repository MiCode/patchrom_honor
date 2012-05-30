.class public Lcom/android/server/QosManager;
.super Ljava/lang/Object;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/QosManager$PortRange;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FAILURE_GENERAL:I = -0x1

.field private static final FILTER_DELIMETER:Ljava/lang/String; = ","

.field private static final IPV4:Ljava/lang/String; = "IP"

.field private static final IPV6:Ljava/lang/String; = "IPV6"

.field private static final LOG_TAG:Ljava/lang/String; = "QoSManager"

.field private static final QOS_POLICY_FILE_NAME:Ljava/lang/String; = "/system/etc/QoSPolicy.xml"

.field private static final TOS_MASK:Ljava/lang/String; = "255"


# instance fields
.field private mContext:Landroid/content/Context;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mQoSProfileReady:Z

.field private mQosProfile:Lcom/android/server/QosProfile;

.field mQosTrackers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/QoSTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V
    .locals 5
    .parameter "context"
    .parameter "connectivityService"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v3, Lcom/android/server/QosManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/QosManager$1;-><init>(Lcom/android/server/QosManager;)V

    iput-object v3, p0, Lcom/android/server/QosManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    iput-object p1, p0, Lcom/android/server/QosManager;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/server/QosManager;->mService:Lcom/android/server/ConnectivityService;

    .line 130
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    .line 133
    new-instance v3, Lcom/android/server/QosProfile;

    invoke-direct {v3}, Lcom/android/server/QosProfile;-><init>()V

    iput-object v3, p0, Lcom/android/server/QosManager;->mQosProfile:Lcom/android/server/QosProfile;

    .line 134
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/QosManager;->mQoSProfileReady:Z

    .line 135
    const-string v3, "persist.qos.policy.loc"

    const-string v4, "/system/etc/QoSPolicy.xml"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, qosPolicyFilename:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QoS Policy file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 139
    :try_start_0
    iget-object v3, p0, Lcom/android/server/QosManager;->mQosProfile:Lcom/android/server/QosProfile;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/QosProfile;->parse(Ljava/io/InputStream;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/QosManager;->mQoSProfileReady:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_QOS_STATE_IND"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/android/server/QosManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    return-void

    .line 140
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QoS Policy file not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/QosManager;IIIILcom/android/internal/telephony/QosSpec;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/android/server/QosManager;->updateQosStatus(IIIILcom/android/internal/telephony/QosSpec;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/QosManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->logw(Ljava/lang/String;)V

    return-void
.end method

.method private findQoSPipeByDirection(Lcom/android/internal/telephony/QosSpec;I)Lcom/android/internal/telephony/QosSpec$QosPipe;
    .locals 6
    .parameter "qosSpec"
    .parameter "direction"

    .prologue
    .line 895
    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->getQosPipes()Ljava/util/Collection;

    move-result-object v3

    .line 897
    .local v3, qosPipes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/QosSpec$QosPipe;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/QosSpec$QosPipe;

    .line 898
    .local v2, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/QosSpec$QosPipe;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, directionValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 900
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found pipe with direction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 904
    .end local v0           #directionValue:Ljava/lang/String;
    .end local v2           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findQosByQosId(I)Landroid/net/QoSTracker;
    .locals 5
    .parameter "id"

    .prologue
    .line 874
    const/4 v2, 0x0

    .line 875
    .local v2, tracker:Landroid/net/QoSTracker;
    iget-object v4, p0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    monitor-enter v4

    .line 876
    :try_start_0
    iget-object v3, p0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/QoSTracker;

    .line 877
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    .line 878
    invoke-virtual {v1}, Landroid/net/QoSTracker;->getQosId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 879
    move-object v2, v1

    .line 883
    .end local v1           #qt:Landroid/net/QoSTracker;
    :cond_1
    monitor-exit v4

    .line 884
    return-object v2

    .line 883
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private findQosBySocketId(I)Landroid/net/QoSTracker;
    .locals 5
    .parameter "id"

    .prologue
    .line 851
    const/4 v2, 0x0

    .line 852
    .local v2, tracker:Landroid/net/QoSTracker;
    iget-object v4, p0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    monitor-enter v4

    .line 853
    :try_start_0
    iget-object v3, p0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/QoSTracker;

    .line 854
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    .line 855
    invoke-virtual {v1}, Landroid/net/QoSTracker;->getSocketId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 856
    move-object v2, v1

    .line 860
    .end local v1           #qt:Landroid/net/QoSTracker;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    if-nez v2, :cond_2

    .line 862
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No QoSTracker available with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 864
    :cond_2
    return-object v2

    .line 860
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getIPVersion(Ljava/lang/String;)Lcom/android/internal/net/IPVersion;
    .locals 3
    .parameter "remoteIPAddress"

    .prologue
    .line 915
    if-nez p1, :cond_0

    .line 916
    const-string v2, "remoteIPAddress is null, returning IPv4 version"

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 919
    sget-object v2, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    .line 933
    :goto_0
    return-object v2

    .line 925
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 926
    .local v0, anAddress:Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1

    .line 927
    sget-object v2, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    goto :goto_0

    .line 929
    :cond_1
    sget-object v2, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 931
    .end local v0           #anAddress:Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 932
    .local v1, e1:Ljava/net/UnknownHostException;
    const-string v2, "IPAddress is invalid"

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 933
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getMaxFilterCount(Landroid/net/LinkCapabilities;)I
    .locals 7
    .parameter "cap"

    .prologue
    const/16 v6, 0x19

    const/16 v5, 0x18

    const/16 v3, 0x17

    const/16 v4, 0x16

    .line 996
    const/4 v0, -0x1

    .line 997
    .local v0, numFilters:I
    const/4 v1, -0x1

    .line 999
    .local v1, numStrings:I
    invoke-virtual {p1, v3}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1000
    invoke-virtual {p1, v3}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    .line 1003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of filters in RW_REMOTE_DEST_PORTS is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 1005
    if-le v1, v0, :cond_0

    .line 1006
    move v0, v1

    .line 1010
    :cond_0
    invoke-virtual {p1, v5}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1011
    invoke-virtual {p1, v5}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    .line 1014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of filters in RW_REMOTE_SRC_PORTS is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 1016
    if-le v1, v0, :cond_1

    .line 1017
    move v0, v1

    .line 1021
    :cond_1
    invoke-virtual {p1, v4}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1022
    invoke-virtual {p1, v4}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    .line 1025
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of filters in RW_DEST_IP_ADDRESSES is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 1027
    if-le v1, v0, :cond_2

    .line 1028
    move v0, v1

    .line 1032
    :cond_2
    invoke-virtual {p1, v6}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1033
    invoke-virtual {p1, v6}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    .line 1036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of filters in RW_FILTERSPEC_IP_TOS is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 1038
    if-le v1, v0, :cond_3

    .line 1039
    move v0, v1

    .line 1043
    :cond_3
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1078
    const-string v0, "QoSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaSSM] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1082
    const-string v0, "QoSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaSSM] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1086
    const-string v0, "QoSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaSSM] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    return-void
.end method

.method private static networkTypeToApnType(I)Ljava/lang/String;
    .locals 3
    .parameter "netType"

    .prologue
    .line 1054
    packed-switch p0, :pswitch_data_0

    .line 1072
    :pswitch_0
    const-string v0, "QoSManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error mapping networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to apnType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1056
    :pswitch_1
    const-string v0, "default"

    goto :goto_0

    .line 1058
    :pswitch_2
    const-string v0, "mms"

    goto :goto_0

    .line 1060
    :pswitch_3
    const-string v0, "supl"

    goto :goto_0

    .line 1062
    :pswitch_4
    const-string v0, "dun"

    goto :goto_0

    .line 1064
    :pswitch_5
    const-string v0, "hipri"

    goto :goto_0

    .line 1066
    :pswitch_6
    const-string v0, "fota"

    goto :goto_0

    .line 1068
    :pswitch_7
    const-string v0, "ims"

    goto :goto_0

    .line 1070
    :pswitch_8
    const-string v0, "cbs"

    goto :goto_0

    .line 1054
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private parsePortRange(Landroid/net/LinkCapabilities;IILcom/android/server/QosManager$PortRange;)Z
    .locals 8
    .parameter "cap"
    .parameter "key"
    .parameter "filterIndex"
    .parameter "ports"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 952
    const/4 v3, 0x0

    .line 953
    .local v3, values:[Ljava/lang/String;
    iput v4, p4, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    .line 954
    iput v4, p4, Lcom/android/server/QosManager$PortRange;->portRangeVal:I

    .line 958
    invoke-virtual {p1, p2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    if-le v6, p3, :cond_2

    .line 960
    aget-object v2, v3, p3

    .line 964
    :try_start_0
    const-string v6, "-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 965
    const-string v6, "-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 966
    .local v1, tok:[Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p4, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p4, Lcom/android/server/QosManager$PortRange;->portRangeVal:I

    if-le v6, v7, :cond_1

    .line 968
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startQos failed due to invalid port format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 985
    .end local v1           #tok:[Ljava/lang/String;
    :goto_0
    return v4

    .line 971
    .restart local v1       #tok:[Ljava/lang/String;
    :cond_1
    iget v6, p4, Lcom/android/server/QosManager$PortRange;->portRangeVal:I

    iget v7, p4, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    sub-int/2addr v6, v7

    iput v6, p4, Lcom/android/server/QosManager$PortRange;->portRangeVal:I

    .end local v1           #tok:[Ljava/lang/String;
    :cond_2
    :goto_1
    move v4, v5

    .line 985
    goto :goto_0

    .line 972
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 973
    const/4 v6, 0x0

    iput v6, p4, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    .line 974
    const/4 v6, 0x0

    iput v6, p4, Lcom/android/server/QosManager$PortRange;->portRangeVal:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startQos failed due to invalid port, exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 976
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p4, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    .line 977
    const/4 v6, 0x0

    iput v6, p4, Lcom/android/server/QosManager$PortRange;->portRangeVal:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private prepareQoSFilter(Landroid/net/LinkCapabilities;Lcom/android/internal/telephony/QosSpec$QosPipe;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Z
    .locals 14
    .parameter "cap"
    .parameter "txPipe"
    .parameter "rxPipe"
    .parameter "localPort"
    .parameter "localAddress"

    .prologue
    .line 694
    const/4 v10, 0x0

    .line 695
    .local v10, value:Ljava/lang/String;
    const/4 v11, 0x0

    .line 698
    .local v11, values:[Ljava/lang/String;
    new-instance v3, Lcom/android/server/QosManager$PortRange;

    const/4 v12, 0x0

    invoke-direct {v3, p0, v12}, Lcom/android/server/QosManager$PortRange;-><init>(Lcom/android/server/QosManager;Lcom/android/server/QosManager$1;)V

    .line 699
    .local v3, dstPorts:Lcom/android/server/QosManager$PortRange;
    new-instance v9, Lcom/android/server/QosManager$PortRange;

    const/4 v12, 0x0

    invoke-direct {v9, p0, v12}, Lcom/android/server/QosManager$PortRange;-><init>(Lcom/android/server/QosManager;Lcom/android/server/QosManager$1;)V

    .line 701
    .local v9, srcPorts:Lcom/android/server/QosManager$PortRange;
    const/4 v4, 0x0

    .line 703
    .local v4, filterIndex:I
    const-string v12, "Preparing QoS filter"

    invoke-direct {p0, v12}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 704
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->getMaxFilterCount(Landroid/net/LinkCapabilities;)I

    move-result v6

    .line 707
    .local v6, numFilters:I
    const/4 v12, -0x1

    if-ne v6, v12, :cond_0

    .line 708
    const-string v12, "User didn\'t specify any QoS filter keys"

    invoke-direct {p0, v12}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 709
    const/4 v12, 0x0

    .line 841
    :goto_0
    return v12

    .line 713
    :cond_0
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/QosManager;->getIPVersion(Ljava/lang/String;)Lcom/android/internal/net/IPVersion;

    move-result-object v5

    .line 714
    .local v5, ipVersion:Lcom/android/internal/net/IPVersion;
    if-nez v5, :cond_1

    .line 715
    const/4 v12, 0x0

    goto :goto_0

    .line 720
    :cond_1
    const/16 v12, 0x15

    invoke-virtual {p1, v12}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    .line 721
    const-string v12, "prepareQosSpec failed - transport protocol is not set"

    invoke-direct {p0, v12}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 722
    const/4 v12, 0x0

    goto :goto_0

    .line 724
    :cond_2
    const-string v12, "udp"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 725
    const/16 v8, 0x13

    .line 726
    .local v8, srcPortStartKey:I
    const/16 v7, 0x14

    .line 727
    .local v7, srcPortRangeKey:I
    const/16 v2, 0x15

    .line 728
    .local v2, dstPortStartKey:I
    const/16 v1, 0x16

    .line 740
    .local v1, dstPortRangeKey:I
    :goto_1
    if-eqz p2, :cond_b

    .line 742
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_b

    .line 744
    const/16 v12, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 747
    sget-object v12, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne v5, v12, :cond_5

    .line 748
    const/16 v12, 0x9

    const-string v13, "IP"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 754
    :goto_3
    const/16 v12, 0xa

    const-string v13, "0"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 757
    const/16 v12, 0x17

    invoke-direct {p0, p1, v12, v4, v3}, Lcom/android/server/QosManager;->parsePortRange(Landroid/net/LinkCapabilities;IILcom/android/server/QosManager$PortRange;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 759
    const/4 v12, 0x0

    goto :goto_0

    .line 729
    .end local v1           #dstPortRangeKey:I
    .end local v2           #dstPortStartKey:I
    .end local v7           #srcPortRangeKey:I
    .end local v8           #srcPortStartKey:I
    :cond_3
    const-string v12, "tcp"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 730
    const/16 v8, 0xf

    .line 731
    .restart local v8       #srcPortStartKey:I
    const/16 v7, 0x10

    .line 732
    .restart local v7       #srcPortRangeKey:I
    const/16 v2, 0x11

    .line 733
    .restart local v2       #dstPortStartKey:I
    const/16 v1, 0x12

    .restart local v1       #dstPortRangeKey:I
    goto :goto_1

    .line 735
    .end local v1           #dstPortRangeKey:I
    .end local v2           #dstPortStartKey:I
    .end local v7           #srcPortRangeKey:I
    .end local v8           #srcPortStartKey:I
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "prepareQosSpec failed - unrecognized transport: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/QosManager;->logw(Ljava/lang/String;)V

    .line 736
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 750
    .restart local v1       #dstPortRangeKey:I
    .restart local v2       #dstPortStartKey:I
    .restart local v7       #srcPortRangeKey:I
    .restart local v8       #srcPortStartKey:I
    :cond_5
    const/16 v12, 0x9

    const-string v13, "IPV6"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    goto :goto_3

    .line 765
    :cond_6
    iget v12, v3, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    if-eqz v12, :cond_7

    .line 766
    iget v12, v3, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v12}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 767
    iget v12, v3, Lcom/android/server/QosManager$PortRange;->portRangeVal:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 771
    :cond_7
    const/16 v12, 0x16

    invoke-virtual {p1, v12}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    if-le v12, v4, :cond_8

    .line 773
    aget-object v10, v11, v4

    .line 774
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    .line 775
    sget-object v12, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne v5, v12, :cond_a

    .line 776
    const/16 v12, 0xc

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v10}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 784
    :cond_8
    :goto_4
    const/16 v12, 0x19

    invoke-virtual {p1, v12}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    if-le v12, v4, :cond_9

    .line 786
    aget-object v10, v11, v4

    .line 787
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    .line 788
    const/16 v12, 0xd

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v10}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 789
    const/16 v12, 0xe

    const-string v13, "255"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 742
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 778
    :cond_a
    const/16 v12, 0x19

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v10}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    goto :goto_4

    .line 796
    :cond_b
    if-eqz p3, :cond_11

    .line 798
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_11

    .line 800
    const/16 v12, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 803
    sget-object v12, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne v5, v12, :cond_c

    .line 804
    const/16 v12, 0x9

    const-string v13, "IP"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 810
    :goto_6
    const/16 v12, 0xa

    const-string v13, "1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 813
    const/16 v12, 0x18

    invoke-direct {p0, p1, v12, v4, v9}, Lcom/android/server/QosManager;->parsePortRange(Landroid/net/LinkCapabilities;IILcom/android/server/QosManager$PortRange;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 815
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 806
    :cond_c
    const/16 v12, 0x9

    const-string v13, "IPV6"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    goto :goto_6

    .line 821
    :cond_d
    iget v12, v9, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    if-eqz v12, :cond_e

    .line 822
    iget v12, v9, Lcom/android/server/QosManager$PortRange;->portStartVal:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v12}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 823
    iget v12, v9, Lcom/android/server/QosManager$PortRange;->portRangeVal:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v12}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 827
    :cond_e
    const/16 v12, 0x16

    invoke-virtual {p1, v12}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f

    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    if-le v12, v4, :cond_f

    .line 829
    aget-object v10, v11, v4

    .line 830
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_f

    .line 831
    sget-object v12, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne v5, v12, :cond_10

    .line 832
    const/16 v12, 0xb

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v10}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 798
    :cond_f
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 834
    :cond_10
    const/16 v12, 0x18

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v10}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    goto :goto_7

    .line 841
    :cond_11
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method private prepareQoSSpec(ILjava/lang/String;Landroid/net/LinkCapabilities;)Lcom/android/internal/telephony/QosSpec;
    .locals 10
    .parameter "localPort"
    .parameter "localAddress"
    .parameter "myCap"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 535
    const-string v0, "Preparing qosspec"

    invoke-direct {p0, v0}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 537
    new-instance v6, Lcom/android/internal/telephony/QosSpec;

    invoke-direct {v6}, Lcom/android/internal/telephony/QosSpec;-><init>()V

    .line 539
    .local v6, mQosSpec:Lcom/android/internal/telephony/QosSpec;
    invoke-virtual {v6}, Lcom/android/internal/telephony/QosSpec;->createPipe()Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v2

    .line 540
    .local v2, txPipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    invoke-virtual {v6}, Lcom/android/internal/telephony/QosSpec;->createPipe()Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v3

    .line 541
    .local v3, rxPipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    const-string v0, "0"

    invoke-virtual {v2, v4, v0}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 542
    const-string v0, "0"

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 543
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 545
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 547
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 549
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 584
    if-nez p3, :cond_0

    .line 585
    const-string v0, "prepareQosSpec failed because needs is null"

    invoke-direct {p0, v0}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 586
    const/4 v6, 0x0

    .line 621
    .end local v6           #mQosSpec:Lcom/android/internal/telephony/QosSpec;
    :goto_0
    return-object v6

    .line 589
    .restart local v6       #mQosSpec:Lcom/android/internal/telephony/QosSpec;
    :cond_0
    const/4 v7, 0x0

    .line 591
    .local v7, value:Ljava/lang/String;
    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 592
    invoke-virtual {v2, v9, v7}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 595
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p3, v0}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 596
    invoke-virtual {v2, v8, v7}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 599
    :cond_2
    const/16 v0, 0xc

    invoke-virtual {p3, v0}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 600
    const/4 v0, 0x5

    invoke-virtual {v2, v0, v7}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 603
    :cond_3
    invoke-virtual {p3, v5}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 604
    invoke-virtual {v3, v9, v7}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 607
    :cond_4
    invoke-virtual {p3, v8}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 608
    invoke-virtual {v3, v8, v7}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 611
    :cond_5
    const/16 v0, 0xa

    invoke-virtual {p3, v0}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 612
    const/4 v0, 0x5

    invoke-virtual {v3, v0, v7}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    :cond_6
    move-object v0, p0

    move-object v1, p3

    move v4, p1

    move-object v5, p2

    .line 616
    invoke-direct/range {v0 .. v5}, Lcom/android/server/QosManager;->prepareQoSFilter(Landroid/net/LinkCapabilities;Lcom/android/internal/telephony/QosSpec$QosPipe;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 617
    const/4 v6, 0x0

    goto :goto_0

    .line 620
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepared qos spec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareQoSSpecFromQoSPolicy(ILjava/lang/String;Landroid/net/LinkCapabilities;)Lcom/android/internal/telephony/QosSpec;
    .locals 11
    .parameter "localPort"
    .parameter "localAddress"
    .parameter "cap"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 634
    const/4 v8, 0x0

    .line 635
    .local v8, role:Ljava/lang/String;
    const/4 v6, 0x0

    .line 636
    .local v6, mQosSpec:Lcom/android/internal/telephony/QosSpec;
    const/4 v2, 0x0

    .line 637
    .local v2, txPipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    const/4 v3, 0x0

    .line 640
    .local v3, rxPipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    iget-boolean v0, p0, Lcom/android/server/QosManager;->mQoSProfileReady:Z

    if-nez v0, :cond_0

    .line 641
    const-string v0, "Error while parsing QoS policy file"

    invoke-direct {p0, v0}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    move-object v0, v10

    .line 678
    :goto_0
    return-object v0

    .line 646
    :cond_0
    invoke-virtual {p3, v4}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v8

    .line 647
    iget-object v0, p0, Lcom/android/server/QosManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 649
    .local v9, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v9, :cond_1

    .line 650
    const-string v0, "TelephonyManager is null"

    invoke-direct {p0, v0}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    move-object v0, v10

    .line 651
    goto :goto_0

    .line 653
    :cond_1
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 654
    .local v7, ratId:I
    iget-object v0, p0, Lcom/android/server/QosManager;->mQosProfile:Lcom/android/server/QosProfile;

    invoke-virtual {v0, v8, v7}, Lcom/android/server/QosProfile;->getQoSSpec(Ljava/lang/String;I)Lcom/android/internal/telephony/QosSpec;

    move-result-object v6

    .line 657
    if-nez v6, :cond_2

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No QoS spec matching role Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rat Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " found in QoSPolicy file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    move-object v0, v10

    .line 660
    goto :goto_0

    .line 669
    :cond_2
    invoke-direct {p0, v6, v4}, Lcom/android/server/QosManager;->findQoSPipeByDirection(Lcom/android/internal/telephony/QosSpec;I)Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v2

    .line 670
    const/4 v0, 0x1

    invoke-direct {p0, v6, v0}, Lcom/android/server/QosManager;->findQoSPipeByDirection(Lcom/android/internal/telephony/QosSpec;I)Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v3

    move-object v0, p0

    move-object v1, p3

    move v4, p1

    move-object v5, p2

    .line 673
    invoke-direct/range {v0 .. v5}, Lcom/android/server/QosManager;->prepareQoSFilter(Landroid/net/LinkCapabilities;Lcom/android/internal/telephony/QosSpec$QosPipe;Lcom/android/internal/telephony/QosSpec$QosPipe;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v10

    .line 674
    goto :goto_0

    .line 677
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepared qos spec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    move-object v0, v6

    .line 678
    goto :goto_0
.end method

.method private updateQosStatus(IIIILcom/android/internal/telephony/QosSpec;)V
    .locals 3
    .parameter "txId"
    .parameter "qosId"
    .parameter "qosIndState"
    .parameter "qosState"
    .parameter "myQos"

    .prologue
    .line 502
    if-nez p3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v0

    .line 504
    .local v0, qt:Landroid/net/QoSTracker;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateQosStatus got indication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " qosState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " txId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " qosId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 508
    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/net/QoSTracker;->handleQosEvent(IIILcom/android/internal/telephony/QosSpec;)V

    .line 515
    :goto_1
    return-void

    .line 502
    .end local v0           #qt:Landroid/net/QoSTracker;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/QosManager;->findQosByQosId(I)Landroid/net/QoSTracker;

    move-result-object v0

    goto :goto_0

    .line 512
    .restart local v0       #qt:Landroid/net/QoSTracker;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateQosStatus did not find a handle to sid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " qid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getCurrentFwdLatency(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v1

    .line 466
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/QoSTracker;->getQosCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v0

    .local v0, cap:Landroid/net/LinkCapabilities;
    if-eqz v0, :cond_0

    .line 467
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 469
    .end local v0           #cap:Landroid/net/LinkCapabilities;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCurrentRevLatency(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v1

    .line 482
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/QoSTracker;->getQosCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v0

    .local v0, cap:Landroid/net/LinkCapabilities;
    if-eqz v0, :cond_0

    .line 483
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 485
    .end local v0           #cap:Landroid/net/LinkCapabilities;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMaxAvailableForwardBandwidth(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v1

    .line 416
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/QoSTracker;->getQosCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v0

    .local v0, cap:Landroid/net/LinkCapabilities;
    if-eqz v0, :cond_0

    .line 417
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 419
    .end local v0           #cap:Landroid/net/LinkCapabilities;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMaxAvailableReverseBandwidth(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v1

    .line 450
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/QoSTracker;->getQosCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v0

    .local v0, cap:Landroid/net/LinkCapabilities;
    if-eqz v0, :cond_0

    .line 451
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 453
    .end local v0           #cap:Landroid/net/LinkCapabilities;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMinAvailableForwardBandwidth(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v1

    .line 399
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/QoSTracker;->getQosCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v0

    .local v0, cap:Landroid/net/LinkCapabilities;
    if-eqz v0, :cond_0

    .line 400
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 402
    .end local v0           #cap:Landroid/net/LinkCapabilities;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMinAvailableReverseBandwidth(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v1

    .line 433
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/QoSTracker;->getQosCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v0

    .local v0, cap:Landroid/net/LinkCapabilities;
    if-eqz v0, :cond_0

    .line 434
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 436
    .end local v0           #cap:Landroid/net/LinkCapabilities;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getQosState(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v1

    .line 382
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/QoSTracker;->getQosCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v0

    .local v0, cap:Landroid/net/LinkCapabilities;
    if-eqz v0, :cond_0

    .line 383
    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v2

    .line 385
    .end local v0           #cap:Landroid/net/LinkCapabilities;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public releaseQos(I)Z
    .locals 5
    .parameter "id"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v1

    .line 355
    .local v1, qt:Landroid/net/QoSTracker;
    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v1}, Landroid/net/QoSTracker;->stopQosTransaction()V

    .line 357
    iget-object v3, p0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    monitor-enter v3

    .line 359
    :try_start_0
    iget-object v2, p0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopped tracking qos for id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :try_start_1
    iget-object v2, p0, Lcom/android/server/QosManager;->mService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2, p1}, Lcom/android/server/ConnectivityService;->removeQosRegistration(I)Z

    .line 366
    monitor-exit v3

    .line 370
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while removing qos tracker: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 363
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_1

    .line 366
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 368
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No QoSTracker available for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/QosManager;->logw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestLink(ILandroid/net/LinkCapabilities;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 18
    .parameter "id"
    .parameter "cap"
    .parameter "remoteIPAddress"
    .parameter "binder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static/range {p4 .. p4}, Landroid/net/ILinkSocketMessageHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ILinkSocketMessageHandler;

    move-result-object v3

    .line 167
    .local v3, callback:Landroid/net/ILinkSocketMessageHandler;
    const/4 v8, 0x0

    .line 168
    .local v8, linkAddress:Landroid/net/LinkAddress;
    const/4 v11, 0x0

    .line 169
    .local v11, networkType:Ljava/lang/String;
    sget-object v6, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    .line 170
    .local v6, ipVersion:Lcom/android/internal/net/IPVersion;
    const/4 v13, 0x0

    .line 174
    .local v13, v6DefaultAddr:Landroid/net/LinkAddress;
    new-instance v14, Landroid/net/ExtraLinkCapabilities;

    invoke-direct {v14}, Landroid/net/ExtraLinkCapabilities;-><init>()V

    .line 175
    .local v14, xcap:Landroid/net/ExtraLinkCapabilities;
    const/16 v15, 0x14

    const-string v16, "inactive"

    invoke-virtual/range {v14 .. v16}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkCapabilities;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 177
    .local v10, need:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    goto :goto_0

    .line 181
    .end local v10           #need:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v15

    if-nez v15, :cond_3

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 184
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/QosManager;->mQosTrackers:Ljava/util/Collection;

    new-instance v17, Landroid/net/QoSTracker;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v14}, Landroid/net/QoSTracker;-><init>(ILandroid/net/ILinkSocketMessageHandler;Landroid/net/ExtraLinkCapabilities;)V

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 185
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed to track qos request for socket: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 186
    const/4 v15, -0x1

    invoke-interface {v3, v15}, Landroid/net/ILinkSocketMessageHandler;->onGetLinkFailure(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :try_start_1
    monitor-exit v16

    .line 273
    :goto_1
    return p1

    .line 189
    :catch_0
    move-exception v4

    .line 190
    .local v4, e:Ljava/lang/Exception;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error while tracking qos request from the socket:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 192
    const/4 v15, -0x1

    invoke-interface {v3, v15}, Landroid/net/ILinkSocketMessageHandler;->onGetLinkFailure(I)V

    .line 193
    monitor-exit v16

    goto :goto_1

    .line 195
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    :cond_1
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    :goto_2
    const/16 v15, 0x1a

    invoke-virtual {v14, v15}, Landroid/net/ExtraLinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v11

    .line 203
    if-nez v11, :cond_2

    .line 204
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 205
    const/16 v15, 0x1a

    invoke-virtual {v14, v15, v11}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    .line 209
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/QosManager;->getIPVersion(Ljava/lang/String;)Lcom/android/internal/net/IPVersion;

    move-result-object v6

    .line 210
    if-nez v6, :cond_4

    .line 211
    const/4 v15, -0x1

    invoke-interface {v3, v15}, Landroid/net/ILinkSocketMessageHandler;->onGetLinkFailure(I)V

    goto :goto_1

    .line 197
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Ignoring duplicate request link of qos role for socket: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 216
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/QosManager;->mService:Lcom/android/server/ConnectivityService;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/ConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v12

    .line 220
    .local v12, prop:Landroid/net/LinkProperties;
    if-nez v12, :cond_5

    .line 221
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Link not available for network type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 222
    const/4 v15, -0x1

    invoke-interface {v3, v15}, Landroid/net/ILinkSocketMessageHandler;->onGetLinkFailure(I)V

    goto/16 :goto_1

    .line 228
    :cond_5
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v9

    .line 229
    .local v9, linkAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    const/4 v8, 0x0

    .line 230
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkAddress;

    .line 231
    .local v7, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 233
    .local v2, addr:Ljava/net/InetAddress;
    instance-of v15, v2, Ljava/net/Inet4Address;

    if-eqz v15, :cond_8

    sget-object v15, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    if-ne v6, v15, :cond_8

    .line 234
    move-object v8, v7

    .line 254
    .end local v2           #addr:Ljava/net/InetAddress;
    .end local v7           #linkAddr:Landroid/net/LinkAddress;
    :cond_7
    :goto_4
    if-nez v8, :cond_c

    .line 255
    if-nez v13, :cond_b

    .line 256
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No IP address available for network type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " and IP version: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    .line 258
    const/4 v15, -0x1

    invoke-interface {v3, v15}, Landroid/net/ILinkSocketMessageHandler;->onGetLinkFailure(I)V

    goto/16 :goto_1

    .line 237
    .restart local v2       #addr:Ljava/net/InetAddress;
    .restart local v7       #linkAddr:Landroid/net/LinkAddress;
    :cond_8
    instance-of v15, v2, Ljava/net/Inet6Address;

    if-eqz v15, :cond_6

    sget-object v15, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    if-ne v6, v15, :cond_6

    .line 242
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 243
    :cond_9
    move-object v13, v7

    .line 244
    goto :goto_3

    .line 247
    :cond_a
    move-object v8, v7

    .line 248
    goto :goto_4

    .line 262
    .end local v2           #addr:Ljava/net/InetAddress;
    .end local v7           #linkAddr:Landroid/net/LinkAddress;
    :cond_b
    move-object v8, v13

    .line 267
    :cond_c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IPaddress for network type: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " and IP version: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/QosManager;->logd(Ljava/lang/String;)V

    .line 269
    new-instance v12, Landroid/net/LinkProperties;

    .end local v12           #prop:Landroid/net/LinkProperties;
    invoke-direct {v12}, Landroid/net/LinkProperties;-><init>()V

    .line 270
    .restart local v12       #prop:Landroid/net/LinkProperties;
    invoke-virtual {v12, v8}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 271
    invoke-interface {v3, v12}, Landroid/net/ILinkSocketMessageHandler;->onLinkAvail(Landroid/net/LinkProperties;)V

    goto/16 :goto_1
.end method

.method public requestQoS(IILjava/lang/String;)Z
    .locals 9
    .parameter "id"
    .parameter "port"
    .parameter "localAddress"

    .prologue
    const/4 v6, 0x0

    .line 285
    const/4 v4, 0x0

    .line 286
    .local v4, qt:Landroid/net/QoSTracker;
    const/4 v1, 0x0

    .line 287
    .local v1, cap:Landroid/net/LinkCapabilities;
    const/4 v0, 0x0

    .line 288
    .local v0, apnType:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    .line 289
    .local v2, ipVersion:Lcom/android/internal/net/IPVersion;
    const/4 v3, 0x0

    .line 291
    .local v3, mySpec:Lcom/android/internal/telephony/QosSpec;
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v4

    .line 292
    if-nez v4, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v6

    .line 293
    :cond_1
    invoke-virtual {v4}, Landroid/net/QoSTracker;->getQosCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v1

    .line 294
    if-eqz v1, :cond_0

    .line 297
    const/16 v7, 0x1a

    invoke-virtual {v1, v7}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/QosManager;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {v1, v6}, Landroid/net/LinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, roleString:Ljava/lang/String;
    const-string v7, "qos_custom"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 304
    invoke-direct {p0, p2, p3, v1}, Lcom/android/server/QosManager;->prepareQoSSpec(ILjava/lang/String;Landroid/net/LinkCapabilities;)Lcom/android/internal/telephony/QosSpec;

    move-result-object v3

    .line 309
    :goto_1
    if-nez v3, :cond_3

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to prepare qos spec for socket: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/QosManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_2
    invoke-direct {p0, p2, p3, v1}, Lcom/android/server/QosManager;->prepareQoSSpecFromQoSPolicy(ILjava/lang/String;Landroid/net/LinkCapabilities;)Lcom/android/internal/telephony/QosSpec;

    move-result-object v3

    goto :goto_1

    .line 313
    :cond_3
    invoke-virtual {v4, v3, v0}, Landroid/net/QoSTracker;->startQosTransaction(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)Z

    move-result v6

    goto :goto_0
.end method

.method public resumeQoS(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, qt:Landroid/net/QoSTracker;
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v0

    .line 341
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 343
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/QoSTracker;->resumeQosTransaction()Z

    move-result v1

    goto :goto_0
.end method

.method public suspendQoS(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 325
    .local v0, qt:Landroid/net/QoSTracker;
    invoke-direct {p0, p1}, Lcom/android/server/QosManager;->findQosBySocketId(I)Landroid/net/QoSTracker;

    move-result-object v0

    .line 326
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 328
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/QoSTracker;->suspendQosTransaction()Z

    move-result v1

    goto :goto_0
.end method
