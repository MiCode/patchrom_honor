.class Lcom/android/internal/telephony/RIL_QosSpecKeys;
.super Ljava/lang/Object;
.source "QosSpec.java"


# static fields
.field public static final RIL_QOS_FILTER_DIRECTION:I = 0xa

.field public static final RIL_QOS_FILTER_INDEX:I = 0x8

.field public static final RIL_QOS_FILTER_IPV4_DESTINATION_ADDR:I = 0xc

.field public static final RIL_QOS_FILTER_IPV4_SOURCE_ADDR:I = 0xb

.field public static final RIL_QOS_FILTER_IPV4_TOS:I = 0xd

.field public static final RIL_QOS_FILTER_IPV4_TOS_MASK:I = 0xe

.field public static final RIL_QOS_FILTER_IPV6_DESTINATION_ADDR:I = 0x19

.field public static final RIL_QOS_FILTER_IPV6_FLOW_LABEL:I = 0x1b

.field public static final RIL_QOS_FILTER_IPV6_SOURCE_ADDR:I = 0x18

.field public static final RIL_QOS_FILTER_IPV6_TRAFFIC_CLASS:I = 0x1a

.field public static final RIL_QOS_FILTER_IPVERSION:I = 0x9

.field public static final RIL_QOS_FILTER_IP_NEXT_HEADER_PROTOCOL:I = 0x17

.field public static final RIL_QOS_FILTER_TCP_DESTINATION_PORT_RANGE:I = 0x12

.field public static final RIL_QOS_FILTER_TCP_DESTINATION_PORT_START:I = 0x11

.field public static final RIL_QOS_FILTER_TCP_SOURCE_PORT_RANGE:I = 0x10

.field public static final RIL_QOS_FILTER_TCP_SOURCE_PORT_START:I = 0xf

.field public static final RIL_QOS_FILTER_UDP_DESTINATION_PORT_RANGE:I = 0x16

.field public static final RIL_QOS_FILTER_UDP_DESTINATION_PORT_START:I = 0x15

.field public static final RIL_QOS_FILTER_UDP_SOURCE_PORT_RANGE:I = 0x14

.field public static final RIL_QOS_FILTER_UDP_SOURCE_PORT_START:I = 0x13

.field public static final RIL_QOS_FLOW_3GPP2_PRIORITY:I = 0x7

.field public static final RIL_QOS_FLOW_3GPP2_PROFILE_ID:I = 0x6

.field public static final RIL_QOS_FLOW_DATA_RATE_MAX:I = 0x4

.field public static final RIL_QOS_FLOW_DATA_RATE_MIN:I = 0x3

.field public static final RIL_QOS_FLOW_DIRECTION:I = 0x1

.field public static final RIL_QOS_FLOW_LATENCY:I = 0x5

.field public static final RIL_QOS_FLOW_TRAFFIC_CLASS:I = 0x2

.field public static final RIL_QOS_SPEC_INDEX:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .parameter "val"

    .prologue
    .line 143
    packed-switch p0, :pswitch_data_0

    .line 201
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 145
    :pswitch_0
    const-string v0, "RIL_QOS_SPEC_INDEX"

    goto :goto_0

    .line 147
    :pswitch_1
    const-string v0, "RIL_QOS_FLOW_DIRECTION"

    goto :goto_0

    .line 149
    :pswitch_2
    const-string v0, "RIL_QOS_FLOW_TRAFFIC_CLASS"

    goto :goto_0

    .line 151
    :pswitch_3
    const-string v0, "RIL_QOS_FLOW_DATA_RATE_MIN"

    goto :goto_0

    .line 153
    :pswitch_4
    const-string v0, "RIL_QOS_FLOW_DATA_RATE_MAX"

    goto :goto_0

    .line 155
    :pswitch_5
    const-string v0, "RIL_QOS_FLOW_LATENCY"

    goto :goto_0

    .line 157
    :pswitch_6
    const-string v0, "RIL_QOS_FLOW_3GPP2_PROFILE_ID"

    goto :goto_0

    .line 159
    :pswitch_7
    const-string v0, "RIL_QOS_FLOW_3GPP2_PRIORITY"

    goto :goto_0

    .line 161
    :pswitch_8
    const-string v0, "RIL_QOS_FILTER_INDEX"

    goto :goto_0

    .line 163
    :pswitch_9
    const-string v0, "RIL_QOS_FILTER_IPVERSION"

    goto :goto_0

    .line 165
    :pswitch_a
    const-string v0, "RIL_QOS_FILTER_DIRECTION"

    goto :goto_0

    .line 167
    :pswitch_b
    const-string v0, "RIL_QOS_FILTER_IPV4_SOURCE_ADDR"

    goto :goto_0

    .line 169
    :pswitch_c
    const-string v0, "RIL_QOS_FILTER_IPV4_DESTINATION_ADDR"

    goto :goto_0

    .line 171
    :pswitch_d
    const-string v0, "RIL_QOS_FILTER_IPV4_TOS"

    goto :goto_0

    .line 173
    :pswitch_e
    const-string v0, "RIL_QOS_FILTER_IPV4_TOS_MASK"

    goto :goto_0

    .line 175
    :pswitch_f
    const-string v0, "RIL_QOS_FILTER_TCP_SOURCE_PORT_START"

    goto :goto_0

    .line 177
    :pswitch_10
    const-string v0, "RIL_QOS_FILTER_TCP_SOURCE_PORT_RANGE"

    goto :goto_0

    .line 179
    :pswitch_11
    const-string v0, "RIL_QOS_FILTER_TCP_DESTINATION_PORT_START"

    goto :goto_0

    .line 181
    :pswitch_12
    const-string v0, "RIL_QOS_FILTER_TCP_DESTINATION_PORT_RANGE"

    goto :goto_0

    .line 183
    :pswitch_13
    const-string v0, "RIL_QOS_FILTER_UDP_SOURCE_PORT_START"

    goto :goto_0

    .line 185
    :pswitch_14
    const-string v0, "RIL_QOS_FILTER_UDP_SOURCE_PORT_RANGE"

    goto :goto_0

    .line 187
    :pswitch_15
    const-string v0, "RIL_QOS_FILTER_UDP_DESTINATION_PORT_START"

    goto :goto_0

    .line 189
    :pswitch_16
    const-string v0, "RIL_QOS_FILTER_UDP_DESTINATION_PORT_RANGE"

    goto :goto_0

    .line 191
    :pswitch_17
    const-string v0, "RIL_QOS_FILTER_IP_NEXT_HEADER_PROTOCOL"

    goto :goto_0

    .line 193
    :pswitch_18
    const-string v0, "RIL_QOS_FILTER_IPV6_SOURCE_ADDR"

    goto :goto_0

    .line 195
    :pswitch_19
    const-string v0, "RIL_QOS_FILTER_IPV6_DESTINATION_ADDR"

    goto :goto_0

    .line 197
    :pswitch_1a
    const-string v0, "RIL_QOS_FILTER_IPV6_TRAFFIC_CLASS"

    goto :goto_0

    .line 199
    :pswitch_1b
    const-string v0, "RIL_QOS_FILTER_IPV6_FLOW_LABEL"

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method
