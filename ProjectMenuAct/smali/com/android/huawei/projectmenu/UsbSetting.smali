.class public Lcom/android/huawei/projectmenu/UsbSetting;
.super Landroid/app/ListActivity;
.source "UsbSetting.java"


# static fields
.field private static final DIALOG_OTHER_USB:I = 0x2

.field private static final ITEM_GOOGLE_USB_POSITION:I = 0x1

.field private static final ITEM_MANUFACTURE_USB_POSITION:I = 0x2

.field private static final ITEM_NORMAL_USB_POSITION:I = 0x0

.field private static final ITEM_OTHER_USB_POSITION:I = 0x3

.field private static final PROP_KERNEL29_FILE_NAME:Ljava/lang/String; = "/sys/devices/platform/msm_hsusb_periphera/fixusb"

.field private static final PROP_KERNEL32_FILE_NAME:Ljava/lang/String; = "/sys/devices/platform/msm_hsusb/gadget/fixusb"

.field private static final TAG:Ljava/lang/String; = "UsbSetting"

.field private static final USB_GOOGLE:I = 0x1

.field private static final USB_GOOGLE_VALUE:I = 0x19

.field private static final USB_MANUFACTURE_TEST:I = 0x2

.field private static final USB_MANUFACTURE_TEST_VALUE:I = 0x0

.field private static final USB_NORMAL:I = 0x0

.field private static final USB_NORMAL_VALUE:I = 0x15

.field private static final USB_OTHER_TEST:I = 0x3

.field private static mItemCheckedIndex:I

.field private static mOtherPortNumber:I


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private mMenu:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 64
    sput v0, Lcom/android/huawei/projectmenu/UsbSetting;->mItemCheckedIndex:I

    .line 65
    sput v0, Lcom/android/huawei/projectmenu/UsbSetting;->mOtherPortNumber:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/huawei/projectmenu/UsbSetting;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/android/huawei/projectmenu/UsbSetting;->mItemCheckedIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/huawei/projectmenu/UsbSetting;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/huawei/projectmenu/UsbSetting;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/huawei/projectmenu/UsbSetting;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/huawei/projectmenu/UsbSetting;->getNumber(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/huawei/projectmenu/UsbSetting;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/huawei/projectmenu/UsbSetting;->writeFile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/huawei/projectmenu/UsbSetting;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/huawei/projectmenu/UsbSetting;->showDialogTips(ZI)V

    return-void
.end method

.method private getCurrentUsbPort()V
    .locals 17

    .prologue
    .line 263
    const/4 v10, 0x0

    .line 264
    .local v10, reFlag:Z
    const/4 v11, -0x1

    .line 266
    .local v11, reValue:I
    new-instance v9, Ljava/io/File;

    const-string v14, "/sys/devices/platform/msm_hsusb/gadget/fixusb"

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v9, propFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 268
    .local v4, fis:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 270
    .local v1, buffer:[B
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 271
    const/4 v10, 0x1

    .line 278
    :cond_0
    :goto_0
    if-eqz v10, :cond_2

    .line 280
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 281
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    const/16 v14, 0x200

    :try_start_1
    new-array v1, v14, [B

    .line 282
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .line 283
    .local v7, nNum:I
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v1}, Ljava/lang/String;-><init>([B)V

    .line 285
    .local v13, tmpStr:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 287
    .local v12, srcStr:Ljava/lang/String;
    const-string v14, "="

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v6, v14, 0x1

    .line 288
    .local v6, fromIndex:I
    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 289
    .local v3, endIndex:I
    invoke-virtual {v12, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 291
    .local v8, portStr:Ljava/lang/String;
    if-eqz v8, :cond_1

    if-lez v7, :cond_1

    .line 292
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v11

    .line 302
    :cond_1
    if-eqz v5, :cond_5

    .line 304
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 312
    .end local v3           #endIndex:I
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v6           #fromIndex:I
    .end local v7           #nNum:I
    .end local v8           #portStr:Ljava/lang/String;
    .end local v12           #srcStr:Ljava/lang/String;
    .end local v13           #tmpStr:Ljava/lang/String;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/android/huawei/projectmenu/UsbSetting;->setItemChecked(ZI)V

    .line 313
    return-void

    .line 273
    :cond_3
    new-instance v9, Ljava/io/File;

    .end local v9           #propFile:Ljava/io/File;
    const-string v14, "/sys/devices/platform/msm_hsusb_periphera/fixusb"

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .restart local v9       #propFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 275
    const/4 v10, 0x1

    goto :goto_0

    .line 305
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #endIndex:I
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #fromIndex:I
    .restart local v7       #nNum:I
    .restart local v8       #portStr:Ljava/lang/String;
    .restart local v12       #srcStr:Ljava/lang/String;
    .restart local v13       #tmpStr:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 306
    .local v2, e:Ljava/io/IOException;
    const-string v14, "UsbSetting"

    const-string v15, "file close error"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 307
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .line 295
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #endIndex:I
    .end local v6           #fromIndex:I
    .end local v7           #nNum:I
    .end local v8           #portStr:Ljava/lang/String;
    .end local v12           #srcStr:Ljava/lang/String;
    .end local v13           #tmpStr:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 296
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v10, 0x0

    .line 297
    :try_start_3
    const-string v14, "UsbSetting"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    if-eqz v4, :cond_2

    .line 304
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 305
    :catch_2
    move-exception v2

    .line 306
    .local v2, e:Ljava/io/IOException;
    const-string v14, "UsbSetting"

    const-string v15, "file close error"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 298
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 299
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    const/4 v10, 0x0

    .line 300
    :try_start_5
    const-string v14, "UsbSetting"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 302
    if-eqz v4, :cond_2

    .line 304
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 305
    :catch_4
    move-exception v2

    .line 306
    const-string v14, "UsbSetting"

    const-string v15, "file close error"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 302
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_4
    if-eqz v4, :cond_4

    .line 304
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 307
    :cond_4
    :goto_5
    throw v14

    .line 305
    :catch_5
    move-exception v2

    .line 306
    .restart local v2       #e:Ljava/io/IOException;
    const-string v15, "UsbSetting"

    const-string v16, "file close error"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 302
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v14

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 298
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 295
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #endIndex:I
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #fromIndex:I
    .restart local v7       #nNum:I
    .restart local v8       #portStr:Ljava/lang/String;
    .restart local v12       #srcStr:Ljava/lang/String;
    .restart local v13       #tmpStr:Ljava/lang/String;
    :cond_5
    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private getNumber(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 317
    const/4 v0, -0x1

    .line 318
    .local v0, reValue:I
    invoke-direct {p0, p1}, Lcom/android/huawei/projectmenu/UsbSetting;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 320
    if-ltz v0, :cond_0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 321
    :cond_0
    const/4 v0, -0x1

    .line 324
    :cond_1
    return v0
.end method

.method private iniListView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 93
    invoke-virtual {p0}, Lcom/android/huawei/projectmenu/UsbSetting;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/huawei/projectmenu/UsbSetting;->mListView:Landroid/widget/ListView;

    .line 95
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x109000f

    iget-object v2, p0, Lcom/android/huawei/projectmenu/UsbSetting;->mMenu:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/UsbSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/android/huawei/projectmenu/UsbSetting;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/huawei/projectmenu/UsbSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 101
    const-string v0, "UsbSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setItemChecked index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/huawei/projectmenu/UsbSetting;->mItemCheckedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/huawei/projectmenu/UsbSetting;->mListView:Landroid/widget/ListView;

    sget v1, Lcom/android/huawei/projectmenu/UsbSetting;->mItemCheckedIndex:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 103
    return-void
.end method

.method private isNumeric(Ljava/lang/String;)Z
    .locals 4
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 328
    const-string v2, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    :goto_0
    return v1

    .line 331
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, i:I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 332
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 336
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setItemChecked(ZI)V
    .locals 2
    .parameter "flag"
    .parameter "port"

    .prologue
    const/4 v1, 0x3

    .line 168
    if-eqz p1, :cond_0

    .line 169
    sparse-switch p2, :sswitch_data_0

    .line 182
    sput p2, Lcom/android/huawei/projectmenu/UsbSetting;->mOtherPortNumber:I

    .line 183
    sput v1, Lcom/android/huawei/projectmenu/UsbSetting;->mItemCheckedIndex:I

    .line 188
    :cond_0
    :goto_0
    sget v0, Lcom/android/huawei/projectmenu/UsbSetting;->mItemCheckedIndex:I

    if-eq v0, v1, :cond_1

    .line 189
    const/4 v0, -0x1

    sput v0, Lcom/android/huawei/projectmenu/UsbSetting;->mOtherPortNumber:I

    .line 191
    :cond_1
    return-void

    .line 173
    :sswitch_0
    const/4 v0, 0x0

    sput v0, Lcom/android/huawei/projectmenu/UsbSetting;->mItemCheckedIndex:I

    goto :goto_0

    .line 176
    :sswitch_1
    const/4 v0, 0x1

    sput v0, Lcom/android/huawei/projectmenu/UsbSetting;->mItemCheckedIndex:I

    goto :goto_0

    .line 179
    :sswitch_2
    const/4 v0, 0x2

    sput v0, Lcom/android/huawei/projectmenu/UsbSetting;->mItemCheckedIndex:I

    goto :goto_0

    .line 169
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x15 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method private showDialogTips(ZI)V
    .locals 3
    .parameter "flag"
    .parameter "port"

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/huawei/projectmenu/UsbSetting;->setItemChecked(ZI)V

    .line 201
    iget-object v0, p0, Lcom/android/huawei/projectmenu/UsbSetting;->mListView:Landroid/widget/ListView;

    sget v1, Lcom/android/huawei/projectmenu/UsbSetting;->mItemCheckedIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 202
    const-string v0, "UsbSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FLAG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Item Checked index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/huawei/projectmenu/UsbSetting;->mItemCheckedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    const v0, 0x7f06001c

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 209
    return-void

    .line 204
    :cond_0
    const v0, 0x7f06001d

    goto :goto_0
.end method

.method private showOtherDialog()V
    .locals 6

    .prologue
    .line 136
    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, content:Landroid/view/View;
    const v3, 0x7f070001

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 138
    .local v1, editTxt:Landroid/widget/EditText;
    const-string v2, ""

    .line 139
    .local v2, tmpInputStr:Ljava/lang/String;
    sget v3, Lcom/android/huawei/projectmenu/UsbSetting;->mOtherPortNumber:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/huawei/projectmenu/UsbSetting;->mOtherPortNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f06001a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060074

    new-instance v5, Lcom/android/huawei/projectmenu/UsbSetting$2;

    invoke-direct {v5, p0, v1}, Lcom/android/huawei/projectmenu/UsbSetting$2;-><init>(Lcom/android/huawei/projectmenu/UsbSetting;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060075

    new-instance v5, Lcom/android/huawei/projectmenu/UsbSetting$1;

    invoke-direct {v5, p0}, Lcom/android/huawei/projectmenu/UsbSetting$1;-><init>(Lcom/android/huawei/projectmenu/UsbSetting;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 165
    return-void
.end method

.method private writeFile(I)Z
    .locals 9
    .parameter "port"

    .prologue
    .line 217
    const/4 v5, 0x0

    .line 218
    .local v5, reFlag:Z
    new-instance v4, Ljava/io/File;

    const-string v6, "/sys/devices/platform/msm_hsusb/gadget/fixusb"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v4, propFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 221
    .local v2, fis:Ljava/io/FileOutputStream;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 222
    const-string v6, "UsbSetting"

    const-string v7, "KERNEL32 file can write"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v5, 0x1

    .line 231
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 233
    :try_start_0
    const-string v6, "UsbSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " file can write data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 235
    .end local v2           #fis:Ljava/io/FileOutputStream;
    .local v3, fis:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 236
    .local v0, buffer:[B
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 245
    if-eqz v3, :cond_4

    .line 246
    const-string v6, "UsbSetting"

    const-string v7, "file close"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 256
    .end local v0           #buffer:[B
    .end local v3           #fis:Ljava/io/FileOutputStream;
    .restart local v2       #fis:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v5

    .line 225
    :cond_2
    new-instance v4, Ljava/io/File;

    .end local v4           #propFile:Ljava/io/File;
    const-string v6, "/sys/devices/platform/msm_hsusb_periphera/fixusb"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .restart local v4       #propFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    const-string v6, "UsbSetting"

    const-string v7, "KERNEL29 file can write"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v5, 0x1

    goto :goto_0

    .line 249
    .end local v2           #fis:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #fis:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 250
    .local v1, e:Ljava/io/IOException;
    const-string v6, "UsbSetting"

    const-string v7, "file close error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 251
    .end local v3           #fis:Ljava/io/FileOutputStream;
    .restart local v2       #fis:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 238
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 239
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v5, 0x0

    .line 240
    :try_start_3
    const-string v6, "UsbSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 245
    if-eqz v2, :cond_1

    .line 246
    const-string v6, "UsbSetting"

    const-string v7, "file close"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 249
    :catch_2
    move-exception v1

    .line 250
    .local v1, e:Ljava/io/IOException;
    const-string v6, "UsbSetting"

    const-string v7, "file close error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 241
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 242
    .restart local v1       #e:Ljava/io/IOException;
    :goto_3
    const/4 v5, 0x0

    .line 243
    :try_start_5
    const-string v6, "UsbSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 245
    if-eqz v2, :cond_1

    .line 246
    const-string v6, "UsbSetting"

    const-string v7, "file close"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 249
    :catch_4
    move-exception v1

    .line 250
    const-string v6, "UsbSetting"

    const-string v7, "file close error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 245
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v2, :cond_3

    .line 246
    const-string v7, "UsbSetting"

    const-string v8, "file close"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 251
    :cond_3
    :goto_5
    throw v6

    .line 249
    :catch_5
    move-exception v1

    .line 250
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "UsbSetting"

    const-string v8, "file close error"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 245
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileOutputStream;
    .restart local v3       #fis:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileOutputStream;
    .restart local v2       #fis:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 241
    .end local v2           #fis:Ljava/io/FileOutputStream;
    .restart local v3       #fis:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileOutputStream;
    .restart local v2       #fis:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 238
    .end local v2           #fis:Ljava/io/FileOutputStream;
    .restart local v3       #fis:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileOutputStream;
    .restart local v2       #fis:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v2           #fis:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #fis:Ljava/io/FileOutputStream;
    :cond_4
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileOutputStream;
    .restart local v2       #fis:Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "UsbSetting"

    const-string v1, "onCreate is begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f060014

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/UsbSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f060015

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/UsbSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f060017

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/UsbSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f060019

    invoke-virtual {p0, v2}, Lcom/android/huawei/projectmenu/UsbSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/huawei/projectmenu/UsbSetting;->mMenu:[Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/UsbSetting;->getCurrentUsbPort()V

    .line 87
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/UsbSetting;->iniListView()V

    .line 88
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0x15

    const/4 v1, 0x0

    .line 107
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, reFlag:Z
    packed-switch p3, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 115
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/android/huawei/projectmenu/UsbSetting;->writeFile(I)Z

    move-result v0

    .line 116
    invoke-direct {p0, v0, v2}, Lcom/android/huawei/projectmenu/UsbSetting;->showDialogTips(ZI)V

    goto :goto_0

    .line 119
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/huawei/projectmenu/UsbSetting;->writeFile(I)Z

    move-result v0

    .line 120
    invoke-direct {p0, v0, v3}, Lcom/android/huawei/projectmenu/UsbSetting;->showDialogTips(ZI)V

    goto :goto_0

    .line 123
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/huawei/projectmenu/UsbSetting;->writeFile(I)Z

    move-result v0

    .line 124
    invoke-direct {p0, v0, v1}, Lcom/android/huawei/projectmenu/UsbSetting;->showDialogTips(ZI)V

    goto :goto_0

    .line 127
    :pswitch_3
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/UsbSetting;->showOtherDialog()V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
