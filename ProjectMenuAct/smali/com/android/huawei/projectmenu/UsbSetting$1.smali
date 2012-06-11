.class Lcom/android/huawei/projectmenu/UsbSetting$1;
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


# direct methods
.method constructor <init>(Lcom/android/huawei/projectmenu/UsbSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/huawei/projectmenu/UsbSetting$1;->this$0:Lcom/android/huawei/projectmenu/UsbSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/huawei/projectmenu/UsbSetting$1;->this$0:Lcom/android/huawei/projectmenu/UsbSetting;

    #getter for: Lcom/android/huawei/projectmenu/UsbSetting;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/huawei/projectmenu/UsbSetting;->access$100(Lcom/android/huawei/projectmenu/UsbSetting;)Landroid/widget/ListView;

    move-result-object v0

    invoke-static {}, Lcom/android/huawei/projectmenu/UsbSetting;->access$000()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 162
    return-void
.end method
