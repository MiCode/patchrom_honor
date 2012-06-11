.class Lcom/android/huawei/projectmenu/BackGroundSetting$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "BackGroundSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/huawei/projectmenu/BackGroundSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAdapter"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/huawei/projectmenu/BackGroundSetting$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/huawei/projectmenu/BackGroundSetting$Item;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/huawei/projectmenu/BackGroundSetting$Item;>;"
    const/4 v0, 0x0

    .line 248
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 243
    iput-object v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$MyAdapter;->mList:Ljava/util/ArrayList;

    .line 244
    iput-object v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$MyAdapter;->mContext:Landroid/content/Context;

    .line 249
    iput-object p1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$MyAdapter;->mList:Ljava/util/ArrayList;

    .line 250
    iput-object p2, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$MyAdapter;->mContext:Landroid/content/Context;

    .line 251
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 252
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$MyAdapter;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$MyAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$MyAdapter;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$MyAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 263
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/android/huawei/projectmenu/BackGroundSetting$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;

    .line 268
    .local v0, item:Lcom/android/huawei/projectmenu/BackGroundSetting$Item;
    if-nez v0, :cond_0

    .line 269
    const-string v1, "MyAdapter"

    const-string v2, "get item is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v1, 0x0

    .line 278
    :goto_0
    return-object v1

    .line 272
    :cond_0
    if-nez p2, :cond_1

    .line 273
    iget-object v1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$MyAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_1
    move-object v1, p2

    .line 275
    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget v1, v0, Lcom/android/huawei/projectmenu/BackGroundSetting$Item;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, p2

    .line 278
    goto :goto_0
.end method
