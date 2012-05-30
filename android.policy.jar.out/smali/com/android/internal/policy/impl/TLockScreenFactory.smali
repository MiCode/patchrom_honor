.class public Lcom/android/internal/policy/impl/TLockScreenFactory;
.super Ljava/lang/Object;
.source "TLockScreenFactory.java"


# static fields
.field public static final DBG:Z = true

.field private static final HUAWEI_2D_UNLOCK_PACKAGE_NAME:Ljava/lang/String; = "com.huawei.android.potterunlock"

.field public static final LOCKSCREEN_LAYOUT:Ljava/lang/String; = "lock_screen"

.field public static final LOCKSCREEN_LAYOUT_LAND:Ljava/lang/String; = "lock_screen_land"

.field private static final LOCKSCREEN_PACKAGE:Ljava/lang/String; = "lockscreen_package"

.field public static final LOCKSCRREN_ACTION:Ljava/lang/String; = "com.huawei.intent.action.LOCKSCREEN_SET"

.field public static final LOCKSCRREN_CATEGORY:Ljava/lang/String; = "com.huawei.intent.category.LOCKSCREEN"

.field public static final TAG:Ljava/lang/String; = "TLockScreenFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createContextWithPkg(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 189
    const-string v2, "TLockScreenFactory"

    const-string v3, "start to createContext with package"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    if-eqz p1, :cond_1

    .line 194
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 196
    .local v0, c:Landroid/content/Context;
    const-string v2, "TLockScreenFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package name is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v3, "TLockScreenFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Context gotten is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_0

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_1
    const-string v2, "TLockScreenFactory"

    const-string v3, "end createContext, "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-object v0

    .line 197
    :cond_0
    :try_start_1
    const-string v2, "not null"
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 199
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "TLockScreenFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "can not be found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v2, "TLockScreenFactory"

    const-string v3, "Context is set to the outer one."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x0

    .line 204
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_1

    .line 206
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_1
.end method

.method public static createLockScreenWidthPkg(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Configuration;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "packageName"
    .parameter "config"

    .prologue
    const/4 v5, 0x0

    .line 152
    const-string v6, "TLockScreenFactory"

    const-string v7, "start to create lock screen"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {p0, p1}, Lcom/android/internal/policy/impl/TLockScreenFactory;->createContextWithPkg(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 155
    .local v2, layoutContext:Landroid/content/Context;
    if-nez v2, :cond_0

    .line 184
    :goto_0
    return-object v5

    .line 159
    :cond_0
    const-string v6, "TLockScreenFactory"

    const-string v7, "start to create layout inflater for the context."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 161
    .local v1, inflater:Landroid/view/LayoutInflater;
    const-string v7, "TLockScreenFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "end create layout inflater for the context. inflater is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v1, :cond_1

    const-string v6, "null"

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :try_start_0
    const-string v6, "TLockScreenFactory"

    const-string v7, "start to set factory."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v6, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;

    invoke-direct {v6, p1}, Lcom/android/internal/policy/impl/TLayoutInflatorFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 168
    const-string v6, "TLockScreenFactory"

    const-string v7, "end set factory."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    :goto_2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 176
    .local v4, resources:Landroid/content/res/Resources;
    invoke-static {p2, p1}, Lcom/android/internal/policy/impl/TLockScreenFactory;->genLayoutResNameWithPkg(Landroid/content/res/Configuration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 179
    .local v3, layoutResId:I
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 181
    .local v5, v:Landroid/view/View;
    const-string v7, "TLockScreenFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "end create lock screen. v is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v5, :cond_2

    const-string v6, "null"

    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    .end local v3           #layoutResId:I
    .end local v4           #resources:Landroid/content/res/Resources;
    .end local v5           #v:Landroid/view/View;
    :cond_1
    const-string v6, "not null"

    goto :goto_1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 171
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 181
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v3       #layoutResId:I
    .restart local v4       #resources:Landroid/content/res/Resources;
    .restart local v5       #v:Landroid/view/View;
    :cond_2
    const-string v6, "not null"

    goto :goto_3
.end method

.method public static createUserDefinedLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)Landroid/view/View;
    .locals 7
    .parameter "c"
    .parameter "config"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "keyguardScreenCallback"

    .prologue
    .line 52
    const-string v4, "TLockScreenFactory"

    const-string v5, "start to create user-defined lock screen."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v3, 0x0

    .line 59
    .local v3, v:Landroid/view/View;
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/policy/impl/TLockScreenFactory;->getRecentLockScreenPkg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, strPkg:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 61
    invoke-static {p0, v1, p1}, Lcom/android/internal/policy/impl/TLockScreenFactory;->createLockScreenWidthPkg(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/Configuration;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 70
    .end local v1           #strPkg:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/android/internal/policy/impl/KeyguardScreen;

    if-nez v4, :cond_1

    .line 71
    const-string v4, "TLockScreenFactory"

    const-string v5, "The root view has not implements KeyguardScreen"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v3, 0x0

    .line 76
    :cond_1
    if-eqz v3, :cond_2

    .line 77
    instance-of v4, v3, Lcom/android/internal/policy/impl/TLockScreenConfig;

    if-eqz v4, :cond_3

    move-object v2, v3

    .line 78
    check-cast v2, Lcom/android/internal/policy/impl/TLockScreenConfig;

    .line 79
    .local v2, tConfig:Lcom/android/internal/policy/impl/TLockScreenConfig;
    invoke-interface {v2}, Lcom/android/internal/policy/impl/TLockScreenConfig;->startConfig()V

    .line 80
    invoke-interface {v2, p1}, Lcom/android/internal/policy/impl/TLockScreenConfig;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 81
    invoke-interface {v2, p2}, Lcom/android/internal/policy/impl/TLockScreenConfig;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 82
    invoke-interface {v2, p3}, Lcom/android/internal/policy/impl/TLockScreenConfig;->setUpdateMonitor(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 83
    invoke-interface {v2, p4}, Lcom/android/internal/policy/impl/TLockScreenConfig;->setCallback(Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 84
    invoke-interface {v2}, Lcom/android/internal/policy/impl/TLockScreenConfig;->finishConfig()V

    .line 91
    .end local v2           #tConfig:Lcom/android/internal/policy/impl/TLockScreenConfig;
    :cond_2
    :goto_1
    const-string v5, "TLockScreenFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user-defined lock screen created is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_4

    const-string v4, "null"

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-object v3

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v0           #e:Ljava/lang/Throwable;
    :cond_3
    const-string v4, "TLockScreenFactory"

    const-string v5, "The root view has not implements TLockScreenConfig"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v3, 0x0

    goto :goto_1

    .line 91
    :cond_4
    const-string v4, "successful"

    goto :goto_2
.end method

.method private static genLayoutResNameWithPkg(Landroid/content/res/Configuration;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "config"
    .parameter "packageName"

    .prologue
    .line 217
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":layout/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lock_screen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, strRes:Ljava/lang/String;
    :goto_0
    const-string v1, "TLockScreenFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Layout resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-object v0

    .line 220
    .end local v0           #strRes:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":layout/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lock_screen_land"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #strRes:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getRecentLockScreenPkg(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "c"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 97
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.huawei.intent.action.LOCKSCREEN_SET"

    invoke-direct {v3, v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 98
    .local v3, lsIntent:Landroid/content/Intent;
    const-string v8, "com.huawei.intent.category.LOCKSCREEN"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v8, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 101
    .local v2, installedLockScreens:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_1

    move v5, v7

    .line 103
    .local v5, size:I
    :goto_0
    if-ge v5, v9, :cond_2

    .line 104
    const-string v7, "TLockScreenFactory"

    const-string v8, "none user-defined lock screen package can be gotten for none such package is installed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    :goto_1
    return-object v6

    .line 101
    .end local v5           #size:I
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    .line 108
    .restart local v5       #size:I
    :cond_2
    if-ne v5, v9, :cond_5

    .line 110
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 111
    .local v1, info:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_3

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_3

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 115
    :cond_3
    const-string v7, "TLockScreenFactory"

    const-string v8, "none correct user-defined lock screen package can be gotten for the resolveInfo gotten is null."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 118
    :cond_4
    const-string v6, "TLockScreenFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user-defined lockscreen package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 129
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lockscreen_package"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, packName:Ljava/lang/String;
    if-nez v4, :cond_6

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lockscreen_package"

    invoke-static {v7, v8}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    :cond_6
    const-string v7, "TLockScreenFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lockscreen package in database: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-nez v4, :cond_7

    const-string v4, "com.huawei.android.potterunlock"

    .line 137
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    .line 138
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 139
    .restart local v1       #info:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_8

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_8

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 141
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto/16 :goto_1

    .line 137
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
