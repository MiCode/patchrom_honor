.class Landroid/provider/SettingsEx$NameValueCache;
.super Ljava/lang/Object;
.source "SettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SettingsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE:[Ljava/lang/String;


# instance fields
.field private final mCallCommand:Ljava/lang/String;

.field private mContentProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesVersion:J

.field private final mVersionSystemProperty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/SettingsEx$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "versionSystemProperty"
    .parameter "uri"
    .parameter "callCommand"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/provider/SettingsEx$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/provider/SettingsEx$NameValueCache;->mValuesVersion:J

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/SettingsEx$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 60
    iput-object p1, p0, Landroid/provider/SettingsEx$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Landroid/provider/SettingsEx$NameValueCache;->mUri:Landroid/net/Uri;

    .line 62
    iput-object p3, p0, Landroid/provider/SettingsEx$NameValueCache;->mCallCommand:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "cr"
    .parameter "name"

    .prologue
    .line 66
    iget-object v1, p0, Landroid/provider/SettingsEx$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 68
    .local v10, newValuesVersion:J
    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v1, p0, Landroid/provider/SettingsEx$NameValueCache;->mValuesVersion:J

    cmp-long v1, v1, v10

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Landroid/provider/SettingsEx$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 76
    iput-wide v10, p0, Landroid/provider/SettingsEx$NameValueCache;->mValuesVersion:J

    .line 79
    :cond_0
    iget-object v1, p0, Landroid/provider/SettingsEx$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Landroid/provider/SettingsEx$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit p0

    move-object v12, v1

    .line 136
    :cond_1
    :goto_0
    return-object v12

    .line 82
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, cp:Landroid/content/IContentProvider;
    monitor-enter p0

    .line 86
    :try_start_1
    iget-object v0, p0, Landroid/provider/SettingsEx$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 87
    if-nez v0, :cond_3

    .line 88
    iget-object v1, p0, Landroid/provider/SettingsEx$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v8

    iput-object v8, p0, Landroid/provider/SettingsEx$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .end local v0           #cp:Landroid/content/IContentProvider;
    .local v8, cp:Landroid/content/IContentProvider;
    move-object v0, v8

    .line 90
    .end local v8           #cp:Landroid/content/IContentProvider;
    .restart local v0       #cp:Landroid/content/IContentProvider;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 96
    iget-object v1, p0, Landroid/provider/SettingsEx$NameValueCache;->mCallCommand:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 98
    :try_start_2
    iget-object v1, p0, Landroid/provider/SettingsEx$NameValueCache;->mCallCommand:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 99
    .local v6, b:Landroid/os/Bundle;
    if-eqz v6, :cond_4

    .line 100
    invoke-virtual {v6}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v12

    .line 101
    .local v12, value:Ljava/lang/String;
    monitor-enter p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 102
    :try_start_3
    iget-object v1, p0, Landroid/provider/SettingsEx$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 108
    .end local v6           #b:Landroid/os/Bundle;
    .end local v12           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 114
    :cond_4
    const/4 v7, 0x0

    .line 116
    .local v7, c:Landroid/database/Cursor;
    :try_start_5
    iget-object v1, p0, Landroid/provider/SettingsEx$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v2, Landroid/provider/SettingsEx$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    const-string/jumbo v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 118
    if-nez v7, :cond_5

    .line 119
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/SettingsEx$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 120
    const/4 v12, 0x0

    .line 136
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 82
    .end local v0           #cp:Landroid/content/IContentProvider;
    .end local v7           #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 90
    .restart local v0       #cp:Landroid/content/IContentProvider;
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 123
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_5
    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 124
    .restart local v12       #value:Ljava/lang/String;
    :goto_1
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 125
    :try_start_9
    iget-object v1, p0, Landroid/provider/SettingsEx$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 136
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 123
    .end local v12           #value:Ljava/lang/String;
    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    .line 126
    .restart local v12       #value:Ljava/lang/String;
    :catchall_3
    move-exception v1

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    .line 132
    .end local v12           #value:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 133
    .local v9, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/SettingsEx$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 134
    const/4 v12, 0x0

    .line 136
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_4
    move-exception v1

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method
