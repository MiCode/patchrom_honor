.class Lcom/android/server/pm/PackageManagerService$ApkInstallInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApkInstallInfo"
.end annotation


# instance fields
.field public flags:I

.field public packagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "_packagePath"
    .parameter "_flags"

    .prologue
    .line 1311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1312
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ApkInstallInfo;->packagePath:Ljava/lang/String;

    .line 1313
    iput p2, p0, Lcom/android/server/pm/PackageManagerService$ApkInstallInfo;->flags:I

    .line 1314
    return-void
.end method

.method public static mapApkInstallFlag(Ljava/lang/String;)I
    .locals 3
    .parameter "flag"

    .prologue
    .line 1317
    const/4 v0, 0x0

    .line 1318
    .local v0, flags:I
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$700()Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 1326
    .end local v0           #flags:I
    .local v1, flags:I
    :goto_0
    return v1

    .line 1321
    .end local v1           #flags:I
    .restart local v0       #flags:I
    :cond_0
    const-string v2, "u"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1322
    const/high16 v2, -0x7e00

    or-int/2addr v0, v2

    :cond_1
    :goto_1
    move v1, v0

    .line 1326
    .end local v0           #flags:I
    .restart local v1       #flags:I
    goto :goto_0

    .line 1323
    .end local v1           #flags:I
    .restart local v0       #flags:I
    :cond_2
    const-string v2, "d"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1324
    const/high16 v2, 0x200

    or-int/2addr v0, v2

    goto :goto_1
.end method
