.class Lcom/android/huawei/projectmenu/UsbSetting$2;
.super Ljava/lang/Object;
.source "UsbSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/huawei/projectmenu/UsbSetting;->showOtherDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/huawei/projectmenu/UsbSetting;

.field final synthetic val$editTxt:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/huawei/projectmenu/UsbSetting;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/huawei/projectmenu/UsbSetting$2;->this$0:Lcom/android/huawei/projectmenu/UsbSetting;

    iput-object p2, p0, Lcom/android/huawei/projectmenu/UsbSetting$2;->val$editTxt:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 150
    iget-object v3, p0, Lcom/android/huawei/projectmenu/UsbSetting$2;->val$editTxt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, strInput:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/huawei/projectmenu/UsbSetting$2;->this$0:Lcom/android/huawei/projectmenu/UsbSetting;

    #calls: Lcom/android/huawei/projectmenu/UsbSetting;->getNumber(Ljava/lang/String;)I
    invoke-static {v3, v1}, Lcom/android/huawei/projectmenu/UsbSetting;->access$200(Lcom/android/huawei/projectmenu/UsbSetting;Ljava/lang/String;)I

    move-result v2

    .line 152
    .local v2, tmpPortNum:I
    const/4 v0, 0x0

    .line 153
    .local v0, reFlag:Z
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/android/huawei/projectmenu/UsbSetting$2;->this$0:Lcom/android/huawei/projectmenu/UsbSetting;

    #calls: Lcom/android/huawei/projectmenu/UsbSetting;->writeFile(I)Z
    invoke-static {v3, v2}, Lcom/android/huawei/projectmenu/UsbSetting;->access$300(Lcom/android/huawei/projectmenu/UsbSetting;I)Z

    move-result v0

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/android/huawei/projectmenu/UsbSetting$2;->this$0:Lcom/android/huawei/projectmenu/UsbSetting;

    #calls: Lcom/android/huawei/projectmenu/UsbSetting;->showDialogTips(ZI)V
    invoke-static {v3, v0, v2}, Lcom/android/huawei/projectmenu/UsbSetting;->access$400(Lcom/android/huawei/projectmenu/UsbSetting;ZI)V

    .line 158
    return-void
.end method
