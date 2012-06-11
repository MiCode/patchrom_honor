.class Lcom/android/huawei/projectmenu/LockFrequency$2;
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
    .line 95
    iput-object p1, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iput-object p2, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->val$textEntryView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x0

    .line 99
    iget-object v7, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->val$textEntryView:Landroid/view/View;

    const v8, 0x7f070004

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, v7, Lcom/android/huawei/projectmenu/LockFrequency;->bandClassText:Landroid/widget/EditText;

    .line 100
    iget-object v7, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->val$textEntryView:Landroid/view/View;

    const v8, 0x7f070005

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, v7, Lcom/android/huawei/projectmenu/LockFrequency;->cdmaFreqText:Landroid/widget/EditText;

    .line 101
    iget-object v7, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->val$textEntryView:Landroid/view/View;

    const v8, 0x7f070006

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, v7, Lcom/android/huawei/projectmenu/LockFrequency;->sIDText:Landroid/widget/EditText;

    .line 102
    iget-object v7, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->val$textEntryView:Landroid/view/View;

    const v8, 0x7f070007

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, v7, Lcom/android/huawei/projectmenu/LockFrequency;->nIDText:Landroid/widget/EditText;

    .line 103
    iget-object v7, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->val$textEntryView:Landroid/view/View;

    const v8, 0x7f070008

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, v7, Lcom/android/huawei/projectmenu/LockFrequency;->evdoBandText:Landroid/widget/EditText;

    .line 104
    iget-object v7, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->val$textEntryView:Landroid/view/View;

    const v8, 0x7f070009

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, v7, Lcom/android/huawei/projectmenu/LockFrequency;->evdoFreqText:Landroid/widget/EditText;

    .line 106
    const/4 v5, 0x6

    new-array v4, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->bandClassText:Landroid/widget/EditText;

    if-nez v5, :cond_0

    move-object v5, v6

    :goto_0
    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->cdmaFreqText:Landroid/widget/EditText;

    if-nez v5, :cond_1

    move-object v5, v6

    :goto_1
    aput-object v5, v4, v11

    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->sIDText:Landroid/widget/EditText;

    if-nez v5, :cond_2

    move-object v5, v6

    :goto_2
    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->nIDText:Landroid/widget/EditText;

    if-nez v5, :cond_3

    move-object v5, v6

    :goto_3
    aput-object v5, v4, v12

    const/4 v7, 0x4

    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->evdoBandText:Landroid/widget/EditText;

    if-nez v5, :cond_4

    move-object v5, v6

    :goto_4
    aput-object v5, v4, v7

    const/4 v7, 0x5

    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->evdoFreqText:Landroid/widget/EditText;

    if-nez v5, :cond_5

    move-object v5, v6

    :goto_5
    aput-object v5, v4, v7

    .line 115
    .local v4, textInput:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 117
    .local v0, illegalInput:Z
    const/4 v1, 0x0

    .local v1, index:I
    :goto_6
    const/4 v5, 0x6

    if-ge v1, v5, :cond_7

    .line 118
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 119
    .local v2, length:I
    aget-object v5, v4, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 120
    const-string v5, "[0-9]+"

    aget-object v7, v4, v1

    invoke-static {v5, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x7

    if-ge v2, v5, :cond_6

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 106
    .end local v0           #illegalInput:Z
    .end local v1           #index:I
    .end local v2           #length:I
    .end local v4           #textInput:[Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->bandClassText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->cdmaFreqText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->sIDText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->nIDText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->evdoBandText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->evdoFreqText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 123
    .restart local v0       #illegalInput:Z
    .restart local v1       #index:I
    .restart local v2       #length:I
    .restart local v4       #textInput:[Ljava/lang/String;
    :cond_6
    const/4 v0, 0x1

    .line 133
    .end local v2           #length:I
    :cond_7
    :goto_7
    if-eqz v0, :cond_9

    .line 135
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    invoke-direct {v5, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f060084

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v7, 0x7f060074

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 164
    :goto_8
    return-void

    .line 128
    .restart local v2       #length:I
    :cond_8
    const/4 v0, 0x1

    .line 129
    goto :goto_7

    .line 141
    .end local v2           #length:I
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enable=1 band_class="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cdma_freq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v12

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " evdo_band_class="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " evdo_freq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, res:Ljava/lang/String;
    const-string v5, "LockCDMAFre"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "res = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    invoke-static {v3}, Lcom/android/huawei/projectmenu/ProjectMenu;->lockCdmaFreq(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/huawei/projectmenu/LockFrequency;->lockSuccess:Z

    .line 153
    const-string v5, "###"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lockSuccess"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-boolean v7, v7, Lcom/android/huawei/projectmenu/LockFrequency;->lockSuccess:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    invoke-virtual {v5, v9}, Lcom/android/huawei/projectmenu/LockFrequency;->showDialog(I)V

    .line 156
    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->bandClassText:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->cdmaFreqText:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->sIDText:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->nIDText:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->evdoBandText:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v5, p0, Lcom/android/huawei/projectmenu/LockFrequency$2;->this$0:Lcom/android/huawei/projectmenu/LockFrequency;

    iget-object v5, v5, Lcom/android/huawei/projectmenu/LockFrequency;->evdoFreqText:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8
.end method
