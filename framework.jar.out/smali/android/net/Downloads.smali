.class public final Landroid/net/Downloads;
.super Ljava/lang/Object;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Downloads$DownloadBase;,
        Landroid/net/Downloads$ById;,
        Landroid/net/Downloads$ByUri;,
        Landroid/net/Downloads$StatusInfo;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETED"

.field public static final COLUMN_NOTIFICATION_EXTRAS:Ljava/lang/String; = "notificationextras"

.field private static final DOWNLOADS_COLUMN_CURRENT_BYTES:I = 0x5

.field private static final DOWNLOADS_COLUMN_FILENAME:I = 0x3

.field private static final DOWNLOADS_COLUMN_ID:I = 0x0

.field private static final DOWNLOADS_COLUMN_LAST_MODIFICATION:I = 0x4

.field private static final DOWNLOADS_COLUMN_STATUS:I = 0x2

.field private static final DOWNLOADS_COLUMN_URI:I = 0x1

.field private static final DOWNLOADS_PROJECTION:[Ljava/lang/String; = null

.field public static final DOWNLOAD_DESTINATION_CACHE:I = 0x2

.field public static final DOWNLOAD_DESTINATION_CACHE_PURGEABLE:I = 0x3

.field public static final DOWNLOAD_DESTINATION_EXTERNAL:I = 0x1

.field public static final DOWNLOAD_ID_INVALID:J = -0x1L

.field public static final STATUS_DEVICE_NOT_FOUND_ERROR:I = 0x1f3

.field private static final STATUS_DOWNLOADED_UPDATE:I = 0x4

.field private static final STATUS_DOWNLOADING_UPDATE:I = 0x3

.field public static final STATUS_INSUFFICIENT_SPACE_ERROR:I = 0x1f2

.field private static final STATUS_INVALID:I = 0x0

.field public static final STATUS_NOT_ACCEPTABLE:I = 0x196

.field public static final STATUS_PENDING:I = 0xbe

.field public static final STATUS_RUNNING:I = 0xc0

.field public static final STATUS_SUCCESS:I = 0xc8

.field public static final STATUS_UNHANDLED_REDIRECT:I = 0x1ed

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1eb


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 562
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "entity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lastmod"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/Downloads;->DOWNLOADS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/net/Downloads;->DOWNLOADS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/database/Cursor;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Landroid/net/Downloads;->getStatusOfDownload(Landroid/database/Cursor;J)I

    move-result v0

    return v0
.end method

.method private static final getStatusOfDownload(Landroid/database/Cursor;J)I
    .locals 12
    .parameter "c"
    .parameter "redownload_threshold"

    .prologue
    const/4 v10, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x0

    .line 610
    const/4 v11, 0x2

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 611
    .local v7, status:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 616
    .local v5, realtime:J
    invoke-static {v7}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v11

    if-nez v11, :cond_2

    .line 618
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 619
    .local v1, modified:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 620
    .local v3, now:J
    cmp-long v10, v3, v1

    if-ltz v10, :cond_0

    sub-long v10, v3, v1

    cmp-long v10, v10, p1

    if-lez v10, :cond_1

    :cond_0
    move v8, v9

    .line 636
    .end local v1           #modified:J
    .end local v3           #now:J
    :cond_1
    :goto_0
    return v8

    .line 627
    :cond_2
    invoke-static {v7}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v11

    if-eqz v11, :cond_3

    move v8, v9

    .line 628
    goto :goto_0

    .line 631
    :cond_3
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, filename:Ljava/lang/String;
    if-nez v0, :cond_4

    move v8, v9

    .line 633
    goto :goto_0

    :cond_4
    move v8, v10

    .line 636
    goto :goto_0
.end method

.method public static isStatusError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 110
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusSuccess(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 103
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
