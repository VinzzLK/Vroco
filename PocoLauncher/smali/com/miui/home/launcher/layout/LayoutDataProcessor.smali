.class public Lcom/miui/home/launcher/layout/LayoutDataProcessor;
.super Ljava/lang/Object;
.source "LayoutDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/layout/LayoutDataProcessor$TypeConversion;
    }
.end annotation


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

.field private final mTypeConversion:Lcom/miui/home/launcher/layout/LayoutDataProcessor$TypeConversion;


# direct methods
.method public static synthetic $r8$lambda$ZfKQXWaWJVq3iXd9w2rkJvof0XU(Lcom/miui/home/launcher/layout/LayoutDataProcessor;IILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->lambda$processAllScreenData$3(IILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h75D_ypy4wE-ZH0WsEmxPBoOK_I(Lcom/miui/home/launcher/layout/LayoutDataProcessor;IILjava/util/LinkedHashMap;Lcom/miui/home/launcher/layout/LayoutScreenInfo;[[Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->lambda$processWorkspaceData$0(IILjava/util/LinkedHashMap;Lcom/miui/home/launcher/layout/LayoutScreenInfo;[[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k1kQsdX_xQ6JuWsxzTvWIxVISec(Lcom/miui/home/launcher/layout/LayoutDataProcessor;Ljava/util/LinkedHashMap;IILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->lambda$processWorkspaceData$1(Ljava/util/LinkedHashMap;IILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lodZg20r1bNOffzyi4cA1iGLVzQ(Lcom/miui/home/launcher/layout/LayoutDataProcessor;IILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->lambda$processAllScreenData$2(IILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V

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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->mScreenOperation:Ljava/util/ArrayList;

    .line 30
    iput-object p2, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->mItemOperation:Ljava/util/ArrayList;

    .line 31
    new-instance p1, Lcom/miui/home/launcher/layout/LayoutDataProcessor$TypeConversion;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/layout/LayoutDataProcessor$TypeConversion;-><init>(Lcom/miui/home/launcher/layout/LayoutDataProcessor$1;)V

    iput-object p1, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->mTypeConversion:Lcom/miui/home/launcher/layout/LayoutDataProcessor$TypeConversion;

    return-void
.end method

.method private synthetic lambda$processAllScreenData$2(IILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 7

    .line 51
    iget-wide v2, p3, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->screenId:J

    const-string/jumbo v1, "start"

    move-object v0, p0

    move-object v4, p4

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->printScreenInfo(Ljava/lang/String;J[[Lcom/miui/home/launcher/layout/LayoutItemInfo;II)V

    return-void
.end method

.method private synthetic lambda$processAllScreenData$3(IILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 7

    .line 57
    iget-wide v2, p3, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->screenId:J

    const-string v1, "end"

    move-object v0, p0

    move-object v4, p4

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->printScreenInfo(Ljava/lang/String;J[[Lcom/miui/home/launcher/layout/LayoutItemInfo;II)V

    return-void
.end method

.method private synthetic lambda$processWorkspaceData$0(IILjava/util/LinkedHashMap;Lcom/miui/home/launcher/layout/LayoutScreenInfo;[[Ljava/lang/Object;)V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->mTypeConversion:Lcom/miui/home/launcher/layout/LayoutDataProcessor$TypeConversion;

    invoke-virtual {p0, p5, p1, p2}, Lcom/miui/home/launcher/layout/LayoutDataProcessor$TypeConversion;->convertedToItemInfo([[Ljava/lang/Object;II)[[Lcom/miui/home/launcher/layout/LayoutItemInfo;

    move-result-object p0

    .line 39
    invoke-virtual {p3, p4, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$processWorkspaceData$1(Ljava/util/LinkedHashMap;IILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->mTypeConversion:Lcom/miui/home/launcher/layout/LayoutDataProcessor$TypeConversion;

    iget-wide v1, p4, Lcom/miui/home/launcher/layout/LayoutScreenInfo;->screenId:J

    move-object v3, p5

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/layout/LayoutDataProcessor$TypeConversion;->convertedToView(J[[Lcom/miui/home/launcher/layout/LayoutItemInfo;II)[[Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p4, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private printScreenInfo(Ljava/lang/String;J[[Lcom/miui/home/launcher/layout/LayoutItemInfo;II)V
    .locals 5

    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LayoutDataProcessor"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    move p2, p0

    :goto_0
    if-ge p2, p6, :cond_2

    move p3, p0

    :goto_1
    if-ge p3, p5, :cond_1

    .line 68
    aget-object v1, p4, p3

    aget-object v1, v1, p2

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "j="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Lcom/miui/home/launcher/layout/LayoutItemInfo;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public processAllScreenData(Ljava/util/LinkedHashMap;IIII)Ljava/util/LinkedHashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;IIII)",
            "Ljava/util/LinkedHashMap<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Lcom/miui/home/launcher/layout/LayoutItemInfo;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p4, p5}, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/layout/LayoutDataProcessor;II)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 52
    new-instance v1, Lcom/miui/home/launcher/layout/ChangeSizeHandler;

    invoke-direct {v1}, Lcom/miui/home/launcher/layout/ChangeSizeHandler;-><init>()V

    .line 53
    new-instance v0, Lcom/miui/home/launcher/layout/ChangePosHandler;

    invoke-direct {v0}, Lcom/miui/home/launcher/layout/ChangePosHandler;-><init>()V

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/layout/LayoutDataHandler;->setNextHandler(Lcom/miui/home/launcher/layout/LayoutDataHandler;)Lcom/miui/home/launcher/layout/LayoutDataHandler;

    move-result-object v0

    new-instance v2, Lcom/miui/home/launcher/layout/SaveDtaHandler;

    iget-object v3, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->mScreenOperation:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->mItemOperation:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/miui/home/launcher/layout/SaveDtaHandler;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 54
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/layout/LayoutDataHandler;->setNextHandler(Lcom/miui/home/launcher/layout/LayoutDataHandler;)Lcom/miui/home/launcher/layout/LayoutDataHandler;

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 56
    invoke-virtual/range {v1 .. v7}, Lcom/miui/home/launcher/layout/LayoutDataHandler;->handleData(Ljava/util/Map;Ljava/util/Map;IIII)V

    .line 57
    new-instance p1, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, p3}, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/layout/LayoutDataProcessor;II)V

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public processWorkspaceData(Ljava/util/LinkedHashMap;IIII)Ljava/util/LinkedHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Ljava/lang/Object;",
            ">;IIII)",
            "Ljava/util/LinkedHashMap<",
            "Lcom/miui/home/launcher/layout/LayoutScreenInfo;",
            "[[",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    new-instance v0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p4, p5, v1}, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/layout/LayoutDataProcessor;IILjava/util/LinkedHashMap;)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->processAllScreenData(Ljava/util/LinkedHashMap;IIII)Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 42
    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 43
    new-instance p5, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda3;

    invoke-direct {p5, p0, p4, p2, p3}, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/layout/LayoutDataProcessor;Ljava/util/LinkedHashMap;II)V

    invoke-virtual {p1, p5}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object p4
.end method
