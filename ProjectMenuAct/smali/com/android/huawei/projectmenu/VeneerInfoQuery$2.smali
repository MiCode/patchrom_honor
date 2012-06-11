.class Lcom/android/huawei/projectmenu/VeneerInfoQuery$2;
.super Ljava/lang/Object;
.source "VeneerInfoQuery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/huawei/projectmenu/VeneerInfoQuery;->mCheckCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/huawei/projectmenu/VeneerInfoQuery;

.field final synthetic val$mCheckCode:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/huawei/projectmenu/VeneerInfoQuery;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery$2;->this$0:Lcom/android/huawei/projectmenu/VeneerInfoQuery;

    iput-object p2, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery$2;->val$mCheckCode:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery$2;->this$0:Lcom/android/huawei/projectmenu/VeneerInfoQuery;

    iget-object v1, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery$2;->val$mCheckCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/huawei/projectmenu/VeneerInfoQuery;->codeEdit:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->access$002(Lcom/android/huawei/projectmenu/VeneerInfoQuery;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery$2;->this$0:Lcom/android/huawei/projectmenu/VeneerInfoQuery;

    #getter for: Lcom/android/huawei/projectmenu/VeneerInfoQuery;->codeEdit:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->access$000(Lcom/android/huawei/projectmenu/VeneerInfoQuery;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery$2;->this$0:Lcom/android/huawei/projectmenu/VeneerInfoQuery;

    #getter for: Lcom/android/huawei/projectmenu/VeneerInfoQuery;->mlimit:I
    invoke-static {v1}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->access$100(Lcom/android/huawei/projectmenu/VeneerInfoQuery;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery$2;->this$0:Lcom/android/huawei/projectmenu/VeneerInfoQuery;

    iget-object v1, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery$2;->this$0:Lcom/android/huawei/projectmenu/VeneerInfoQuery;

    #getter for: Lcom/android/huawei/projectmenu/VeneerInfoQuery;->codeEdit:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->access$000(Lcom/android/huawei/projectmenu/VeneerInfoQuery;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/huawei/projectmenu/ProjectMenu;->nativeHW_widevine_cmp_key([BI)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->flag:Z

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/huawei/projectmenu/VeneerInfoQuery$2;->this$0:Lcom/android/huawei/projectmenu/VeneerInfoQuery;

    #calls: Lcom/android/huawei/projectmenu/VeneerInfoQuery;->mCheckResult()V
    invoke-static {v0}, Lcom/android/huawei/projectmenu/VeneerInfoQuery;->access$200(Lcom/android/huawei/projectmenu/VeneerInfoQuery;)V

    .line 110
    return-void
.end method
