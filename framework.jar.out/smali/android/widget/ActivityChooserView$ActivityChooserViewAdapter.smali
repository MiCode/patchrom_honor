.class Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityChooserViewAdapter"
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_ACTIVITY:I = 0x0

.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x3

.field private static final ITEM_VIEW_TYPE_FOOTER:I = 0x1

.field public static final MAX_ACTIVITY_COUNT_DEFAULT:I = 0x4

.field public static final MAX_ACTIVITY_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private mDataModel:Landroid/widget/ActivityChooserModel;

.field private mHighlightDefaultActivity:Z

.field private mMaxActivityCount:I

.field private mShowDefaultActivity:Z

.field private mShowFooterView:Z

.field final synthetic this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserView;)V
    .locals 1
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 623
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserView;Landroid/widget/ActivityChooserView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 609
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Landroid/widget/ActivityChooserView;)V

    return-void
.end method


# virtual methods
.method public getActivityCount()I
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 658
    const/4 v1, 0x0

    .line 659
    .local v1, count:I
    iget-object v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v2}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    .line 660
    .local v0, activityCount:I
    iget-boolean v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v2}, Landroid/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 661
    add-int/lit8 v0, v0, -0x1

    .line 663
    :cond_0
    iget v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 664
    iget-boolean v2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v2, :cond_1

    .line 665
    add-int/lit8 v1, v1, 0x1

    .line 667
    :cond_1
    return v1
.end method

.method public getDataModel()Landroid/widget/ActivityChooserModel;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    return-object v0
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getHistorySize()I
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getHistorySize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 671
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v0

    .line 672
    .local v0, itemViewType:I
    packed-switch v0, :pswitch_data_0

    .line 681
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 674
    :pswitch_0
    const/4 v1, 0x0

    .line 679
    :goto_0
    return-object v1

    .line 676
    :pswitch_1
    iget-boolean v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v1}, Landroid/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 677
    add-int/lit8 p1, p1, 0x1

    .line 679
    :cond_0
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    invoke-virtual {v1, p1}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    goto :goto_0

    .line 672
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 686
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 645
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 646
    const/4 v0, 0x1

    .line 648
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxActivityCount()I
    .locals 1

    .prologue
    .line 778
    iget v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    return v0
.end method

.method public getShowDefaultActivity()Z
    .locals 1

    .prologue
    .line 796
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v11, 0x109001f

    const v10, 0x1020016

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 690
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v3

    .line 691
    .local v3, itemViewType:I
    packed-switch v3, :pswitch_data_0

    .line 723
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 693
    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v9, :cond_1

    .line 694
    :cond_0
    iget-object v6, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v11, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 696
    invoke-virtual {p2, v9}, Landroid/view/View;->setId(I)V

    .line 697
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 698
    .local v5, titleView:Landroid/widget/TextView;
    iget-object v6, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/widget/ActivityChooserView;->access$1400(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x10404c5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v5           #titleView:Landroid/widget/TextView;
    :cond_1
    move-object v1, p2

    .line 721
    .end local p2
    .local v1, convertView:Landroid/view/View;
    :goto_0
    return-object v1

    .line 703
    .end local v1           #convertView:Landroid/view/View;
    .restart local p2
    :pswitch_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x1020236

    if-eq v6, v7, :cond_3

    .line 704
    :cond_2
    iget-object v6, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v6}, Landroid/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v11, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 707
    :cond_3
    iget-object v6, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/widget/ActivityChooserView;->access$1500(Landroid/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 709
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const v6, 0x1020006

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 710
    .local v2, iconView:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 711
    .local v0, activity:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 713
    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 714
    .restart local v5       #titleView:Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-boolean v6, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-eqz v6, :cond_4

    if-nez p1, :cond_4

    iget-boolean v6, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eqz v6, :cond_4

    .line 717
    invoke-virtual {p2, v9}, Landroid/view/View;->setActivated(Z)V

    :goto_1
    move-object v1, p2

    .line 721
    .end local p2
    .restart local v1       #convertView:Landroid/view/View;
    goto :goto_0

    .line 719
    .end local v1           #convertView:Landroid/view/View;
    .restart local p2
    :cond_4
    invoke-virtual {p2, v8}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 691
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x3

    return v0
.end method

.method public measureContentWidth()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 730
    iget v5, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 731
    .local v5, oldMaxActivityCount:I
    const v7, 0x7fffffff

    iput v7, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 733
    const/4 v0, 0x0

    .line 734
    .local v0, contentWidth:I
    const/4 v4, 0x0

    .line 736
    .local v4, itemView:Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 737
    .local v6, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 738
    .local v2, heightMeasureSpec:I
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v1

    .line 740
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 741
    const/4 v7, 0x0

    invoke-virtual {p0, v3, v4, v7}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 742
    invoke-virtual {v4, v6, v2}, Landroid/view/View;->measure(II)V

    .line 743
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 740
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 746
    :cond_0
    iput v5, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 748
    return v0
.end method

.method public setDataModel(Landroid/widget/ActivityChooserModel;)V
    .locals 2
    .parameter "dataModel"

    .prologue
    .line 632
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mAdapter:Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->access$000(Landroid/widget/ActivityChooserView;)Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 633
    .local v0, oldDataModel:Landroid/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->access$1300(Landroid/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 636
    :cond_0
    iput-object p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Landroid/widget/ActivityChooserModel;

    .line 637
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 638
    iget-object v1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Landroid/widget/ActivityChooserView;

    #getter for: Landroid/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;
    invoke-static {v1}, Landroid/widget/ActivityChooserView;->access$1300(Landroid/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 640
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 641
    return-void
.end method

.method public setMaxActivityCount(I)V
    .locals 1
    .parameter "maxActivityCount"

    .prologue
    .line 752
    iget v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    if-eq v0, p1, :cond_0

    .line 753
    iput p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 754
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 756
    :cond_0
    return-void
.end method

.method public setShowDefaultActivity(ZZ)V
    .locals 1
    .parameter "showDefaultActivity"
    .parameter "highlightDefaultActivity"

    .prologue
    .line 787
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eq v0, p2, :cond_1

    .line 789
    :cond_0
    iput-boolean p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    .line 790
    iput-boolean p2, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    .line 791
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 793
    :cond_1
    return-void
.end method

.method public setShowFooterView(Z)V
    .locals 1
    .parameter "showFooterView"

    .prologue
    .line 763
    iget-boolean v0, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eq v0, p1, :cond_0

    .line 764
    iput-boolean p1, p0, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    .line 765
    invoke-virtual {p0}, Landroid/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 767
    :cond_0
    return-void
.end method
