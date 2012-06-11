.class public Lcom/android/huawei/projectmenu/VersionInfo;
.super Landroid/app/ListActivity;
.source "VersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/huawei/projectmenu/VersionInfo$VersionAdapter;
    }
.end annotation


# static fields
.field private static final DATA_VERSION:[Ljava/lang/Integer;

.field private static VERSION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const v2, 0x7f06003a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f06003b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f06003c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f06003d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f06003e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f06003f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f060040

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f060041

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f060042

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/huawei/projectmenu/VersionInfo;->DATA_VERSION:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 90
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/huawei/projectmenu/VersionInfo;->DATA_VERSION:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/huawei/projectmenu/VersionInfo;->VERSION:[Ljava/lang/String;

    return-object v0
.end method

.method private getVersion()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/VersionInfo;->setVersion()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setVersion()[Ljava/lang/String;
    .locals 17

    .prologue
    .line 45
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/huawei/projectmenu/ProjectMenu;->getSHVersion(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, AMSS_version:Ljava/lang/String;
    const-string v14, " "

    const/4 v15, 0x2

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, AMSS_versionSplit:[Ljava/lang/String;
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/android/huawei/projectmenu/ProjectMenu;->getSHVersion(I)Ljava/lang/String;

    move-result-object v10

    .line 50
    .local v10, other_version:Ljava/lang/String;
    const/4 v14, 0x3

    invoke-static {v14}, Lcom/android/huawei/projectmenu/ProjectMenu;->getSHVersion(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, appTime_version:Ljava/lang/String;
    const/4 v12, 0x0

    .line 52
    .local v12, version:Ljava/lang/String;
    const-string v14, "ro.confg.hw_appsbootversion"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, appsBootVersion:Ljava/lang/String;
    const-string v14, "ro.confg.hw_appversion"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, appVersion:Ljava/lang/String;
    const-string v14, "ro.confg.hw_appfsversion"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, appFSVersion:Ljava/lang/String;
    const-string v14, "VersionInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "appsBootVersion"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v14, "VersionInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "appVersion"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v14, "VersionInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "appFSVersion"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 61
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v1, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v1, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 72
    :goto_0
    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 74
    .local v11, splitVersion:[Ljava/lang/String;
    move-object v7, v11

    .local v7, arr$:[Ljava/lang/String;
    array-length v9, v7

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_1

    aget-object v13, v7, v8

    .line 75
    .local v13, wString:Ljava/lang/String;
    const-string v14, "###"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "splitVersion"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 65
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v11           #splitVersion:[Ljava/lang/String;
    .end local v13           #wString:Ljava/lang/String;
    :cond_0
    const-string v14, "VersionInfo"

    const-string v15, "get app version from build.prop failed!"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v14, 0x2

    invoke-static {v14}, Lcom/android/huawei/projectmenu/ProjectMenu;->getSHVersion(I)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, app_version:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-object v15, v1, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v1, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 80
    .end local v5           #app_version:Ljava/lang/String;
    .restart local v7       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    .restart local v11       #splitVersion:[Ljava/lang/String;
    :cond_1
    const/4 v14, 0x4

    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->readHWBoardID()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    .line 83
    return-object v11
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/VersionInfo;->getVersion()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/huawei/projectmenu/VersionInfo;->VERSION:[Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/android/huawei/projectmenu/VersionInfo$VersionAdapter;

    invoke-direct {v0, p0}, Lcom/android/huawei/projectmenu/VersionInfo$VersionAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/VersionInfo;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    return-void
.end method
