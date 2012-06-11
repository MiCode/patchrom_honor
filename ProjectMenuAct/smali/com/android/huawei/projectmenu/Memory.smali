.class public Lcom/android/huawei/projectmenu/Memory;
.super Landroid/preference/PreferenceActivity;
.source "Memory.java"


# static fields
.field private static final SDCARD_DEV_PATH:Ljava/lang/String; = "/dev/hw_extern_sdcard"

.field private static final SDCARD_STATE:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "Memory"


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSdFormat:Landroid/preference/Preference;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/huawei/projectmenu/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 104
    new-instance v0, Lcom/android/huawei/projectmenu/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/huawei/projectmenu/Memory$1;-><init>(Lcom/android/huawei/projectmenu/Memory;)V

    iput-object v0, p0, Lcom/android/huawei/projectmenu/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Lcom/android/huawei/projectmenu/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/huawei/projectmenu/Memory$2;-><init>(Lcom/android/huawei/projectmenu/Memory;)V

    iput-object v0, p0, Lcom/android/huawei/projectmenu/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/huawei/projectmenu/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/Memory;->updateMemoryStatus()V

    return-void
.end method

.method private doUnmount(Z)V
    .locals 4
    .parameter "force"

    .prologue
    .line 249
    const v2, 0x7f0600b7

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 250
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 252
    .local v1, mountService:Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, extStoragePath:Ljava/lang/String;
    return-void
.end method

.method private hasAppsAccessingStorage()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 231
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, extStoragePath:Ljava/lang/String;
    const-string v7, "mount"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    .line 234
    .local v3, mountService:Landroid/os/storage/IMountService;
    const/4 v4, 0x0

    .line 235
    .local v4, showPidDialog:Z
    invoke-interface {v3, v1}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v5

    .line 236
    .local v5, stUsers:[I
    if-eqz v5, :cond_1

    array-length v7, v5

    if-lez v7, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v6

    .line 239
    :cond_1
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lcom/android/huawei/projectmenu/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 240
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v2

    .line 241
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_0

    .line 244
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected static isExistsExternalStorage()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 281
    const/4 v6, 0x0

    .line 283
    .local v6, reFlag:Z
    new-instance v5, Ljava/io/File;

    const-string v9, "/dev/hw_extern_sdcard"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v5, propFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 285
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 287
    .local v0, buffer:[B
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    move v6, v8

    .line 319
    .end local v6           #reFlag:Z
    :cond_1
    :goto_0
    return v6

    .line 292
    .restart local v6       #reFlag:Z
    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 293
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v8, 0x2

    :try_start_1
    new-array v0, v8, [B

    .line 294
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 295
    .local v4, nNum:I
    const-string v8, "Memory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read size nNum= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v7, v0, v8, v9}, Ljava/lang/String;-><init>([BII)V

    .line 297
    .local v7, tmpStr:Ljava/lang/String;
    const-string v8, "Memory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ExternalStorage state= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 299
    const/4 v6, 0x1

    .line 301
    :cond_3
    const-string v8, "Memory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " ExternalStorage reFlag= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 310
    if-eqz v3, :cond_5

    .line 312
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 315
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 313
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 314
    .local v1, e:Ljava/io/IOException;
    const-string v8, "Memory"

    const-string v9, "file close error"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 315
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 303
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #nNum:I
    .end local v7           #tmpStr:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 304
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v6, 0x0

    .line 305
    :try_start_3
    const-string v8, "Memory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 310
    if-eqz v2, :cond_1

    .line 312
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 313
    :catch_2
    move-exception v1

    .line 314
    .local v1, e:Ljava/io/IOException;
    const-string v8, "Memory"

    const-string v9, "file close error"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 306
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 307
    .restart local v1       #e:Ljava/io/IOException;
    :goto_2
    const/4 v6, 0x0

    .line 308
    :try_start_5
    const-string v8, "Memory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 310
    if-eqz v2, :cond_1

    .line 312
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 313
    :catch_4
    move-exception v1

    .line 314
    const-string v8, "Memory"

    const-string v9, "file close error"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 310
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v2, :cond_4

    .line 312
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 315
    :cond_4
    :goto_4
    throw v8

    .line 313
    :catch_5
    move-exception v1

    .line 314
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "Memory"

    const-string v10, "file close error"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 310
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 306
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 303
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #nNum:I
    .restart local v7       #tmpStr:Ljava/lang/String;
    :cond_5
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 267
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 270
    .local v0, mountService:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_0

    .line 271
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 277
    :goto_0
    return-void

    .line 273
    :cond_0
    const-string v1, "Memory"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private unmount()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/huawei/projectmenu/Memory;->doUnmount(Z)V

    .line 228
    return-void
.end method

.method private updateMemoryStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, status:Ljava/lang/String;
    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const-string v1, "mounted"

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/android/huawei/projectmenu/Memory;->mSdFormat:Landroid/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 130
    const-string v2, "hw_internal_sd"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 131
    .local v0, hasInternalSdcard:Z
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/huawei/projectmenu/Memory;->isExistsExternalStorage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/android/huawei/projectmenu/Memory;->mSdFormat:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/android/huawei/projectmenu/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 62
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/huawei/projectmenu/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 63
    iget-object v0, p0, Lcom/android/huawei/projectmenu/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/huawei/projectmenu/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 66
    :cond_0
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/Memory;->addPreferencesFromResource(I)V

    .line 71
    const-string v0, "memory_sd_format"

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/huawei/projectmenu/Memory;->mSdFormat:Landroid/preference/Preference;

    .line 75
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/huawei/projectmenu/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/huawei/projectmenu/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/huawei/projectmenu/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/huawei/projectmenu/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 101
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 102
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 93
    iget-object v0, p0, Lcom/android/huawei/projectmenu/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/Memory;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 94
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 183
    iget-object v2, p0, Lcom/android/huawei/projectmenu/Memory;->mSdFormat:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0}, Lcom/android/huawei/projectmenu/Memory;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "storage_volume"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 189
    .local v1, storageVolume:Landroid/os/storage/StorageVolume;
    const-string v2, "storage_volume"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/huawei/projectmenu/Memory;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 208
    invoke-virtual {p0}, Lcom/android/huawei/projectmenu/Memory;->finish()V

    .line 211
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/huawei/projectmenu/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/huawei/projectmenu/Memory;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    invoke-direct {p0}, Lcom/android/huawei/projectmenu/Memory;->updateMemoryStatus()V

    .line 88
    return-void
.end method
