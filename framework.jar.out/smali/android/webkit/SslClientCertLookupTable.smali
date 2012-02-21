.class final Landroid/webkit/SslClientCertLookupTable;
.super Ljava/lang/Object;
.source "SslClientCertLookupTable.java"


# static fields
.field private static sTable:Landroid/webkit/SslClientCertLookupTable;


# instance fields
.field private final certificateChains:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[[B>;"
        }
    .end annotation
.end field

.field private final denied:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final privateKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/SslClientCertLookupTable;->privateKeys:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/SslClientCertLookupTable;->certificateChains:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/webkit/SslClientCertLookupTable;->denied:Ljava/util/Set;

    .line 44
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/webkit/SslClientCertLookupTable;
    .locals 2

    .prologue
    .line 34
    const-class v1, Landroid/webkit/SslClientCertLookupTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/SslClientCertLookupTable;->sTable:Landroid/webkit/SslClientCertLookupTable;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/webkit/SslClientCertLookupTable;

    invoke-direct {v0}, Landroid/webkit/SslClientCertLookupTable;-><init>()V

    sput-object v0, Landroid/webkit/SslClientCertLookupTable;->sTable:Landroid/webkit/SslClientCertLookupTable;

    .line 37
    :cond_0
    sget-object v0, Landroid/webkit/SslClientCertLookupTable;->sTable:Landroid/webkit/SslClientCertLookupTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Allow(Ljava/lang/String;[B[[B)V
    .locals 1
    .parameter "host_and_port"
    .parameter "privateKey"
    .parameter "chain"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/webkit/SslClientCertLookupTable;->privateKeys:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Landroid/webkit/SslClientCertLookupTable;->certificateChains:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Landroid/webkit/SslClientCertLookupTable;->denied:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public CertificateChain(Ljava/lang/String;)[[B
    .locals 1
    .parameter "host_and_port"

    .prologue
    .line 71
    iget-object v0, p0, Landroid/webkit/SslClientCertLookupTable;->certificateChains:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    return-object v0
.end method

.method public Deny(Ljava/lang/String;)V
    .locals 1
    .parameter "host_and_port"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/webkit/SslClientCertLookupTable;->privateKeys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Landroid/webkit/SslClientCertLookupTable;->certificateChains:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Landroid/webkit/SslClientCertLookupTable;->denied:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public IsAllowed(Ljava/lang/String;)Z
    .locals 1
    .parameter "host_and_port"

    .prologue
    .line 59
    iget-object v0, p0, Landroid/webkit/SslClientCertLookupTable;->privateKeys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public IsDenied(Ljava/lang/String;)Z
    .locals 1
    .parameter "host_and_port"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/webkit/SslClientCertLookupTable;->denied:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public PrivateKey(Ljava/lang/String;)[B
    .locals 1
    .parameter "host_and_port"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/webkit/SslClientCertLookupTable;->privateKeys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
