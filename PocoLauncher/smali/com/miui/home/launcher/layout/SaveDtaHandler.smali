.class public Lcom/miui/home/launcher/layout/SaveDtaHandler;
.super Lcom/miui/home/launcher/layout/LayoutDataHandler;
.source "SaveDtaHandler.java"


# instance fields
.field private final mItemOperation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenOperation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$f0nmLOXNQ5W-DGw20nKFvJdqWyY(Lcom/miui/home/launcher/layout/SaveDtaHandler;IILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/layout/SaveDtaHandler;->lambda$processData$0(IILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/miui/home/launcher/layout/LayoutDataHandler;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miui/home/launcher/layout/SaveDtaHandler;->mScreenOperation:Ljava/util/ArrayList;

    .line 23
    iput-object p2, p0, Lcom/miui/home/launcher/layout/SaveDtaHandler;->mItemOperation:Ljava/util/ArrayList;

    return-void
.end method

.method private synthetic lambda$processData$0(IILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 6

    .line 32
    iget-wide v3, p3, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->screenId:J

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/layout/SaveDtaHandler;->processPerScreen(IIJ[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V

    .line 33
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 34
    iget-boolean p2, p3, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->isNewScreen:Z

    const-string p4, "mark_screen_state"

    const-string v0, "_id"

    const-string v1, "screenOrder"

    if-eqz p2, :cond_0

    .line 35
    iget-wide v2, p3, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 36
    iget p2, p3, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->index:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x0

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "screenType"

    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    iget-object p0, p0, Lcom/miui/home/launcher/layout/SaveDtaHandler;->mScreenOperation:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_0
    iget p2, p3, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->index:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    iget-wide p2, p3, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->screenId:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x1

    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/layout/SaveDtaHandler;->mScreenOperation:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private makeValues(Lcom/miui/home/launcher/layout/LayoutItemInfo;J)Landroid/content/ContentValues;
    .locals 4

    .line 66
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 67
    iget v0, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->cellX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    iget v0, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->cellY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellY"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    iget v0, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->configSpanX:I

    const-string/jumbo v1, "spanY"

    const-string/jumbo v2, "spanX"

    if-lez v0, :cond_0

    iget v3, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->configSpanY:I

    if-lez v3, :cond_0

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    iget v0, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->configSpanY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 73
    :cond_0
    iget v0, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    iget v0, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->spanY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "screen"

    invoke-virtual {p0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 77
    iget-wide p1, p1, Lcom/miui/home/launcher/layout/LayoutItemInfo;->id:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "_id"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method private processPerScreen(IIJ[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 8

    .line 50
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_3

    move v4, v2

    :goto_1
    if-ge v4, p1, :cond_2

    .line 53
    aget-object v5, p5, v4

    aget-object v5, v5, v3

    if-nez v5, :cond_0

    goto :goto_2

    .line 57
    :cond_0
    iget-wide v6, v5, Lcom/miui/home/launcher/layout/LayoutItemInfo;->accessTag:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_1

    .line 58
    iput-wide v0, v5, Lcom/miui/home/launcher/layout/LayoutItemInfo;->accessTag:J

    .line 59
    iget-object v6, p0, Lcom/miui/home/launcher/layout/SaveDtaHandler;->mItemOperation:Ljava/util/ArrayList;

    invoke-direct {p0, v5, p3, p4}, Lcom/miui/home/launcher/layout/SaveDtaHandler;->makeValues(Lcom/miui/home/launcher/layout/LayoutItemInfo;J)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method processData(Ljava/util/Map;Ljava/util/Map;IIII)V
    .locals 0
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

    .line 31
    new-instance p2, Lcom/miui/home/launcher/layout/SaveDtaHandler$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3, p4}, Lcom/miui/home/launcher/layout/SaveDtaHandler$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/layout/SaveDtaHandler;II)V

    invoke-interface {p1, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
