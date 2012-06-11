.class Lcom/android/huawei/projectmenu/VersionInfo$VersionAdapter;
.super Landroid/widget/BaseAdapter;
.source "VersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/huawei/projectmenu/VersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VersionAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mTextView1:Landroid/widget/TextView;

.field private mTextView2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/huawei/projectmenu/VersionInfo$VersionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 99
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/android/huawei/projectmenu/VersionInfo;->access$000()[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 129
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x5

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, layout:Landroid/widget/LinearLayout;
    if-nez p2, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/huawei/projectmenu/VersionInfo$VersionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #layout:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 155
    .restart local v0       #layout:Landroid/widget/LinearLayout;
    :goto_0
    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/huawei/projectmenu/VersionInfo$VersionAdapter;->mTextView1:Landroid/widget/TextView;

    .line 157
    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/huawei/projectmenu/VersionInfo$VersionAdapter;->mTextView2:Landroid/widget/TextView;

    .line 165
    iget-object v1, p0, Lcom/android/huawei/projectmenu/VersionInfo$VersionAdapter;->mTextView1:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/huawei/projectmenu/VersionInfo;->access$000()[Ljava/lang/Integer;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v1, p0, Lcom/android/huawei/projectmenu/VersionInfo$VersionAdapter;->mTextView1:Landroid/widget/TextView;

    const/high16 v2, 0x4170

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 167
    iget-object v1, p0, Lcom/android/huawei/projectmenu/VersionInfo$VersionAdapter;->mTextView1:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 169
    invoke-static {}, Lcom/android/huawei/projectmenu/VersionInfo;->access$100()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/android/huawei/projectmenu/VersionInfo$VersionAdapter;->mTextView2:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :goto_1
    return-object v0

    :cond_0
    move-object v0, p2

    .line 152
    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/android/huawei/projectmenu/VersionInfo$VersionAdapter;->mTextView2:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/huawei/projectmenu/VersionInfo;->access$100()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
