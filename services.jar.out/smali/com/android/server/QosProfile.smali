.class public Lcom/android/server/QosProfile;
.super Ljava/lang/Object;
.source "QosProfile.java"


# static fields
.field private static final DBG:Z = true

.field static final ID:Ljava/lang/String; = "id"

.field static final QOS_FLOW_FILTER:Ljava/lang/String; = "QosFlowFilter"

.field static final QOS_POLICY:Ljava/lang/String; = "qosPolicy"

.field static final QOS_SPEC:Ljava/lang/String; = "QosSpec"

.field static final RAT:Ljava/lang/String; = "RAT"

.field static final ROLE:Ljava/lang/String; = "role"

.field static final ROLES_LIST:Ljava/lang/String; = "rolesList"

.field private static final TAG:Ljava/lang/String; = "QoSProfile"


# instance fields
.field private mQoSProfileList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/internal/telephony/QosSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/QosProfile;->mQoSProfileList:Ljava/util/Map;

    .line 69
    return-void
.end method


# virtual methods
.method public getQoSSpec(Ljava/lang/String;I)Lcom/android/internal/telephony/QosSpec;
    .locals 4
    .parameter "roleId"
    .parameter "ratId"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/server/QosProfile;->mQoSProfileList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/QosSpec;

    .line 150
    .local v0, qosSpec:Lcom/android/internal/telephony/QosSpec;
    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Lcom/android/internal/telephony/QosSpec;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/QosSpec;-><init>(Lcom/android/internal/telephony/QosSpec;)V

    .line 155
    :goto_0
    return-object v1

    .line 154
    :cond_0
    const-string v1, "QoSProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No QoSSpec found for RAT id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 31
    .parameter "xmlStream"

    .prologue
    .line 78
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 79
    .local v6, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/16 v17, 0x0

    .line 82
    .local v17, qosSpec:Lcom/android/internal/telephony/QosSpec;
    :try_start_0
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 83
    .local v3, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 84
    .local v4, dom:Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v26

    .line 87
    .local v26, root:Lorg/w3c/dom/Element;
    const-string v28, "role"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 88
    .local v25, roles:Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_4

    .line 89
    move-object/from16 v0, v25

    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    .line 90
    .local v23, role:Lorg/w3c/dom/Node;
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v28

    const-string v29, "id"

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    .line 93
    .local v24, roleId:Ljava/lang/String;
    check-cast v23, Lorg/w3c/dom/Element;

    .end local v23           #role:Lorg/w3c/dom/Node;
    const-string v28, "RAT"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 94
    .local v22, rats:Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, j:I
    move-object/from16 v18, v17

    .end local v17           #qosSpec:Lcom/android/internal/telephony/QosSpec;
    .local v18, qosSpec:Lcom/android/internal/telephony/QosSpec;
    :goto_1
    :try_start_1
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-ge v8, v0, :cond_3

    .line 95
    move-object/from16 v0, v22

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 96
    .local v20, rat:Lorg/w3c/dom/Node;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v28

    const-string v29, "id"

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 98
    .local v21, ratId:I
    new-instance v17, Lcom/android/internal/telephony/QosSpec;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/QosSpec;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    .end local v18           #qosSpec:Lcom/android/internal/telephony/QosSpec;
    .restart local v17       #qosSpec:Lcom/android/internal/telephony/QosSpec;
    :try_start_2
    const-string v28, "QoSProfile"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Creating QosSPec: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v28, "QoSProfile"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Role id:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " RAT id:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    check-cast v20, Lorg/w3c/dom/Element;

    .end local v20           #rat:Lorg/w3c/dom/Node;
    const-string v28, "QosSpec"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 104
    .local v19, qosSpecs:Lorg/w3c/dom/NodeList;
    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    check-cast v28, Lorg/w3c/dom/Element;

    const-string v29, "QosFlowFilter"

    invoke-interface/range {v28 .. v29}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 106
    .local v16, qosFlowFilters:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, k:I
    :goto_2
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-ge v9, v0, :cond_2

    .line 107
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 111
    .local v15, qosFlowFilter:Lorg/w3c/dom/Node;
    const-string v28, "QoSProfile"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Creating QoSPipe: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/QosSpec;->createPipe()Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v12

    .line 113
    .local v12, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    invoke-interface {v15}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 114
    .local v14, qosFields:Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, l:I
    :goto_3
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-ge v11, v0, :cond_1

    .line 115
    invoke-interface {v14, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 116
    .local v13, qosField:Lorg/w3c/dom/Node;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 117
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, key:Ljava/lang/String;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v27

    .line 119
    .local v27, value:Ljava/lang/String;
    const-string v28, "QoSProfile"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "key:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " value:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {v10}, Lcom/android/internal/telephony/QosSpec$QosSpecKey;->getKey(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    .line 114
    .end local v10           #key:Ljava/lang/String;
    .end local v27           #value:Ljava/lang/String;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 106
    .end local v13           #qosField:Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 127
    .end local v11           #l:I
    .end local v12           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    .end local v14           #qosFields:Lorg/w3c/dom/NodeList;
    .end local v15           #qosFlowFilter:Lorg/w3c/dom/Node;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QosProfile;->mQoSProfileList:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v18, v17

    .end local v17           #qosSpec:Lcom/android/internal/telephony/QosSpec;
    .restart local v18       #qosSpec:Lcom/android/internal/telephony/QosSpec;
    goto/16 :goto_1

    .line 88
    .end local v9           #k:I
    .end local v16           #qosFlowFilters:Lorg/w3c/dom/NodeList;
    .end local v19           #qosSpecs:Lorg/w3c/dom/NodeList;
    .end local v21           #ratId:I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v17, v18

    .end local v18           #qosSpec:Lcom/android/internal/telephony/QosSpec;
    .restart local v17       #qosSpec:Lcom/android/internal/telephony/QosSpec;
    goto/16 :goto_0

    .line 131
    .end local v3           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #dom:Lorg/w3c/dom/Document;
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v22           #rats:Lorg/w3c/dom/NodeList;
    .end local v24           #roleId:Ljava/lang/String;
    .end local v25           #roles:Lorg/w3c/dom/NodeList;
    .end local v26           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v5

    .line 132
    .local v5, e:Ljava/lang/Exception;
    :goto_4
    const-string v28, "QoSProfile"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Exception while parsing the QoS policy file: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    const/16 v28, 0x0

    .line 137
    .end local v5           #e:Ljava/lang/Exception;
    :goto_5
    return v28

    .restart local v3       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4       #dom:Lorg/w3c/dom/Document;
    .restart local v7       #i:I
    .restart local v25       #roles:Lorg/w3c/dom/NodeList;
    .restart local v26       #root:Lorg/w3c/dom/Element;
    :cond_4
    const/16 v28, 0x1

    goto :goto_5

    .line 131
    .end local v17           #qosSpec:Lcom/android/internal/telephony/QosSpec;
    .restart local v8       #j:I
    .restart local v18       #qosSpec:Lcom/android/internal/telephony/QosSpec;
    .restart local v22       #rats:Lorg/w3c/dom/NodeList;
    .restart local v24       #roleId:Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object/from16 v17, v18

    .end local v18           #qosSpec:Lcom/android/internal/telephony/QosSpec;
    .restart local v17       #qosSpec:Lcom/android/internal/telephony/QosSpec;
    goto :goto_4
.end method
