.class public Lcom/android/huawei/projectmenu/ApkVersionQuery;
.super Landroid/app/ListActivity;
.source "ApkVersionQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/huawei/projectmenu/ApkVersionQuery$AppViewHolder;,
        Lcom/android/huawei/projectmenu/ApkVersionQuery$AppinfoAdapter;
    }
.end annotation


# static fields
.field private static mPm:Landroid/content/pm/PackageManager;


# instance fields
.field private adapter:Lcom/android/huawei/projectmenu/ApkVersionQuery$AppinfoAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 111
    return-void
.end method

.method static synthetic access$000()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/huawei/projectmenu/ApkVersionQuery;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method getInstalledPks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v1, Lcom/android/huawei/projectmenu/ApkVersionQuery;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 41
    .local v0, installedPkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/huawei/projectmenu/ApkVersionQuery;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/huawei/projectmenu/ApkVersionQuery;->mPm:Landroid/content/pm/PackageManager;

    .line 35
    new-instance v0, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppinfoAdapter;

    invoke-virtual {p0}, Lcom/android/huawei/projectmenu/ApkVersionQuery;->getInstalledPks()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/android/huawei/projectmenu/ApkVersionQuery;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppinfoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/content/pm/PackageManager;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/ApkVersionQuery;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    return-void
.end method
