.class Lcom/android/huawei/projectmenu/LockFrequency$4;
.super Ljava/lang/Object;
.source "LockFrequency.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/huawei/projectmenu/LockFrequency;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/huawei/projectmenu/LockFrequency;

.field final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/huawei/projectmenu/LockFrequency;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/huawei/projectmenu/LockFrequency$4;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iput-object p2, p0, Lcom/android/huawei/projectmenu/LockFrequency$4;->val$textEntryView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const v7, 0x7f060074

    const/4 v4, 0x0

    .line 182
    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$4;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v3, p0, Lcom/android/huawei/projectmenu/LockFrequency$4;->val$textEntryView:Landroid/view/View;

    const v6, 0x7f07000a

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v5, Lcom/android/huawei/projectmenu/LockFrequency;->entryEditText:Landroid/widget/EditText;

    .line 183
    iget-object v3, p0, Lcom/android/huawei/projectmenu/LockFrequency$4;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v3, v3, Lcom/android/huawei/projectmenu/LockFrequency;->entryEditText:Landroid/widget/EditText;

    if-nez v3, :cond_0

    move-object v2, v4

    .line 184
    .local v2, text:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 186
    .local v0, length:I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 187
    const-string v3, "[0-9]+"

    invoke-static {v3, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xa

    if-ge v0, v3, :cond_1

    .line 189
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 191
    .local v1, lockData:I
    iget-object v3, p0, Lcom/android/huawei/projectmenu/LockFrequency$4;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    invoke-static {v1}, Lcom/android/huawei/projectmenu/ProjectMenu;->lockFreq(I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/huawei/projectmenu/LockFrequency;->lockSuccess:Z

    .line 192
    const-string v3, "###"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lockSuccess"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$4;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-boolean v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->lockSuccess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v3, p0, Lcom/android/huawei/projectmenu/LockFrequency$4;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/huawei/projectmenu/LockFrequency;->showDialog(I)V

    .line 195
    iget-object v3, p0, Lcom/android/huawei/projectmenu/LockFrequency$4;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v3, v3, Lcom/android/huawei/projectmenu/LockFrequency;->entryEditText:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .end local v1           #lockData:I
    :goto_1
    return-void

    .line 183
    .end local v0           #length:I
    .end local v2           #text:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/huawei/projectmenu/LockFrequency$4;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v3, v3, Lcom/android/huawei/projectmenu/LockFrequency;->entryEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 198
    .restart local v0       #length:I
    .restart local v2       #text:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/huawei/projectmenu/LockFrequency$4;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v3, v3, Lcom/android/huawei/projectmenu/LockFrequency;->entryEditText:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$4;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f060084

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 206
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$4;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f060083

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method
