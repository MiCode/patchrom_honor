.class Lcom/android/huawei/projectmenu/ApkVersionQuery$AppinfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApkVersionQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/huawei/projectmenu/ApkVersionQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppinfoAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

.field mIcon:Landroid/graphics/drawable/Drawable;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/content/pm/PackageManager;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "mPManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppinfoAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 54
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppinfoAdapter;->mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

    .line 56
    iput-object p2, p0, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppinfoAdapter;->mList:Ljava/util/List;

    .line 59
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppinfoAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 80
    new-instance v1, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppViewHolder;

    invoke-direct {v1}, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppViewHolder;-><init>()V

    .line 81
    .local v1, holder:Lcom/android/huawei/projectmenu/ApkVersionQuery$AppViewHolder;
    if-nez p2, :cond_3

    .line 82
    iget-object v3, p0, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppinfoAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030004

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    const v3, 0x7f07000d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 85
    const v3, 0x7f07000c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 86
    const v3, 0x7f07000f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppViewHolder;->appVerdionname:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    :goto_0
    iget-object v3, p0, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppinfoAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 92
    .local v2, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 93
    .local v0, aInfo:Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Lcom/android/huawei/projectmenu/ApkVersionQuery;->access$000()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppinfoAdapter;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 94
    if-eqz v2, :cond_2

    .line 95
    invoke-static {}, Lcom/android/huawei/projectmenu/ApkVersionQuery;->access$000()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 96
    iget-object v3, v1, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/huawei/projectmenu/ApkVersionQuery;->access$000()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppinfoAdapter;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 99
    iget-object v3, v1, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppinfoAdapter;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 102
    iget-object v3, v1, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppViewHolder;->appVerdionname:Landroid/widget/TextView;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_2
    return-object p2

    .line 89
    .end local v0           #aInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/android/huawei/projectmenu/ApkVersionQuery$AppViewHolder;
    check-cast v1, Lcom/android/huawei/projectmenu/ApkVersionQuery$AppViewHolder;

    .restart local v1       #holder:Lcom/android/huawei/projectmenu/ApkVersionQuery$AppViewHolder;
    goto :goto_0
.end method
