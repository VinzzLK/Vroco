.class Lmiuix/animation/internal/AnimTaskStackRunner;
.super Ljava/lang/Object;
.source "AnimTaskStackRunner.java"


# static fields
.field static INIT_RESULT_CODE_FAILED:I = 0x1

.field static INIT_RESULT_CODE_SUCCESS:I = 0x0

.field static INIT_RESULT_CODE_VALUE_INVALID:I = 0x2

.field private static final SECTION_TAG:Ljava/lang/String; = "Folme.TaskRunner_doFrame"

.field static final animDataLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lmiuix/animation/internal/AnimData;",
            ">;"
        }
    .end annotation
.end field

.field static final tempTaskUpdateList:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/List<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiuix/animation/internal/AnimTaskStackRunner;->animDataLocal:Ljava/lang/ThreadLocal;

    .line 31
    new-instance v0, Lmiuix/animation/internal/AnimTaskStackRunner$1;

    invoke-direct {v0}, Lmiuix/animation/internal/AnimTaskStackRunner$1;-><init>()V

    sput-object v0, Lmiuix/animation/internal/AnimTaskStackRunner;->tempTaskUpdateList:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doAnimationFrame(Lmiuix/animation/internal/AnimTask;JJIDZ)V
    .locals 32

    move-object/from16 v0, p0

    .line 44
    iget-object v1, v0, Lmiuix/animation/internal/AnimTask;->scheduler:Lmiuix/animation/internal/AnimScheduler;

    if-eqz v1, :cond_0

    .line 47
    iget-object v2, v1, Lmiuix/animation/internal/AnimScheduler;->mEngine:Lmiuix/animation/internal/FolmeEngine;

    .line 48
    invoke-virtual {v2}, Lmiuix/animation/internal/FolmeEngine;->getObjPool()Lmiuix/animation/utils/ObjectPool;

    move-result-object v2

    sget-object v3, Lmiuix/animation/internal/AnimTaskStackRunner;->animDataLocal:Ljava/lang/ThreadLocal;

    const-class v4, Lmiuix/animation/internal/AnimData;

    .line 47
    invoke-static {v2, v3, v4}, Lmiuix/animation/utils/CommonUtils;->getLocal(Lmiuix/animation/utils/ObjectPool;Ljava/lang/ThreadLocal;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/internal/AnimData;

    goto :goto_0

    .line 51
    :cond_0
    sget-object v2, Lmiuix/animation/internal/AnimTaskStackRunner;->animDataLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/internal/AnimData;

    if-nez v3, :cond_1

    .line 53
    new-instance v3, Lmiuix/animation/internal/AnimData;

    invoke-direct {v3}, Lmiuix/animation/internal/AnimData;-><init>()V

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    move-object v2, v3

    .line 57
    :goto_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDetailEnable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogFrameEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v2, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v3, :cond_4

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folme.TaskRunner_doFrame "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 62
    :cond_4
    sget-object v3, Lmiuix/animation/internal/AnimTaskStackRunner;->tempTaskUpdateList:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 63
    iget-boolean v4, v2, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    const-string v13, "miuix_anim"

    if-eqz v4, :cond_5

    const-string v4, "\u2193---- TaskRunner.run start"

    .line 64
    invoke-static {v13, v4}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v0, :cond_1d

    .line 71
    invoke-virtual {v0}, Lmiuix/animation/utils/LinkNode;->remove()Lmiuix/animation/utils/LinkNode;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lmiuix/animation/internal/AnimTask;

    add-int/lit8 v16, v4, 0x1

    .line 74
    :try_start_0
    iget-object v12, v0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    .line 75
    iget-object v9, v0, Lmiuix/animation/internal/AnimTask;->info:Lmiuix/animation/internal/TransitionInfo;

    .line 76
    iget-object v10, v9, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 77
    invoke-virtual {v12}, Lmiuix/animation/internal/AnimStats;->prepareOnFrameStart()V

    .line 78
    invoke-virtual {v12}, Lmiuix/animation/internal/AnimStats;->isNeedSetup()Z

    move-result v17

    .line 79
    invoke-virtual {v0}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    move-result v4

    .line 80
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 81
    iget-object v5, v9, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    iget v5, v0, Lmiuix/animation/internal/AnimTask;->startPos:I

    add-int v8, v5, v4

    move v7, v5

    const/16 v18, 0x0

    :goto_4
    if-ge v7, v8, :cond_1c

    .line 85
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lmiuix/animation/listener/UpdateInfo;

    if-nez v6, :cond_6

    move-object v5, v0

    move-object/from16 v28, v1

    move-object/from16 v21, v3

    move/from16 v25, v7

    move/from16 v26, v8

    move-object v4, v9

    move-object v15, v10

    move-object/from16 v27, v11

    move-object v1, v12

    move-object v6, v13

    const/4 v3, 0x1

    const/4 v8, 0x0

    goto/16 :goto_10

    .line 89
    :cond_6
    iget-boolean v4, v2, Lmiuix/animation/internal/AnimData;->logEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12

    const-string v5, ", "

    const-string v15, " update.op="

    const-string v14, ", p=\'%s\'"

    if-eqz v4, :cond_7

    .line 90
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v21, v3

    :try_start_2
    const-string v3, "------ data-start: info.id="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " startImmediately="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-boolean v3, v3, Lmiuix/animation/base/AnimConfig;->startImmediately:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11

    move/from16 p0, v7

    const/4 v3, 0x1

    :try_start_3
    new-array v7, v3, [Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v3, v6, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 92
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v19, 0x0

    aput-object v3, v7, v19

    invoke-static {v14, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v3, v3, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v13, v3}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v27, v11

    move-object v6, v13

    goto/16 :goto_18

    :catch_1
    move-exception v0

    move-object/from16 v21, v3

    goto/16 :goto_14

    :cond_7
    move-object/from16 v21, v3

    move/from16 p0, v7

    .line 95
    :goto_5
    iget-object v3, v9, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-object v4, v6, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->getSpecialConfig(Ljava/lang/String;)Lmiuix/animation/base/AnimSpecialConfig;

    move-result-object v3

    .line 97
    iget-object v4, v9, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v2, v6, v4, v3}, Lmiuix/animation/internal/AnimData;->from(Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_11

    if-eqz v17, :cond_9

    .line 99
    :try_start_5
    iget-object v7, v9, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-object v4, v9, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v22, v4

    move-object v4, v12

    move-object/from16 v23, v0

    move-object v0, v5

    move-object v5, v2

    move-object/from16 v24, v0

    move-object v0, v6

    move-object v6, v10

    move/from16 v25, p0

    move/from16 v26, v8

    move-object v8, v3

    move-object v3, v9

    move-object/from16 p0, v15

    move-object v15, v10

    move-wide/from16 v9, p1

    move-object/from16 v28, v1

    move-object/from16 v27, v11

    move-object v1, v12

    move-wide/from16 v11, p3

    move-object/from16 v29, v13

    move-object/from16 v13, v22

    :try_start_6
    invoke-static/range {v4 .. v13}, Lmiuix/animation/internal/AnimTaskStackRunner;->setup(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;JJLjava/lang/Object;)V

    .line 101
    iget-boolean v4, v2, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v4, :cond_8

    .line 102
    invoke-static {v2, v15, v3, v1}, Lmiuix/animation/internal/AnimTaskStackRunner;->printSetupLog(Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimStats;)V

    :cond_8
    move-object v13, v3

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v27, v11

    move-object/from16 v28, v1

    goto/16 :goto_16

    :cond_9
    move/from16 v25, p0

    move-object/from16 v23, v0

    move-object/from16 v28, v1

    move-object/from16 v24, v5

    move-object v0, v6

    move/from16 v26, v8

    move-object/from16 v27, v11

    move-object v1, v12

    move-object/from16 v29, v13

    move-object/from16 p0, v15

    move-object v13, v9

    move-object v15, v10

    .line 104
    iget-byte v4, v2, Lmiuix/animation/internal/AnimData;->op:B

    const/4 v5, 0x6

    if-ne v4, v5, :cond_a

    .line 105
    iget-object v7, v13, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    move-object v4, v1

    move-object v5, v2

    move-object v6, v15

    move-object v8, v3

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    invoke-static/range {v4 .. v12}, Lmiuix/animation/internal/AnimTaskStackRunner;->reuse(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;JJ)V

    .line 107
    iget-boolean v3, v2, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v3, :cond_a

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++++++ data.reuse info.id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10

    const/4 v4, 0x1

    :try_start_7
    new-array v5, v4, [Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :try_start_8
    iget-object v4, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 109
    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10

    const/4 v6, 0x0

    :try_start_9
    aput-object v4, v5, v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :try_start_a
    invoke-static {v14, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " stats="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_10

    move-object/from16 v12, v29

    .line 108
    :try_start_b
    invoke-static {v12, v3}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_3
    move-exception v0

    move v8, v6

    move-object/from16 v6, v29

    const/4 v3, 0x1

    goto/16 :goto_19

    :catch_4
    move-exception v0

    move v3, v4

    move-object/from16 v6, v29

    goto/16 :goto_18

    :cond_a
    :goto_6
    move-object/from16 v12, v29

    .line 112
    :goto_7
    iget-byte v3, v2, Lmiuix/animation/internal/AnimData;->op:B
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    move-object v4, v1

    move-object v5, v2

    move-object v6, v15

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-object v11, v13

    .line 113
    :try_start_c
    invoke-static/range {v4 .. v11}, Lmiuix/animation/internal/AnimTaskStackRunner;->start(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;JJLmiuix/animation/internal/TransitionInfo;)V

    .line 115
    iget-object v3, v0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget v4, v2, Lmiuix/animation/internal/AnimData;->tintMode:I

    iput v4, v3, Lmiuix/animation/internal/AnimInfo;->tintMode:I

    .line 116
    iget-object v3, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    sget-object v5, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    if-ne v3, v5, :cond_b

    .line 117
    :try_start_d
    invoke-static {v15, v4}, Lmiuix/animation/styles/ForegroundColorStyle;->start(Lmiuix/animation/IAnimTarget;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_f

    .line 120
    :cond_b
    :try_start_e
    iget-byte v3, v2, Lmiuix/animation/internal/AnimData;->op:B

    const/4 v4, 0x5

    if-ne v3, v4, :cond_d

    .line 121
    iget-boolean v3, v13, Lmiuix/animation/internal/TransitionInfo;->hasSendNotifyStart:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    if-nez v3, :cond_c

    if-eqz v28, :cond_c

    move-object/from16 v3, v28

    .line 125
    :try_start_f
    invoke-virtual {v3, v13}, Lmiuix/animation/internal/AnimScheduler;->executeNotifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v28, v3

    goto/16 :goto_13

    :cond_c
    move-object/from16 v3, v28

    .line 128
    :goto_8
    :try_start_10
    iget v4, v1, Lmiuix/animation/internal/AnimStats;->focusCount:I

    if-lez v4, :cond_e

    iget-object v4, v13, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-object v5, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v4, v5}, Lmiuix/animation/base/AnimConfig;->isFocusPropertyForComplete(Lmiuix/animation/property/FloatProperty;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 129
    iget v4, v1, Lmiuix/animation/internal/AnimStats;->focusCount:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    const/16 v20, 0x1

    add-int/lit8 v4, v4, -0x1

    :try_start_11
    iput v4, v1, Lmiuix/animation/internal/AnimStats;->focusCount:I

    goto :goto_9

    :catch_6
    move-exception v0

    const/16 v20, 0x1

    goto/16 :goto_11

    :cond_d
    move-object/from16 v3, v28

    :cond_e
    const/16 v20, 0x1

    goto :goto_9

    :catch_7
    move-exception v0

    const/16 v20, 0x1

    goto/16 :goto_12

    :cond_f
    move/from16 v20, v4

    move-object/from16 v3, v28

    .line 133
    :goto_9
    iget-byte v4, v2, Lmiuix/animation/internal/AnimData;->op:B
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    const/4 v11, 0x2

    if-ne v4, v11, :cond_16

    .line 137
    :try_start_12
    iget-boolean v4, v13, Lmiuix/animation/internal/TransitionInfo;->hasSendNotifyStart:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    if-nez v4, :cond_10

    if-eqz v3, :cond_10

    .line 141
    :try_start_13
    invoke-virtual {v3, v13}, Lmiuix/animation/internal/AnimScheduler;->executeNotifyTransitionBegin(Lmiuix/animation/internal/TransitionInfo;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_e

    .line 144
    :cond_10
    :try_start_14
    iget-wide v4, v2, Lmiuix/animation/internal/AnimData;->velocity:D
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_11

    :try_start_15
    iget-object v4, v13, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-boolean v4, v4, Lmiuix/animation/base/AnimConfig;->startImmediately:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    .line 145
    :try_start_16
    iput-boolean v4, v2, Lmiuix/animation/internal/AnimData;->justStart:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    move-object/from16 v28, v3

    move v8, v4

    move-object v6, v12

    move/from16 v3, v20

    goto/16 :goto_19

    .line 147
    :cond_11
    :goto_a
    :try_start_17
    iget-boolean v4, v2, Lmiuix/animation/internal/AnimData;->logEnabled:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    if-eqz v4, :cond_12

    .line 148
    :try_start_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "++++++ data.update start data.justStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Lmiuix/animation/internal/AnimData;->justStart:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_e

    :cond_12
    move-object v4, v1

    move-object v5, v2

    move-object v6, v15

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-object/from16 v28, v3

    move/from16 v22, v11

    move-object v3, v12

    move-wide/from16 v11, p6

    move-object/from16 v29, v13

    move/from16 v13, p5

    move-object/from16 v30, v3

    move-object/from16 v31, v14

    move/from16 v3, v20

    move-object/from16 v14, v29

    .line 153
    :try_start_19
    invoke-static/range {v4 .. v14}, Lmiuix/animation/internal/AnimTaskStackRunner;->update(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;JJDILmiuix/animation/internal/TransitionInfo;)V

    .line 155
    iget-boolean v4, v2, Lmiuix/animation/internal/AnimData;->justEnd:Z

    if-eqz v4, :cond_14

    move-object/from16 v4, v29

    .line 156
    iget-object v5, v4, Lmiuix/animation/internal/TransitionInfo;->config:Lmiuix/animation/base/AnimConfig;

    iget-object v6, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v5, v6}, Lmiuix/animation/base/AnimConfig;->isFocusPropertyForComplete(Lmiuix/animation/property/FloatProperty;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 157
    iget v5, v1, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    add-int/2addr v5, v3

    iput v5, v1, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    .line 159
    :cond_13
    iget-object v5, v2, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    sget-object v6, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    if-ne v5, v6, :cond_15

    .line 160
    invoke-static {v15, v0}, Lmiuix/animation/styles/ForegroundColorStyle;->end(Lmiuix/animation/IAnimTarget;Lmiuix/animation/listener/UpdateInfo;)V

    goto :goto_b

    :cond_14
    move-object/from16 v4, v29

    .line 163
    :cond_15
    :goto_b
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogDesignEnable()Z

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, "folme_design"

    const-string v6, "update anim:{name:\"%s\", %s:%.10f }"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 164
    iget-object v8, v4, Lmiuix/animation/internal/TransitionInfo;->to:Lmiuix/animation/controller/AnimState;

    .line 165
    invoke-virtual {v8}, Lmiuix/animation/controller/AnimState;->getAlias()Ljava/lang/String;

    move-result-object v8
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d

    const/4 v9, 0x0

    :try_start_1a
    aput-object v8, v7, v9
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9

    :try_start_1b
    iget-object v8, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 166
    invoke-virtual {v8}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-wide v8, v2, Lmiuix/animation/internal/AnimData;->value:D

    .line 167
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v22

    .line 164
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_9
    move-exception v0

    move v8, v9

    goto :goto_d

    :catch_a
    move-exception v0

    move-object/from16 v28, v3

    move/from16 v3, v20

    move-object v6, v12

    goto/16 :goto_18

    :cond_16
    move-object/from16 v28, v3

    move-object/from16 v30, v12

    move-object v4, v13

    move-object/from16 v31, v14

    move/from16 v3, v20

    .line 173
    :cond_17
    :goto_c
    invoke-virtual {v2, v0}, Lmiuix/animation/internal/AnimData;->to(Lmiuix/animation/listener/UpdateInfo;)V

    .line 174
    iget-boolean v5, v2, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v5, :cond_18

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------ data-end: info.id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, v0, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 176
    invoke-virtual {v7}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    const/4 v8, 0x0

    :try_start_1c
    aput-object v7, v6, v8

    move-object/from16 v7, v31

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v6, v6, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v24

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_b

    move-object/from16 v6, v30

    .line 175
    :try_start_1d
    invoke-static {v6, v5}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :catch_b
    move-exception v0

    :goto_d
    move-object/from16 v6, v30

    goto/16 :goto_19

    :cond_18
    move-object/from16 v6, v30

    const/4 v8, 0x0

    :goto_e
    if-eqz p8, :cond_1b

    .line 179
    iget-wide v9, v2, Lmiuix/animation/internal/AnimData;->value:D

    invoke-static {v9, v10}, Lmiuix/animation/internal/AnimValueUtils;->isValid(D)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 181
    instance-of v5, v15, Lmiuix/animation/ValueTarget;

    if-eqz v5, :cond_19

    move-object/from16 v5, v23

    iget-boolean v7, v5, Lmiuix/animation/internal/AnimTask;->runInMainThread:Z

    if-nez v7, :cond_1a

    move v14, v3

    goto :goto_f

    :cond_19
    move-object/from16 v5, v23

    :cond_1a
    move/from16 v14, v18

    .line 186
    :goto_f
    invoke-virtual {v0, v15, v14}, Lmiuix/animation/listener/UpdateInfo;->setTargetValue(Lmiuix/animation/IAnimTarget;Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    move/from16 v18, v14

    goto :goto_10

    :catch_c
    move-exception v0

    goto :goto_19

    :cond_1b
    move-object/from16 v5, v23

    :goto_10
    add-int/lit8 v7, v25, 0x1

    move-object v12, v1

    move-object v9, v4

    move-object v0, v5

    move-object v13, v6

    move-object v10, v15

    move-object/from16 v3, v21

    move/from16 v8, v26

    move-object/from16 v11, v27

    move-object/from16 v1, v28

    goto/16 :goto_4

    :catch_d
    move-exception v0

    move-object/from16 v6, v30

    goto :goto_18

    :catch_e
    move-exception v0

    :goto_11
    move-object/from16 v28, v3

    :goto_12
    move-object v6, v12

    move/from16 v3, v20

    goto :goto_18

    :catch_f
    move-exception v0

    :goto_13
    move-object v6, v12

    goto :goto_17

    :catch_10
    move-exception v0

    move-object/from16 v6, v29

    goto :goto_17

    :catch_11
    move-exception v0

    :goto_14
    move-object/from16 v28, v1

    goto :goto_15

    :cond_1c
    move-object/from16 v28, v1

    move-object/from16 v21, v3

    move-object v6, v13

    const/4 v3, 0x1

    const/4 v8, 0x0

    move-object v5, v11

    goto :goto_1a

    :catch_12
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v21, v3

    :goto_15
    move-object/from16 v27, v11

    :goto_16
    move-object v6, v13

    :goto_17
    const/4 v3, 0x1

    :goto_18
    const/4 v8, 0x0

    .line 190
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- AnimTaskStackRunner.doAnimationFrame task:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v27

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " failed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v6, v0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    move-object v0, v5

    move-object v13, v6

    move/from16 v4, v16

    move-object/from16 v3, v21

    move-object/from16 v1, v28

    goto/16 :goto_3

    :cond_1d
    move-object v6, v13

    .line 195
    iget-boolean v0, v2, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v0, :cond_1e

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2191---- TaskRunner.run finish taskCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1e
    return-void
.end method

.method private static finishProperty(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;)V
    .locals 1

    const/4 v0, 0x5

    .line 404
    invoke-virtual {p1, v0}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 405
    iget p1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    return-void
.end method

.method private static initTask(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;JJ)I
    .locals 1

    .line 369
    iget-object v0, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    instance-of v0, v0, Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    if-eqz v0, :cond_0

    .line 370
    invoke-static {p0, p1}, Lmiuix/animation/styles/ForegroundColorStyle;->isValid(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 371
    iget-wide p2, p1, Lmiuix/animation/internal/AnimData;->targetValue:D

    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->value:D

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 372
    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->progress:D

    .line 373
    sget p0, Lmiuix/animation/internal/AnimTaskStackRunner;->INIT_RESULT_CODE_FAILED:I

    return p0

    .line 376
    :cond_0
    invoke-static {p1}, Lmiuix/animation/internal/AnimTaskStackRunner;->setValues(Lmiuix/animation/internal/AnimData;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 377
    sget p0, Lmiuix/animation/internal/AnimTaskStackRunner;->INIT_RESULT_CODE_FAILED:I

    return p0

    .line 379
    :cond_1
    invoke-static {p1}, Lmiuix/animation/internal/AnimTaskStackRunner;->isValueInvalid(Lmiuix/animation/internal/AnimData;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 380
    invoke-virtual {p1}, Lmiuix/animation/internal/AnimData;->reset()V

    .line 381
    iget-wide p2, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->value:D

    .line 382
    sget p0, Lmiuix/animation/internal/AnimTaskStackRunner;->INIT_RESULT_CODE_VALUE_INVALID:I

    return p0

    :cond_2
    sub-long/2addr p2, p4

    .line 384
    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->startTime:J

    const/4 p0, 0x0

    .line 385
    iput p0, p1, Lmiuix/animation/internal/AnimData;->frameCount:I

    const/4 p0, 0x2

    .line 386
    invoke-virtual {p1, p0}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 387
    sget p0, Lmiuix/animation/internal/AnimTaskStackRunner;->INIT_RESULT_CODE_SUCCESS:I

    return p0
.end method

.method private static isValueInvalid(Lmiuix/animation/internal/AnimData;)Z
    .locals 4

    .line 409
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 410
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4030aaaaa0000000L    # 16.66666603088379

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static printDelayTaskLog(Lmiuix/animation/internal/AnimData;Ljava/lang/Object;J)V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/Object;

    iget-object v3, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 416
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "p=\'%s\'"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delay="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->delay:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "op="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lmiuix/animation/internal/AnimData;->op:B

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initTime="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->initTime:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v0, p1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "totalT_ms="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double p1, p2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v1

    const-wide v1, 0x412e848000000000L    # 1000000.0

    div-double/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    aput-object p0, v0, p1

    const-string p0, "miuix_anim"

    const-string p1, "++++++ data.start:check delay"

    .line 414
    invoke-static {p0, p1, v0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static printSetValueFailedLog(Lmiuix/animation/internal/AnimData;Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 425
    iget-object v3, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 427
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "p=\'%s\'"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "op="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lmiuix/animation/internal/AnimData;->op:B

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start-v="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "target-v= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    aput-object p0, v0, p1

    const-string p0, "miuix_anim"

    const-string p1, "++++++ data.start:setValueFailed, break"

    .line 425
    invoke-static {p0, p1, v0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static printSetupInUpdateLog(Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Ljava/lang/Object;)V
    .locals 6

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++++ data.setup when op is update and no delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 489
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "p=\'%s\'"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tag="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start-v="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, v2, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "target-v="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    aput-object p2, v2, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "target="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v2, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ease="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v2, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "progress="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lmiuix/animation/internal/AnimData;->progress:D

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v2, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "velocity="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v2, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "delay="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lmiuix/animation/internal/AnimData;->delay:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    aput-object p1, v2, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "op="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lmiuix/animation/internal/AnimData;->op:B

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x9

    aput-object p0, v2, p1

    const-string p0, "miuix_anim"

    .line 487
    invoke-static {p0, v0, v2}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static printSetupLog(Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimStats;)V
    .locals 6

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++++++ data.setup: info.id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 471
    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "p=\'%s\'"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 472
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start-v="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target-v="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->progress:D

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animStats="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x6

    aput-object p2, v1, p3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ease="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x7

    aput-object p2, v1, p3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "velocity="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x8

    aput-object p2, v1, p3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delay="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->delay:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x9

    aput-object p2, v1, p3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "op="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Lmiuix/animation/internal/AnimData;->op:B

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0xa

    aput-object p0, v1, p2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "target="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xb

    aput-object p0, v1, p1

    const-string p0, "miuix_anim"

    .line 468
    invoke-static {p0, v0, v1}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static printStartFinishLog(Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Ljava/lang/Object;)V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 451
    iget-object v3, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 453
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "p=\'%s\'"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "op="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lmiuix/animation/internal/AnimData;->op:B

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    aput-object p2, v0, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start-v="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x4

    aput-object p2, v0, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "target-v="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x5

    aput-object p2, v0, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->progress:D

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    aput-object p2, v0, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ease="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/animation/internal/AnimData;->ease:Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x7

    aput-object p2, v0, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delay="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->delay:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x8

    aput-object p2, v0, v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "velocity="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x9

    aput-object p0, v0, p2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "target="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xa

    aput-object p0, v0, p1

    const-string p0, "miuix_anim"

    const-string p1, "++++++ data.start:finish"

    .line 451
    invoke-static {p0, p1, v0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static printUpdateAnimLog(Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/TransitionInfo;D)V
    .locals 6

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------ data.update: info.id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 510
    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "p=\'%s\'"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 511
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lmiuix/animation/internal/AnimData;->op:B

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiuix/animation/internal/AnimData;->frameCount:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start-v="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target-v="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x6

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value_hex="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    double-to-int v2, v2

    .line 517
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x7

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delta_s="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x8

    aput-object p2, v1, p3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "interval="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lmiuix/animation/internal/AnimData;->frameInterval:D

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x9

    aput-object p2, v1, p3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "progress="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lmiuix/animation/internal/AnimData;->progress:D

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xa

    aput-object p2, v1, p3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "target="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xb

    aput-object p1, v1, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "justEnd="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lmiuix/animation/internal/AnimData;->justEnd:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xc

    aput-object p1, v1, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init-t="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lmiuix/animation/internal/AnimData;->initTime:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xd

    aput-object p1, v1, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start-t="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lmiuix/animation/internal/AnimData;->startTime:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xe

    aput-object p1, v1, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "velocity="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xf

    aput-object p0, v1, p1

    const-string p0, "miuix_anim"

    .line 507
    invoke-static {p0, v0, v1}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static printValueInvalidFailedLog(Lmiuix/animation/internal/AnimData;Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 437
    iget-object v3, p0, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 440
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "p=\'%s\'"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "op="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lmiuix/animation/internal/AnimData;->op:B

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start-v="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "target-v="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->targetValue:D

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "velocity="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    aput-object p0, v0, p1

    const-string p0, "miuix_anim"

    const-string p1, "++++++ data.start:valueInvalidFailedLog, start-v equal target-v, so break"

    .line 437
    invoke-static {p0, p1, v0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static reuse(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;JJ)V
    .locals 3

    .line 246
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-wide v0, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 248
    iget-object v2, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    invoke-static {p2, v2, v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v0

    iput-wide v0, p1, Lmiuix/animation/internal/AnimData;->startValue:D

    :cond_0
    sub-long/2addr p5, p7

    .line 250
    iput-wide p5, p1, Lmiuix/animation/internal/AnimData;->initTime:J

    const/4 p2, 0x1

    .line 251
    invoke-virtual {p1, p2}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 252
    iget p5, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    if-lez p5, :cond_1

    sub-int/2addr p5, p2

    .line 253
    iput p5, p0, Lmiuix/animation/internal/AnimStats;->failCount:I

    .line 255
    :cond_1
    iget p5, p0, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    if-lez p5, :cond_2

    iget-object p5, p1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p3, p5}, Lmiuix/animation/base/AnimConfig;->isFocusPropertyForComplete(Lmiuix/animation/property/FloatProperty;)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 256
    iget p5, p0, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    sub-int/2addr p5, p2

    iput p5, p0, Lmiuix/animation/internal/AnimStats;->focusEndCount:I

    .line 258
    :cond_2
    invoke-static {p3, p4}, Lmiuix/animation/internal/AnimConfigUtils;->getFromSpeed(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)F

    move-result p0

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float p2, p0, p2

    if-eqz p2, :cond_3

    float-to-double p2, p0

    .line 260
    iput-wide p2, p1, Lmiuix/animation/internal/AnimData;->velocity:D

    :cond_3
    return-void
.end method

.method private static setStartData(Lmiuix/animation/internal/AnimData;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 355
    iput-wide v0, p0, Lmiuix/animation/internal/AnimData;->progress:D

    .line 356
    invoke-virtual {p0}, Lmiuix/animation/internal/AnimData;->reset()V

    return-void
.end method

.method private static setValues(Lmiuix/animation/internal/AnimData;)Z
    .locals 4

    .line 391
    iget-wide v0, p0, Lmiuix/animation/internal/AnimData;->value:D

    invoke-static {v0, v1}, Lmiuix/animation/internal/AnimValueUtils;->isValid(D)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 392
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isInvalid(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    :cond_0
    return v1

    .line 396
    :cond_1
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    invoke-static {v2, v3}, Lmiuix/animation/internal/AnimValueUtils;->isValid(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    iget-wide v2, p0, Lmiuix/animation/internal/AnimData;->startValue:D

    iput-wide v2, p0, Lmiuix/animation/internal/AnimData;->value:D

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static setup(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;JJLjava/lang/Object;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    .line 207
    iget-wide v3, v1, Lmiuix/animation/internal/AnimData;->startValue:D

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_0

    const-wide v5, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_0

    const-wide v5, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v5, v3, v5

    if-nez v5, :cond_1

    .line 210
    :cond_0
    iget-object v5, v1, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    invoke-static {v2, v5, v3, v4}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v3

    iput-wide v3, v1, Lmiuix/animation/internal/AnimData;->startValue:D

    :cond_1
    sub-long v3, p5, p7

    .line 212
    iput-wide v3, v1, Lmiuix/animation/internal/AnimData;->initTime:J

    .line 214
    iget v5, v0, Lmiuix/animation/internal/AnimStats;->startedCount:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v0, Lmiuix/animation/internal/AnimStats;->startedCount:I

    .line 215
    iget-byte v5, v1, Lmiuix/animation/internal/AnimData;->op:B

    const/4 v7, 0x2

    const-string v8, "miuix_anim"

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    if-ne v5, v7, :cond_4

    iget-wide v10, v1, Lmiuix/animation/internal/AnimData;->delay:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_2

    goto :goto_0

    .line 226
    :cond_2
    iput-wide v3, v1, Lmiuix/animation/internal/AnimData;->startTime:J

    .line 227
    iput-wide v12, v1, Lmiuix/animation/internal/AnimData;->delay:J

    .line 228
    invoke-static/range {p3 .. p4}, Lmiuix/animation/internal/AnimConfigUtils;->getFromSpeed(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)F

    move-result v3

    cmpl-float v4, v3, v9

    if-eqz v4, :cond_3

    float-to-double v3, v3

    .line 230
    iput-wide v3, v1, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 233
    :cond_3
    iget v3, v0, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    sub-int/2addr v3, v6

    iput v3, v0, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    .line 234
    invoke-static {p1}, Lmiuix/animation/internal/AnimTaskStackRunner;->setStartData(Lmiuix/animation/internal/AnimData;)V

    .line 235
    iget-boolean v0, v1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v0, :cond_6

    const-string v0, "++++++ data.setup path1"

    .line 236
    invoke-static {v8, v0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p9

    .line 237
    invoke-static {p1, v2, v0}, Lmiuix/animation/internal/AnimTaskStackRunner;->printSetupInUpdateLog(Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Ljava/lang/Object;)V

    goto :goto_1

    .line 216
    :cond_4
    :goto_0
    invoke-virtual {p1, v6}, Lmiuix/animation/internal/AnimData;->setOp(B)V

    .line 217
    invoke-static/range {p3 .. p4}, Lmiuix/animation/internal/AnimConfigUtils;->getFromSpeed(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)F

    move-result v0

    cmpl-float v2, v0, v9

    if-eqz v2, :cond_5

    float-to-double v2, v0

    .line 219
    iput-wide v2, v1, Lmiuix/animation/internal/AnimData;->velocity:D

    .line 221
    :cond_5
    iget-boolean v0, v1, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v0, :cond_6

    const-string v0, "++++++ data.setup path0"

    .line 222
    invoke-static {v8, v0}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method static start(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;JJLmiuix/animation/internal/TransitionInfo;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p7

    .line 269
    iget-wide v1, v7, Lmiuix/animation/internal/AnimData;->delay:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-lez v1, :cond_3

    .line 270
    iget-boolean v1, v7, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, v9, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    move-wide/from16 v3, p3

    invoke-static {v7, v1, v3, v4}, Lmiuix/animation/internal/AnimTaskStackRunner;->printDelayTaskLog(Lmiuix/animation/internal/AnimData;Ljava/lang/Object;J)V

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p3

    .line 273
    :goto_0
    iget-wide v5, v9, Lmiuix/animation/internal/TransitionInfo;->currentTime:J

    iget-wide v10, v9, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    iget-wide v12, v7, Lmiuix/animation/internal/AnimData;->delay:J

    const-wide/32 v14, 0xf4240

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    cmp-long v1, v5, v10

    if-gez v1, :cond_1

    return-void

    .line 276
    :cond_1
    iget-object v1, v7, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v8, v1, v5, v6}, Lmiuix/animation/internal/AnimValueUtils;->getValue(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)D

    move-result-wide v10

    cmpl-double v1, v10, v5

    if-eqz v1, :cond_2

    .line 279
    iput-wide v10, v7, Lmiuix/animation/internal/AnimData;->startValue:D

    .line 281
    :cond_2
    iget-boolean v1, v7, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "info.id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v1, v6

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v10, v7, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 284
    invoke-virtual {v10}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v6

    const-string v6, "p=\'%s\'"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const-string v5, "miuix_anim"

    const-string v6, "+++++ data.delay-start: time\'s up"

    .line 282
    invoke-static {v5, v6, v1}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-wide/from16 v3, p3

    .line 290
    :cond_4
    :goto_1
    iget v1, v0, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    sub-int/2addr v1, v2

    iput v1, v0, Lmiuix/animation/internal/AnimStats;->prepareCount:I

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    .line 292
    invoke-static/range {v1 .. v6}, Lmiuix/animation/internal/AnimTaskStackRunner;->initTask(Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/AnimData;JJ)I

    move-result v1

    .line 293
    sget v2, Lmiuix/animation/internal/AnimTaskStackRunner;->INIT_RESULT_CODE_SUCCESS:I

    if-eq v1, v2, :cond_7

    .line 295
    invoke-static/range {p0 .. p1}, Lmiuix/animation/internal/AnimTaskStackRunner;->finishProperty(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;)V

    .line 296
    iget-boolean v0, v7, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v0, :cond_6

    .line 297
    sget v0, Lmiuix/animation/internal/AnimTaskStackRunner;->INIT_RESULT_CODE_FAILED:I

    if-ne v1, v0, :cond_5

    .line 298
    iget-object v0, v9, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-static {v7, v0}, Lmiuix/animation/internal/AnimTaskStackRunner;->printSetValueFailedLog(Lmiuix/animation/internal/AnimData;Ljava/lang/Object;)V

    goto :goto_2

    .line 299
    :cond_5
    sget v0, Lmiuix/animation/internal/AnimTaskStackRunner;->INIT_RESULT_CODE_VALUE_INVALID:I

    if-ne v1, v0, :cond_6

    .line 300
    iget-object v0, v9, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-static {v7, v0}, Lmiuix/animation/internal/AnimTaskStackRunner;->printValueInvalidFailedLog(Lmiuix/animation/internal/AnimData;Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    .line 305
    :cond_7
    invoke-static/range {p1 .. p1}, Lmiuix/animation/internal/AnimTaskStackRunner;->setStartData(Lmiuix/animation/internal/AnimData;)V

    .line 306
    iget-boolean v0, v7, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v0, :cond_8

    .line 307
    iget-object v0, v9, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-static {v7, v8, v0}, Lmiuix/animation/internal/AnimTaskStackRunner;->printStartFinishLog(Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method private static update(Lmiuix/animation/internal/AnimStats;Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;JJDILmiuix/animation/internal/TransitionInfo;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p10

    .line 318
    iget-wide v1, v9, Lmiuix/animation/internal/AnimData;->velocity:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    const/4 v11, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, v9, Lmiuix/animation/internal/AnimData;->justStart:Z

    if-eqz v1, :cond_0

    move-wide v12, v3

    goto :goto_0

    .line 321
    :cond_0
    iget v1, v9, Lmiuix/animation/internal/AnimData;->frameCount:I

    add-int/2addr v1, v11

    iput v1, v9, Lmiuix/animation/internal/AnimData;->frameCount:I

    move-wide/from16 v12, p7

    .line 323
    :goto_0
    iget v1, v0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    add-int/2addr v1, v11

    iput v1, v0, Lmiuix/animation/internal/AnimStats;->updateCount:I

    .line 324
    iput-wide v12, v9, Lmiuix/animation/internal/AnimData;->frameInterval:D

    .line 325
    iget-wide v1, v9, Lmiuix/animation/internal/AnimData;->duration:D

    add-double/2addr v1, v12

    iput-wide v1, v9, Lmiuix/animation/internal/AnimData;->duration:D

    .line 326
    iget-object v1, v9, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    sget-object v2, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    const/4 v14, 0x3

    const/4 v15, 0x0

    if-eq v1, v2, :cond_2

    sget-object v2, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    if-eq v1, v2, :cond_2

    instance-of v1, v1, Lmiuix/animation/property/ColorProperty;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v1, p2

    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    move-wide v6, v12

    move/from16 v8, p9

    .line 331
    invoke-static/range {v1 .. v8}, Lmiuix/animation/internal/FolmeCore;->doAnimationFrame(Lmiuix/animation/IAnimTarget;ZLmiuix/animation/internal/AnimData;JDI)V

    .line 332
    iget-boolean v1, v9, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v1, :cond_3

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------ data.update doAnimationFrame: info.id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, v9, Lmiuix/animation/internal/AnimData;->property:Lmiuix/animation/property/FloatProperty;

    .line 336
    invoke-virtual {v4}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v15

    const-string v4, "p=\'%s\'"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v9, Lmiuix/animation/internal/AnimData;->value:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "velocity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v9, Lmiuix/animation/internal/AnimData;->velocity:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "miuix_anim"

    .line 333
    invoke-static {v3, v1, v2}, Lmiuix/animation/utils/LogUtils;->logThread(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v1, p2

    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    move-wide v6, v12

    move/from16 v8, p9

    .line 329
    invoke-static/range {v1 .. v8}, Lmiuix/animation/internal/FolmeCore;->doAnimationFrame(Lmiuix/animation/IAnimTarget;ZLmiuix/animation/internal/AnimData;JDI)V

    .line 342
    :cond_3
    :goto_2
    iget-boolean v1, v9, Lmiuix/animation/internal/AnimData;->justStart:Z

    if-eqz v1, :cond_4

    .line 343
    iput-boolean v15, v9, Lmiuix/animation/internal/AnimData;->justStart:Z

    .line 345
    :cond_4
    iget-byte v1, v9, Lmiuix/animation/internal/AnimData;->op:B

    if-ne v1, v14, :cond_5

    .line 346
    iput-boolean v11, v9, Lmiuix/animation/internal/AnimData;->justEnd:Z

    .line 347
    iget v1, v0, Lmiuix/animation/internal/AnimStats;->endCount:I

    add-int/2addr v1, v11

    iput v1, v0, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 349
    :cond_5
    iget-boolean v0, v9, Lmiuix/animation/internal/AnimData;->logEnabled:Z

    if-eqz v0, :cond_6

    move-object/from16 v0, p2

    .line 350
    invoke-static {v9, v0, v10, v12, v13}, Lmiuix/animation/internal/AnimTaskStackRunner;->printUpdateAnimLog(Lmiuix/animation/internal/AnimData;Lmiuix/animation/IAnimTarget;Lmiuix/animation/internal/TransitionInfo;D)V

    :cond_6
    return-void
.end method
