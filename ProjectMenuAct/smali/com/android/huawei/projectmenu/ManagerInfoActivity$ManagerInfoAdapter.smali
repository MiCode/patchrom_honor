.class Lcom/android/huawei/projectmenu/ManagerInfoActivity$ManagerInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManagerInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/huawei/projectmenu/ManagerInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ManagerInfoAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/huawei/projectmenu/ManagerInfoActivity$ManagerInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/huawei/projectmenu/ManagerInfoActivity$ManagerInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 71
    invoke-static {}, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/huawei/projectmenu/ManagerInfoActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 75
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 82
    .local v2, layout:Landroid/widget/LinearLayout;
    if-nez p2, :cond_1

    .line 83
    iget-object v4, p0, Lcom/android/huawei/projectmenu/ManagerInfoActivity$ManagerInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030005

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .end local v2           #layout:Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 88
    .restart local v2       #layout:Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/huawei/projectmenu/ManagerInfoActivity$ManagerInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;

    .line 89
    .local v1, data:Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;
    if-eqz v1, :cond_0

    .line 90
    const v4, 0x7f070010

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 91
    .local v3, title:Landroid/widget/TextView;
    const v4, 0x7f070011

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    .local v0, content:Landroid/widget/TextView;
    iget-object v4, v1, Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v4, v1, Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget v4, v1, Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 98
    .end local v0           #content:Landroid/widget/TextView;
    .end local v3           #title:Landroid/widget/TextView;
    :cond_0
    return-object v2

    .end local v1           #data:Lcom/android/huawei/projectmenu/ManagerInfoActivity$Item;
    :cond_1
    move-object v2, p2

    .line 85
    check-cast v2, Landroid/widget/LinearLayout;

    goto :goto_0
.end method
