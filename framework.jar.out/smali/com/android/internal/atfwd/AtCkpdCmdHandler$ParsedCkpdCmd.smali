.class Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
.super Ljava/lang/Object;
.source "AtCkpdCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/atfwd/AtCkpdCmdHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParsedCkpdCmd"
.end annotation


# instance fields
.field private mEvents:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

.field private mPauseTime:J

.field private mPressTime:J

.field final synthetic this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/atfwd/AtCkpdCmdHandler;Lcom/android/internal/atfwd/AtCmd;)V
    .locals 2
    .parameter
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
        }
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

    .line 81
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPressTime:J

    .line 82
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPauseTime:J

    .line 83
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    .line 84
    invoke-direct {p0}, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->parse_cmd()V

    .line 85
    return-void
.end method

.method private parse_cmd()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
        }
    .end annotation

    .prologue
    .line 92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

    invoke-virtual {v1}, Lcom/android/internal/atfwd/AtCmd;->getTokens()[Ljava/lang/String;

    move-result-object v20

    .line 96
    .local v20, tokens:[Ljava/lang/String;
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    array-length v1, v0

    if-eqz v1, :cond_0

    move-object/from16 v0, v20

    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 97
    :cond_0
    new-instance v1, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    const-string v2, "Must provide 1 to three tokens"

    invoke-direct {v1, v2}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v20, v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    .line 100
    .local v16, keys:[C
    const/4 v1, 0x0

    aget-object v1, v20, v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v18

    .line 103
    .local v18, orig:[C
    move-object/from16 v0, v20

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 106
    const/4 v1, 0x1

    :try_start_0
    aget-object v1, v20, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    int-to-long v1, v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPressTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_2
    move-object/from16 v0, v20

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 114
    const/4 v1, 0x2

    :try_start_1
    aget-object v1, v20, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    int-to-long v1, v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPauseTime:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    :cond_3
    const/4 v14, 0x0

    .line 121
    .local v14, instring:Z
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v19, theString:Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, v16

    array-length v1, v0

    if-ge v12, v1, :cond_b

    .line 123
    if-eqz v14, :cond_6

    .line 124
    aget-char v1, v16, v12

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_5

    .line 125
    const/4 v14, 0x0

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    iget-object v1, v1, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mKcm:Landroid/view/KeyCharacterMap;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v11

    .line 127
    .local v11, events:[Landroid/view/KeyEvent;
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 128
    if-eqz v11, :cond_4

    .line 129
    move-object v9, v11

    .local v9, arr$:[Landroid/view/KeyEvent;
    array-length v0, v9

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    move/from16 v0, v17

    if-ge v13, v0, :cond_7

    aget-object v15, v9, v13

    .line 130
    .local v15, keyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    invoke-virtual {v1, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 107
    .end local v9           #arr$:[Landroid/view/KeyEvent;
    .end local v11           #events:[Landroid/view/KeyEvent;
    .end local v12           #i:I
    .end local v13           #i$:I
    .end local v14           #instring:Z
    .end local v15           #keyEvent:Landroid/view/KeyEvent;
    .end local v17           #len$:I
    .end local v19           #theString:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v10

    .line 108
    .local v10, e:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong arg2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v20, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    .end local v10           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v10

    .line 116
    .restart local v10       #e:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong arg3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v20, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    .end local v10           #e:Ljava/lang/NumberFormatException;
    .restart local v11       #events:[Landroid/view/KeyEvent;
    .restart local v12       #i:I
    .restart local v14       #instring:Z
    .restart local v19       #theString:Ljava/lang/StringBuilder;
    :cond_4
    new-instance v1, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find all keycodes for string \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    .end local v11           #events:[Landroid/view/KeyEvent;
    :cond_5
    aget-char v1, v18, v12

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    :cond_6
    aget-char v1, v16, v12

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_8

    .line 140
    const/4 v14, 0x1

    .line 122
    :cond_7
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 143
    :cond_8
    aget-char v1, v16, v12

    const/16 v2, 0x22

    if-eq v1, v2, :cond_7

    .line 145
    aget-char v1, v16, v12

    const/16 v2, 0x57

    if-ne v1, v2, :cond_9

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    new-instance v2, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPauseTime:J

    invoke-direct {v2, v3, v4}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 150
    :cond_9
    invoke-static {}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$000()Ljava/util/HashMap;

    move-result-object v1

    aget-char v2, v16, v12

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 151
    new-instance v1, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, v18, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    move-object/from16 v21, v0

    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$000()Ljava/util/HashMap;

    move-result-object v7

    aget-char v8, v16, v12

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    move-object/from16 v21, v0

    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$000()Ljava/util/HashMap;

    move-result-object v7

    aget-char v8, v16, v12

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    new-instance v2, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPressTime:J

    invoke-direct {v2, v3, v4}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 157
    :cond_b
    return-void
.end method


# virtual methods
.method public getEvents()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    return-object v0
.end method
