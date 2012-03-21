.class final Lcom/android/providers/settings/SettingsProvider$SettingsCache;
.super Landroid/util/LruCache;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mCacheFullyMatchesDisk:Z

.field private final mCacheName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 738
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    .line 739
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheName:Ljava/lang/String;

    .line 740
    return-void
.end method

.method public static forTable(Ljava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    .locals 1
    .parameter "tableName"

    .prologue
    .line 784
    const-string v0, "system"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$300()Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    .line 790
    :goto_0
    return-object v0

    .line 787
    :cond_0
    const-string v0, "secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$400()Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    goto :goto_0

    .line 790
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static invalidate(Ljava/lang/String;)V
    .locals 2
    .parameter "tableName"

    .prologue
    .line 824
    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->forTable(Ljava/lang/String;)Lcom/android/providers/settings/SettingsProvider$SettingsCache;

    move-result-object v0

    .line 825
    .local v0, cache:Lcom/android/providers/settings/SettingsProvider$SettingsCache;
    if-nez v0, :cond_0

    .line 832
    :goto_0
    return-void

    .line 828
    :cond_0
    monitor-enter v0

    .line 829
    :try_start_0
    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->evictAll()V

    .line 830
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    .line 831
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isRedundantSetValue(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "cache"
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 840
    if-nez p0, :cond_0

    .line 847
    :goto_0
    return v2

    .line 841
    :cond_0
    monitor-enter p0

    .line 842
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 843
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    monitor-exit p0

    goto :goto_0

    .line 848
    .end local v0           #bundle:Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 844
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, oldValue:Ljava/lang/String;
    if-nez v1, :cond_2

    if-nez p2, :cond_2

    monitor-exit p0

    move v2, v3

    goto :goto_0

    .line 846
    :cond_2
    if-nez v1, :cond_3

    move v4, v3

    :goto_1
    if-nez p2, :cond_4

    :goto_2
    if-eq v4, v3, :cond_5

    monitor-exit p0

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    .line 847
    :cond_5
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static populate(Lcom/android/providers/settings/SettingsProvider$SettingsCache;Landroid/content/ContentValues;)V
    .locals 4
    .parameter "cache"
    .parameter "contentValues"

    .prologue
    .line 797
    if-nez p0, :cond_0

    .line 807
    :goto_0
    return-void

    .line 800
    :cond_0
    const-string v2, "name"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 802
    const-string v2, "SettingsProvider"

    const-string v3, "null name populating settings cache."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 805
    :cond_1
    const-string v2, "value"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 806
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->populate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 732
    check-cast p2, Ljava/lang/String;

    .end local p2
    check-cast p3, Landroid/os/Bundle;

    .end local p3
    check-cast p4, Landroid/os/Bundle;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->entryRemoved(ZLjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .parameter "evicted"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 759
    if-eqz p1, :cond_0

    .line 760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    .line 762
    :cond_0
    return-void
.end method

.method public fullyMatchesDisk()Z
    .locals 1

    .prologue
    .line 746
    monitor-enter p0

    .line 747
    :try_start_0
    iget-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    monitor-exit p0

    return v0

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public populate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 810
    monitor-enter p0

    .line 811
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_1

    .line 812
    :cond_0
    const-string v0, "value"

    invoke-static {v0, p2}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    :goto_0
    monitor-exit p0

    .line 817
    return-void

    .line 814
    :cond_1
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$500()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 816
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putIfAbsent(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 772
    if-nez p2, :cond_3

    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$200()Landroid/os/Bundle;

    move-result-object v0

    .line 773
    .local v0, bundle:Landroid/os/Bundle;
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f4

    if-gt v1, v2, :cond_2

    .line 774
    :cond_0
    monitor-enter p0

    .line 775
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 776
    invoke-virtual {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    :cond_2
    return-object v0

    .line 772
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_3
    const-string v1, "value"

    invoke-static {v1, p2}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 778
    .restart local v0       #bundle:Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setFullyMatchesDisk(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 752
    monitor-enter p0

    .line 753
    :try_start_0
    iput-boolean p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsCache;->mCacheFullyMatchesDisk:Z

    .line 754
    monitor-exit p0

    .line 755
    return-void

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
