.class Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApparatusTypeQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/huawei/projectmenu/ApparatusTypeQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HardwareVersionAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsEMMCFlash:Z

.field private mTextView1:Landroid/widget/TextView;

.field private mTextView2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 128
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;->mIsEMMCFlash:Z

    .line 130
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 132
    const-string v0, "1"

    const-string v1, "ro.emmc"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;->mIsEMMCFlash:Z

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/android/huawei/projectmenu/ApparatusTypeQuery;->access$000()[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 166
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

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, layout:Landroid/widget/LinearLayout;
    if-nez p2, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #layout:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 192
    .restart local v0       #layout:Landroid/widget/LinearLayout;
    :goto_0
    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;->mTextView1:Landroid/widget/TextView;

    .line 194
    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;->mTextView2:Landroid/widget/TextView;

    .line 197
    const v1, 0x7f060045

    invoke-static {}, Lcom/android/huawei/projectmenu/ApparatusTypeQuery;->access$000()[Ljava/lang/Integer;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;->mIsEMMCFlash:Z

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;->mTextView1:Landroid/widget/TextView;

    const v2, 0x7f060046

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 205
    :goto_1
    iget-object v1, p0, Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;->mTextView1:Landroid/widget/TextView;

    const/high16 v2, 0x4170

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 206
    iget-object v1, p0, Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;->mTextView1:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 208
    invoke-static {}, Lcom/android/huawei/projectmenu/ApparatusTypeQuery;->access$100()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;->mTextView2:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_2
    return-object v0

    :cond_0
    move-object v0, p2

    .line 189
    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;->mTextView1:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/huawei/projectmenu/ApparatusTypeQuery;->access$000()[Ljava/lang/Integer;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/android/huawei/projectmenu/ApparatusTypeQuery$HardwareVersionAdapter;->mTextView2:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/huawei/projectmenu/ApparatusTypeQuery;->access$100()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
