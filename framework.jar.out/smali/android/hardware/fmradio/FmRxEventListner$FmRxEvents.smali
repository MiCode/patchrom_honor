.class final enum Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;
.super Ljava/lang/Enum;
.source "FmRxEventListner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fmradio/FmRxEventListner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FmRxEvents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum ABOVE_TH_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum BELOW_TH_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum ERROR_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum MONO_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum PS_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum RAW_RDS_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum RDS_AVAL_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum RDS_NOT_AVAL_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum READY_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum RT_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum SCAN_NEXT_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum SEEK_COMPLETE_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum SIGNAL_UPDATE_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum STEREO_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum TAVARUA_EVT_NEW_AF_LIST:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum TAVARUA_EVT_NEW_SRCH_LIST:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

.field public static final enum TUNE_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "READY_EVENT"

    invoke-direct {v0, v1, v3}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->READY_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 41
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "TUNE_EVENT"

    invoke-direct {v0, v1, v4}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->TUNE_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 42
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "SEEK_COMPLETE_EVENT"

    invoke-direct {v0, v1, v5}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->SEEK_COMPLETE_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 43
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "SCAN_NEXT_EVENT"

    invoke-direct {v0, v1, v6}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->SCAN_NEXT_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 44
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "RAW_RDS_EVENT"

    invoke-direct {v0, v1, v7}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->RAW_RDS_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 45
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "RT_EVENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->RT_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 46
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "PS_EVENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->PS_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 47
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "ERROR_EVENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->ERROR_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 48
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "BELOW_TH_EVENT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->BELOW_TH_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 49
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "ABOVE_TH_EVENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->ABOVE_TH_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 50
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "STEREO_EVENT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->STEREO_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 51
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "MONO_EVENT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->MONO_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 52
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "RDS_AVAL_EVENT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->RDS_AVAL_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 53
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "RDS_NOT_AVAL_EVENT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->RDS_NOT_AVAL_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 54
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "TAVARUA_EVT_NEW_SRCH_LIST"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->TAVARUA_EVT_NEW_SRCH_LIST:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 55
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "TAVARUA_EVT_NEW_AF_LIST"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->TAVARUA_EVT_NEW_AF_LIST:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 56
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    const-string v1, "SIGNAL_UPDATE_EVENT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->SIGNAL_UPDATE_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    .line 39
    const/16 v0, 0x11

    new-array v0, v0, [Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    sget-object v1, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->READY_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->TUNE_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->SEEK_COMPLETE_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->SCAN_NEXT_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->RAW_RDS_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->RT_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->PS_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->ERROR_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->BELOW_TH_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->ABOVE_TH_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->STEREO_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->MONO_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->RDS_AVAL_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->RDS_NOT_AVAL_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->TAVARUA_EVT_NEW_SRCH_LIST:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->TAVARUA_EVT_NEW_AF_LIST:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->SIGNAL_UPDATE_EVENT:Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->$VALUES:[Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;
    .locals 1
    .parameter "name"

    .prologue
    .line 39
    const-class v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    return-object v0
.end method

.method public static values()[Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->$VALUES:[Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    invoke-virtual {v0}, [Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/fmradio/FmRxEventListner$FmRxEvents;

    return-object v0
.end method
