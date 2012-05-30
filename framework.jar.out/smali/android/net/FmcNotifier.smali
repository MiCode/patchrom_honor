.class public interface abstract Landroid/net/FmcNotifier;
.super Ljava/lang/Object;
.source "FmcNotifier.java"


# static fields
.field public static final FMC_STATUS_CLOSED:I = 0x1

.field public static final FMC_STATUS_DS_NOT_AVAIL:I = 0x7

.field public static final FMC_STATUS_ENABLED:I = 0x0

.field public static final FMC_STATUS_FAILURE:I = 0x5

.field public static final FMC_STATUS_INITIALIZED:I = 0x2

.field public static final FMC_STATUS_MAX:I = 0xa

.field public static final FMC_STATUS_NOT_AVAIL:I = 0x6

.field public static final FMC_STATUS_NOT_YET_STARTED:I = 0x4

.field public static final FMC_STATUS_REGISTRATION_SUCCESS:I = 0x9

.field public static final FMC_STATUS_RETRIED:I = 0x8

.field public static final FMC_STATUS_SHUTTING_DOWN:I = 0x3

.field public static final FMC_STATUS_STR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Closed"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Initialized..."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Shutting down..."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Has not started"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Failure"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Fmc not available"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DS not available"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "OoC - retry..."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Registration success"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Undefined FMC Status"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/FmcNotifier;->FMC_STATUS_STR:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onFmcStatus(I)V
.end method
