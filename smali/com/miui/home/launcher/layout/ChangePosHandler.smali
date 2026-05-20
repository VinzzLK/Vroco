.class public Lcom/miui/home/launcher/layout/ChangePosHandler;
.super Lcom/miui/home/launcher/layout/LayoutDataHandler;
.source "ChangePosHandler.java"


# instance fields
.field private mIndex:I

.field private mMaxScreenId:J


# direct methods
.method public static synthetic $r8$lambda$5y4Xx_bDjPVLDNeHqnqoLSYbOI8(Lcom/miui/home/launcher/layout/ChangePosHandler;Lcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/layout/ChangePosHandler;->lambda$initMaxScreenId$1(Lcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fnrsu0irg0gavwCHHgtxP9QcHnA(Lcom/miui/home/launcher/layout/ChangePosHandler;IIIILjava/util/Map;Lcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/miui/home/launcher/layout/ChangePosHandler;->lambda$processData$0(IIIILjava/util/Map;Lcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/miui/home/launcher/layout/LayoutDataHandler;-><init>()V

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/miui/home/launcher/layout/ChangePosHandler;->mMaxScreenId:J

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/miui/home/launcher/layout/ChangePosHandler;->mIndex:I

    return-void
.end method

.method private addInfoToDst([[Lcom/miui/home/launcher/layout/LayoutItemInfo;Lcom/miui/home/launcher/layout/LayoutItemInfo;Landroid/util/Pair;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .line 144
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget v0, p2, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanX:I

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p0, v0, :cond_1

    .line 145
    iget-object v0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p2, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanY:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iget-object v1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 146
    aget-object v1, p1, p0

    aput-object p2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 149
    :cond_1
    iget-object p0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p2, Lcom/miui/home/launcher/layout/LayoutItemInfo;->cellX:I

    .line 150
    iget-object p0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p2, Lcom/miui/home/launcher/layout/LayoutItemInfo;->cellY:I

    .line 151
    iput-wide p4, p2, Lcom/miui/home/launcher/layout/LayoutItemInfo;->screenId:J

    return-void
.end method

.method private changeItemPosInCurScreen(IIJ[[Lcom/miui/home/launcher/layout/LayoutItemInfo;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 69
    :goto_0
    invoke-virtual {p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/miui/home/launcher/layout/LayoutItemInfo;

    .line 71
    invoke-direct {p0, p5, v4, p1, p2}, Lcom/miui/home/launcher/layout/ChangePosHandler;->findValidatePos([[Lcom/miui/home/launcher/layout/LayoutItemInfo;Lcom/miui/home/launcher/layout/LayoutItemInfo;II)Landroid/util/Pair;

    move-result-object v5

    if-nez v5, :cond_0

    .line 73
    invoke-virtual {p6, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    move-object v2, p0

    move-object v3, p5

    move-wide v6, p3

    .line 76
    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/layout/ChangePosHandler;->addInfoToDst([[Lcom/miui/home/launcher/layout/LayoutItemInfo;Lcom/miui/home/launcher/layout/LayoutItemInfo;Landroid/util/Pair;J)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private findValidatePos([[Lcom/miui/home/launcher/layout/LayoutItemInfo;Lcom/miui/home/launcher/layout/LayoutItemInfo;II)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, p4, :cond_2

    move v10, v0

    :goto_1
    if-ge v10, p3, :cond_1

    .line 116
    iget v7, p2, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanX:I

    iget v8, p2, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanY:I

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, v10

    move v6, v9

    invoke-virtual/range {v1 .. v8}, Lcom/miui/home/launcher/layout/ChangePosHandler;->isCellOccupied([[Lcom/miui/home/launcher/layout/LayoutItemInfo;IIIIII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    new-instance p0, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private initMaxScreenId(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/layout/ChangePosHandler;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private synthetic lambda$initMaxScreenId$1(Lcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/miui/home/launcher/layout/ChangePosHandler;->mMaxScreenId:J

    iget-wide p1, p1, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->screenId:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/home/launcher/layout/ChangePosHandler;->mMaxScreenId:J

    return-void
.end method

.method private synthetic lambda$processData$0(IIIILjava/util/Map;Lcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 13

    move-object v9, p0

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 24
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iget-wide v5, v11, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->screenId:J

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v7, p7

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/launcher/layout/ChangePosHandler;->processCurScreen(IIIIJ[[Lcom/miui/home/launcher/layout/LayoutItemInfo;Ljava/util/ArrayList;)[[Lcom/miui/home/launcher/layout/LayoutItemInfo;

    move-result-object v0

    .line 26
    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget v0, v9, Lcom/miui/home/launcher/layout/ChangePosHandler;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/miui/home/launcher/layout/ChangePosHandler;->mIndex:I

    .line 28
    iput v0, v11, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->index:I

    move v0, p1

    move v1, p2

    .line 29
    invoke-direct {p0, p1, p2, v10, v12}, Lcom/miui/home/launcher/layout/ChangePosHandler;->processNewScreen(IILjava/util/Map;Ljava/util/ArrayList;)V

    return-void
.end method

.method private processCurScreen(IIIIJ[[Lcom/miui/home/launcher/layout/LayoutItemInfo;Ljava/util/ArrayList;)[[Lcom/miui/home/launcher/layout/LayoutItemInfo;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIJ[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;)[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v10, 0x0

    aput p1, v0, v10

    .line 43
    const-class v2, Lcom/miui/home/launcher/layout/LayoutItemInfo;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/miui/home/launcher/layout/LayoutItemInfo;

    move/from16 v11, p4

    move v12, v10

    :goto_0
    if-ge v12, v11, :cond_5

    move/from16 v13, p3

    move v14, v10

    :goto_1
    if-ge v14, v13, :cond_4

    .line 46
    aget-object v2, p7, v14

    aget-object v15, v2, v12

    if-nez v15, :cond_0

    goto :goto_2

    .line 50
    :cond_0
    iget v2, v15, Lcom/miui/home/launcher/layout/LayoutItemInfo;->cellX:I

    if-ne v2, v14, :cond_3

    iget v2, v15, Lcom/miui/home/launcher/layout/LayoutItemInfo;->cellY:I

    if-eq v2, v12, :cond_1

    goto :goto_2

    .line 53
    :cond_1
    iget v8, v15, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanX:I

    iget v9, v15, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanY:I

    move-object/from16 v2, p0

    move-object v3, v0

    move/from16 v4, p1

    move/from16 v5, p2

    move v6, v14

    move v7, v12

    invoke-virtual/range {v2 .. v9}, Lcom/miui/home/launcher/layout/ChangePosHandler;->isCellOccupied([[Lcom/miui/home/launcher/layout/LayoutItemInfo;IIIIII)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v8, p8

    .line 54
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    move-object/from16 v8, p8

    .line 58
    new-instance v5, Landroid/util/Pair;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v5, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-wide v6, v15, Lcom/miui/home/launcher/layout/LayoutItemInfo;->screenId:J

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v15

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/layout/ChangePosHandler;->addInfoToDst([[Lcom/miui/home/launcher/layout/LayoutItemInfo;Lcom/miui/home/launcher/layout/LayoutItemInfo;Landroid/util/Pair;J)V

    move v1, v10

    goto :goto_3

    :cond_3
    :goto_2
    move-object/from16 v8, p8

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v8, p8

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v8, p8

    if-eqz v1, :cond_6

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p5

    move-object v7, v0

    move-object/from16 v8, p8

    .line 62
    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/layout/ChangePosHandler;->changeItemPosInCurScreen(IIJ[[Lcom/miui/home/launcher/layout/LayoutItemInfo;Ljava/util/ArrayList;)V

    :cond_6
    return-object v0
.end method

.method private processNewScreen(IILjava/util/Map;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 82
    const-class v0, Lcom/miui/home/launcher/layout/LayoutItemInfo;

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 86
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    .line 87
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/miui/home/launcher/layout/LayoutItemInfo;

    const-wide/16 v3, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-nez v1, :cond_1

    new-array v1, v5, [I

    aput p2, v1, v7

    aput p1, v1, v2

    .line 89
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/miui/home/launcher/layout/LayoutItemInfo;

    .line 90
    iget-wide v8, p0, Lcom/miui/home/launcher/layout/ChangePosHandler;->mMaxScreenId:J

    add-long/2addr v8, v3

    iput-wide v8, p0, Lcom/miui/home/launcher/layout/ChangePosHandler;->mMaxScreenId:J

    .line 91
    iget v8, p0, Lcom/miui/home/launcher/layout/ChangePosHandler;->mIndex:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/miui/home/launcher/layout/ChangePosHandler;->mIndex:I

    .line 93
    :cond_1
    invoke-direct {p0, v1, v6, p1, p2}, Lcom/miui/home/launcher/layout/ChangePosHandler;->findValidatePos([[Lcom/miui/home/launcher/layout/LayoutItemInfo;Lcom/miui/home/launcher/layout/LayoutItemInfo;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 95
    iget-wide v2, p0, Lcom/miui/home/launcher/layout/ChangePosHandler;->mMaxScreenId:J

    move-object v4, p0

    move-object v5, v1

    move-object v7, v8

    move-wide v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/miui/home/launcher/layout/ChangePosHandler;->addInfoToDst([[Lcom/miui/home/launcher/layout/LayoutItemInfo;Lcom/miui/home/launcher/layout/LayoutItemInfo;Landroid/util/Pair;J)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-direct {p0, p3, v1}, Lcom/miui/home/launcher/layout/ChangePosHandler;->saveNewScreenInfo(Ljava/util/Map;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V

    new-array v1, v5, [I

    aput p2, v1, v7

    aput p1, v1, v2

    .line 98
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/miui/home/launcher/layout/LayoutItemInfo;

    .line 99
    iget-wide v8, p0, Lcom/miui/home/launcher/layout/ChangePosHandler;->mMaxScreenId:J

    add-long/2addr v8, v3

    iput-wide v8, p0, Lcom/miui/home/launcher/layout/ChangePosHandler;->mMaxScreenId:J

    .line 100
    iget v2, p0, Lcom/miui/home/launcher/layout/ChangePosHandler;->mIndex:I

    add-int/2addr v2, v7

    iput v2, p0, Lcom/miui/home/launcher/layout/ChangePosHandler;->mIndex:I

    .line 101
    invoke-direct {p0, v1, v6, p1, p2}, Lcom/miui/home/launcher/layout/ChangePosHandler;->findValidatePos([[Lcom/miui/home/launcher/layout/LayoutItemInfo;Lcom/miui/home/launcher/layout/LayoutItemInfo;II)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 103
    iget-wide v8, p0, Lcom/miui/home/launcher/layout/ChangePosHandler;->mMaxScreenId:J

    move-object v4, p0

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Lcom/miui/home/launcher/layout/ChangePosHandler;->addInfoToDst([[Lcom/miui/home/launcher/layout/LayoutItemInfo;Lcom/miui/home/launcher/layout/LayoutItemInfo;Landroid/util/Pair;J)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v2, p0, Lcom/miui/home/launcher/layout/LayoutDataHandler;->TAG:Ljava/lang/String;

    const-string v3, "change pos handler error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_4
    invoke-direct {p0, p3, v1}, Lcom/miui/home/launcher/layout/ChangePosHandler;->saveNewScreenInfo(Ljava/util/Map;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private saveNewScreenInfo(Ljava/util/Map;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ")V"
        }
    .end annotation

    .line 156
    new-instance v0, Lcom/miui/home/launcher/layout/LayoutScreenInfo;

    iget-wide v1, p0, Lcom/miui/home/launcher/layout/ChangePosHandler;->mMaxScreenId:J

    iget p0, p0, Lcom/miui/home/launcher/layout/ChangePosHandler;->mIndex:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/miui/home/launcher/layout/LayoutScreenInfo;-><init>(JILjava/lang/Object;)V

    const/4 p0, 0x1

    .line 157
    iput-boolean p0, v0, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->isNewScreen:Z

    .line 158
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public isCellOccupied([[Lcom/miui/home/launcher/layout/LayoutItemInfo;IIIIII)Z
    .locals 6

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge v0, p6, :cond_6

    add-int v1, p4, v0

    const/4 v2, 0x1

    if-ge v1, p2, :cond_5

    if-gez v1, :cond_0

    goto :goto_3

    :cond_0
    move v3, p0

    :goto_1
    if-ge v3, p7, :cond_4

    add-int v4, p5, v3

    if-ge v4, p3, :cond_3

    if-gez v4, :cond_1

    goto :goto_2

    .line 134
    :cond_1
    aget-object v5, p1, v1

    aget-object v4, v5, v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return v2

    :cond_6
    return p0
.end method

.method processData(Ljava/util/Map;Ljava/util/Map;IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;IIII)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/layout/ChangePosHandler;->initMaxScreenId(Ljava/util/Map;)V

    .line 23
    new-instance v7, Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/layout/ChangePosHandler;IIIILjava/util/Map;)V

    invoke-interface {p2, v7}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
