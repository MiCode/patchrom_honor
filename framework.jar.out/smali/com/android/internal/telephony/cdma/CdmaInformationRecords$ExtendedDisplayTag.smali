.class public final enum Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;
.super Ljava/lang/Enum;
.source "CdmaInformationRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtendedDisplayTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_ACCUMULATED_DIGITS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_BLANK:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_CALLED_ADDRESS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_CALLED_PARTY_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_CALLING_ADDRESS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_CALLING_PARTY_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_CALL_APPEARANCE_ID:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_CAUSE:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_CONNECTED_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_CONNECTED_NUMBER:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_CONTINUATION:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_DATETIME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_FEATURE_ADDRESS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_INBAND:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_NOTIFICATION_INDICATOR:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_ORIGINAL_CALLED_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_ORIGINAL_CALLED_NUMBER:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_ORIGINATING_RESTRICTIONS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_PROGRESS_INDICATOR:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_PROMPT:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_REASON:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_REDIRECTING_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_REDIRECTING_NUMBER:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_REDIRECTION_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_REDIRECTION_NUMBER:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_SKIP:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_STATUS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

.field public static final enum X_DISPLAY_TAG_TEXT:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;


# instance fields
.field private final mValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_BLANK"

    const/16 v2, -0x80

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_BLANK:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 193
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_SKIP"

    const/16 v2, -0x7f

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_SKIP:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 194
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_CONTINUATION"

    const/16 v2, -0x7e

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CONTINUATION:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 195
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_CALLED_ADDRESS"

    const/16 v2, -0x7d

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CALLED_ADDRESS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 196
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_CAUSE"

    const/16 v2, -0x7c

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CAUSE:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 197
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_PROGRESS_INDICATOR"

    const/4 v2, 0x5

    const/16 v3, -0x7b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_PROGRESS_INDICATOR:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 198
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_NOTIFICATION_INDICATOR"

    const/4 v2, 0x6

    const/16 v3, -0x7a

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_NOTIFICATION_INDICATOR:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 199
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_PROMPT"

    const/4 v2, 0x7

    const/16 v3, -0x79

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_PROMPT:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 200
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_ACCUMULATED_DIGITS"

    const/16 v2, 0x8

    const/16 v3, -0x78

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_ACCUMULATED_DIGITS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 201
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_STATUS"

    const/16 v2, 0x9

    const/16 v3, -0x77

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_STATUS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 202
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_INBAND"

    const/16 v2, 0xa

    const/16 v3, -0x76

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_INBAND:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 203
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_CALLING_ADDRESS"

    const/16 v2, 0xb

    const/16 v3, -0x75

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CALLING_ADDRESS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 204
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_REASON"

    const/16 v2, 0xc

    const/16 v3, -0x74

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_REASON:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 205
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_CALLING_PARTY_NAME"

    const/16 v2, 0xd

    const/16 v3, -0x73

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CALLING_PARTY_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 206
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_CALLED_PARTY_NAME"

    const/16 v2, 0xe

    const/16 v3, -0x72

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CALLED_PARTY_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 207
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_ORIGINAL_CALLED_NAME"

    const/16 v2, 0xf

    const/16 v3, -0x71

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_ORIGINAL_CALLED_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 208
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_REDIRECTING_NAME"

    const/16 v2, 0x10

    const/16 v3, -0x70

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_REDIRECTING_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 209
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_CONNECTED_NAME"

    const/16 v2, 0x11

    const/16 v3, -0x6f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CONNECTED_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 210
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_ORIGINATING_RESTRICTIONS"

    const/16 v2, 0x12

    const/16 v3, -0x6e

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_ORIGINATING_RESTRICTIONS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 211
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_DATETIME"

    const/16 v2, 0x13

    const/16 v3, -0x6d

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_DATETIME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 212
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_CALL_APPEARANCE_ID"

    const/16 v2, 0x14

    const/16 v3, -0x6c

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CALL_APPEARANCE_ID:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 213
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_FEATURE_ADDRESS"

    const/16 v2, 0x15

    const/16 v3, -0x6b

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_FEATURE_ADDRESS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 214
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_REDIRECTION_NAME"

    const/16 v2, 0x16

    const/16 v3, -0x6a

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_REDIRECTION_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 215
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_REDIRECTION_NUMBER"

    const/16 v2, 0x17

    const/16 v3, -0x69

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_REDIRECTION_NUMBER:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 216
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_REDIRECTING_NUMBER"

    const/16 v2, 0x18

    const/16 v3, -0x68

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_REDIRECTING_NUMBER:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 217
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_ORIGINAL_CALLED_NUMBER"

    const/16 v2, 0x19

    const/16 v3, -0x67

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_ORIGINAL_CALLED_NUMBER:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 218
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_CONNECTED_NUMBER"

    const/16 v2, 0x1a

    const/16 v3, -0x66

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CONNECTED_NUMBER:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 219
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    const-string v1, "X_DISPLAY_TAG_TEXT"

    const/16 v2, 0x1b

    const/16 v3, -0x62

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_TEXT:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    .line 191
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_BLANK:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_SKIP:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CONTINUATION:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CALLED_ADDRESS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CAUSE:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_PROGRESS_INDICATOR:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_NOTIFICATION_INDICATOR:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_PROMPT:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_ACCUMULATED_DIGITS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_STATUS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_INBAND:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CALLING_ADDRESS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_REASON:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CALLING_PARTY_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CALLED_PARTY_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_ORIGINAL_CALLED_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_REDIRECTING_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CONNECTED_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_ORIGINATING_RESTRICTIONS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_DATETIME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CALL_APPEARANCE_ID:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_FEATURE_ADDRESS:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_REDIRECTION_NAME:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_REDIRECTION_NUMBER:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_REDIRECTING_NUMBER:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_ORIGINAL_CALLED_NUMBER:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_CONNECTED_NUMBER:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->X_DISPLAY_TAG_TEXT:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->$VALUES:[Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 224
    iput-byte p3, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->mValue:B

    .line 225
    return-void
.end method

.method public static fromByte(B)Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;
    .locals 8
    .parameter "value"

    .prologue
    .line 243
    const-string v5, "DisplayTag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DisplayTag.fromByte("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v3, 0x0

    .line 245
    .local v3, ret:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->values()[Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 246
    .local v4, tag:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;
    iget-byte v5, v4, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->mValue:B

    if-ne v5, p0, :cond_0

    .line 247
    move-object v3, v4

    .line 245
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v4           #tag:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;
    :cond_1
    const-string v5, "DisplayTag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tag for byte "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;
    .locals 1
    .parameter "name"

    .prologue
    .line 191
    const-class v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->$VALUES:[Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    return-object v0
.end method


# virtual methods
.method public asIndex()I
    .locals 4

    .prologue
    .line 233
    iget-byte v1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->mValue:B

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v0, v1, -0x81

    .line 234
    .local v0, ret:I
    const-string v1, "DisplayTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return v0
.end method

.method public value()B
    .locals 1

    .prologue
    .line 226
    iget-byte v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->mValue:B

    return v0
.end method
