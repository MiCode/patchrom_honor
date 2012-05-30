.class public final enum Landroid/telephony/EmergencyMessage$Alerts;
.super Ljava/lang/Enum;
.source "EmergencyMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/EmergencyMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alerts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/telephony/EmergencyMessage$Alerts;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/EmergencyMessage$Alerts;

.field public static final enum CMAS_AMBER:Landroid/telephony/EmergencyMessage$Alerts;

.field public static final enum CMAS_EXTREME:Landroid/telephony/EmergencyMessage$Alerts;

.field public static final enum CMAS_PRESIDENTIAL:Landroid/telephony/EmergencyMessage$Alerts;

.field public static final enum CMAS_SEVERE:Landroid/telephony/EmergencyMessage$Alerts;

.field public static final enum ETWS_EARTHQUAKE:Landroid/telephony/EmergencyMessage$Alerts;

.field public static final enum ETWS_EARTHQUAKE_AND_TSUNAMI:Landroid/telephony/EmergencyMessage$Alerts;

.field public static final enum ETWS_TSUNAMI:Landroid/telephony/EmergencyMessage$Alerts;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Landroid/telephony/EmergencyMessage$Alerts;

    const-string v1, "CMAS_PRESIDENTIAL"

    invoke-direct {v0, v1, v3}, Landroid/telephony/EmergencyMessage$Alerts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/EmergencyMessage$Alerts;->CMAS_PRESIDENTIAL:Landroid/telephony/EmergencyMessage$Alerts;

    .line 60
    new-instance v0, Landroid/telephony/EmergencyMessage$Alerts;

    const-string v1, "CMAS_EXTREME"

    invoke-direct {v0, v1, v4}, Landroid/telephony/EmergencyMessage$Alerts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/EmergencyMessage$Alerts;->CMAS_EXTREME:Landroid/telephony/EmergencyMessage$Alerts;

    .line 61
    new-instance v0, Landroid/telephony/EmergencyMessage$Alerts;

    const-string v1, "CMAS_SEVERE"

    invoke-direct {v0, v1, v5}, Landroid/telephony/EmergencyMessage$Alerts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/EmergencyMessage$Alerts;->CMAS_SEVERE:Landroid/telephony/EmergencyMessage$Alerts;

    .line 62
    new-instance v0, Landroid/telephony/EmergencyMessage$Alerts;

    const-string v1, "CMAS_AMBER"

    invoke-direct {v0, v1, v6}, Landroid/telephony/EmergencyMessage$Alerts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/EmergencyMessage$Alerts;->CMAS_AMBER:Landroid/telephony/EmergencyMessage$Alerts;

    .line 63
    new-instance v0, Landroid/telephony/EmergencyMessage$Alerts;

    const-string v1, "ETWS_EARTHQUAKE"

    invoke-direct {v0, v1, v7}, Landroid/telephony/EmergencyMessage$Alerts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/EmergencyMessage$Alerts;->ETWS_EARTHQUAKE:Landroid/telephony/EmergencyMessage$Alerts;

    .line 64
    new-instance v0, Landroid/telephony/EmergencyMessage$Alerts;

    const-string v1, "ETWS_TSUNAMI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/telephony/EmergencyMessage$Alerts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/EmergencyMessage$Alerts;->ETWS_TSUNAMI:Landroid/telephony/EmergencyMessage$Alerts;

    .line 65
    new-instance v0, Landroid/telephony/EmergencyMessage$Alerts;

    const-string v1, "ETWS_EARTHQUAKE_AND_TSUNAMI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/telephony/EmergencyMessage$Alerts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/EmergencyMessage$Alerts;->ETWS_EARTHQUAKE_AND_TSUNAMI:Landroid/telephony/EmergencyMessage$Alerts;

    .line 58
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/telephony/EmergencyMessage$Alerts;

    sget-object v1, Landroid/telephony/EmergencyMessage$Alerts;->CMAS_PRESIDENTIAL:Landroid/telephony/EmergencyMessage$Alerts;

    aput-object v1, v0, v3

    sget-object v1, Landroid/telephony/EmergencyMessage$Alerts;->CMAS_EXTREME:Landroid/telephony/EmergencyMessage$Alerts;

    aput-object v1, v0, v4

    sget-object v1, Landroid/telephony/EmergencyMessage$Alerts;->CMAS_SEVERE:Landroid/telephony/EmergencyMessage$Alerts;

    aput-object v1, v0, v5

    sget-object v1, Landroid/telephony/EmergencyMessage$Alerts;->CMAS_AMBER:Landroid/telephony/EmergencyMessage$Alerts;

    aput-object v1, v0, v6

    sget-object v1, Landroid/telephony/EmergencyMessage$Alerts;->ETWS_EARTHQUAKE:Landroid/telephony/EmergencyMessage$Alerts;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/telephony/EmergencyMessage$Alerts;->ETWS_TSUNAMI:Landroid/telephony/EmergencyMessage$Alerts;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/telephony/EmergencyMessage$Alerts;->ETWS_EARTHQUAKE_AND_TSUNAMI:Landroid/telephony/EmergencyMessage$Alerts;

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/EmergencyMessage$Alerts;->$VALUES:[Landroid/telephony/EmergencyMessage$Alerts;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/EmergencyMessage$Alerts;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Landroid/telephony/EmergencyMessage$Alerts;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/EmergencyMessage$Alerts;

    return-object v0
.end method

.method public static values()[Landroid/telephony/EmergencyMessage$Alerts;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/telephony/EmergencyMessage$Alerts;->$VALUES:[Landroid/telephony/EmergencyMessage$Alerts;

    invoke-virtual {v0}, [Landroid/telephony/EmergencyMessage$Alerts;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/EmergencyMessage$Alerts;

    return-object v0
.end method
