.class Landroid/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 800
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mSearchButton:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/SearchView;->access$400(Landroid/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 801
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #calls: Landroid/widget/SearchView;->onSearchClicked()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$500(Landroid/widget/SearchView;)V

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Landroid/widget/SearchView;->access$600(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 803
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #calls: Landroid/widget/SearchView;->onCloseClicked()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$700(Landroid/widget/SearchView;)V

    goto :goto_0

    .line 804
    :cond_2
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/SearchView;->access$800(Landroid/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 805
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #calls: Landroid/widget/SearchView;->onSubmitQuery()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$900(Landroid/widget/SearchView;)V

    goto :goto_0

    .line 806
    :cond_3
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mVoiceButton:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/SearchView;->access$1000(Landroid/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 807
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #calls: Landroid/widget/SearchView;->onVoiceClicked()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$1100(Landroid/widget/SearchView;)V

    goto :goto_0

    .line 808
    :cond_4
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;
    invoke-static {v0}, Landroid/widget/SearchView;->access$1200(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 809
    iget-object v0, p0, Landroid/widget/SearchView$6;->this$0:Landroid/widget/SearchView;

    #calls: Landroid/widget/SearchView;->forceSuggestionQuery()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$1300(Landroid/widget/SearchView;)V

    goto :goto_0
.end method
