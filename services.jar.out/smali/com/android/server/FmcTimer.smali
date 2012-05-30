.class public Lcom/android/server/FmcTimer;
.super Ljava/lang/Object;
.source "FmcTimer.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "FmcTimer"

.field private static instance:Lcom/android/server/FmcTimer;

.field private static timer:Ljava/util/Timer;

.field private static timerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/android/server/FmcTimer;->timerId:I

    .line 45
    sput-object v1, Lcom/android/server/FmcTimer;->instance:Lcom/android/server/FmcTimer;

    .line 46
    sput-object v1, Lcom/android/server/FmcTimer;->timer:Ljava/util/Timer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "FmcTimer"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method protected static create()Lcom/android/server/FmcTimer;
    .locals 2

    .prologue
    .line 55
    const-string v0, "FmcTimer"

    const-string v1, "create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/android/server/FmcTimer;->timerId:I

    .line 59
    sget-object v0, Lcom/android/server/FmcTimer;->instance:Lcom/android/server/FmcTimer;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "FmcTimer"

    const-string v1, "create instance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Lcom/android/server/FmcTimer;

    invoke-direct {v0}, Lcom/android/server/FmcTimer;-><init>()V

    sput-object v0, Lcom/android/server/FmcTimer;->instance:Lcom/android/server/FmcTimer;

    .line 66
    :goto_0
    sget-object v0, Lcom/android/server/FmcTimer;->instance:Lcom/android/server/FmcTimer;

    return-object v0

    .line 63
    :cond_0
    const-string v0, "FmcTimer"

    const-string v1, "create instance is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected clearTimer()Z
    .locals 2

    .prologue
    .line 105
    const-string v0, "FmcTimer"

    const-string v1, "clearTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lcom/android/server/FmcTimer;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 108
    const-string v0, "FmcTimer"

    const-string v1, "clearTimer timer object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0

    .line 112
    :cond_0
    const-string v0, "FmcTimer"

    const-string v1, "clearTimer canceling timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v0, Lcom/android/server/FmcTimer;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/FmcTimer;->timer:Ljava/util/Timer;

    .line 118
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected startTimer(Ljava/util/TimerTask;I)Z
    .locals 5
    .parameter "callback"
    .parameter "timeout"

    .prologue
    const/4 v1, 0x0

    .line 74
    const-string v2, "FmcTimer"

    const-string v3, "startTimer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v2, Lcom/android/server/FmcTimer;->timer:Ljava/util/Timer;

    if-nez v2, :cond_1

    .line 76
    const-string v1, "FmcTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTimer creating new timer id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/FmcTimer;->timerId:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/android/server/FmcTimer;->timerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/android/server/FmcTimer;->timer:Ljava/util/Timer;

    .line 90
    :cond_0
    :try_start_0
    const-string v1, "FmcTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTimer scheduling timer timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v1, Lcom/android/server/FmcTimer;->timer:Ljava/util/Timer;

    int-to-long v2, p2

    invoke-virtual {v1, p1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 79
    :cond_1
    if-nez p1, :cond_2

    .line 80
    const-string v2, "FmcTimer"

    const-string v3, "startTimer callback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 83
    :cond_2
    if-nez p2, :cond_0

    .line 84
    const-string v2, "FmcTimer"

    const-string v3, "startTimer timeout is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "FmcTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "FmcTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FmcTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
