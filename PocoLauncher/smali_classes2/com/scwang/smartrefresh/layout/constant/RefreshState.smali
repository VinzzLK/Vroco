.class public final enum Lcom/scwang/smartrefresh/layout/constant/RefreshState;
.super Ljava/lang/Enum;
.source "RefreshState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/scwang/smartrefresh/layout/constant/RefreshState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum TwoLevelFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

.field public static final enum TwoLevelReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;


# instance fields
.field public final isDragging:Z

.field public final isFinishing:Z

.field public final isFooter:Z

.field public final isHeader:Z

.field public final isOpening:Z


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 8
    new-instance v7, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v1, "None"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v7, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 9
    new-instance v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v9, "PullDownToRefresh"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    new-instance v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v16, "PullUpToLoad"

    const/16 v17, 0x2

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 10
    new-instance v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v9, "PullDownCanceled"

    const/4 v10, 0x3

    const/4 v12, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    new-instance v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v16, "PullUpCanceled"

    const/16 v17, 0x4

    const/16 v19, 0x0

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 11
    new-instance v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v9, "ReleaseToRefresh"

    const/4 v10, 0x5

    const/4 v12, 0x1

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v4, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    new-instance v5, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v16, "ReleaseToLoad"

    const/16 v17, 0x6

    const/16 v19, 0x1

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v5, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 12
    new-instance v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v9, "ReleaseToTwoLevel"

    const/4 v10, 0x7

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v6, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    new-instance v8, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v16, "TwoLevelReleased"

    const/16 v17, 0x8

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v8, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 13
    new-instance v16, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v10, "RefreshReleased"

    const/16 v11, 0x9

    const/4 v15, 0x0

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v16, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    new-instance v9, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v18, "LoadReleased"

    const/16 v19, 0xa

    const/16 v20, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v23}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v9, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 14
    new-instance v10, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v25, "Refreshing"

    const/16 v26, 0xb

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v24, v10

    invoke-direct/range {v24 .. v30}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v10, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    new-instance v11, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v18, "Loading"

    const/16 v19, 0xc

    const/16 v22, 0x1

    move-object/from16 v17, v11

    invoke-direct/range {v17 .. v23}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v11, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    new-instance v12, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v25, "TwoLevel"

    const/16 v26, 0xd

    move-object/from16 v24, v12

    invoke-direct/range {v24 .. v30}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v12, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    .line 15
    new-instance v13, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v18, "RefreshFinish"

    const/16 v19, 0xe

    const/16 v20, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v17, v13

    invoke-direct/range {v17 .. v23}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v13, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    new-instance v14, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v25, "LoadFinish"

    const/16 v26, 0xf

    const/16 v27, 0x2

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v24, v14

    invoke-direct/range {v24 .. v30}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v14, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    new-instance v15, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const-string v18, "TwoLevelFinish"

    const/16 v19, 0x10

    move-object/from16 v17, v15

    invoke-direct/range {v17 .. v23}, Lcom/scwang/smartrefresh/layout/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v15, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/16 v15, 0x11

    new-array v15, v15, [Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/16 v18, 0x0

    aput-object v7, v15, v18

    const/4 v7, 0x1

    aput-object v0, v15, v7

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v6, v15, v0

    const/16 v0, 0x8

    aput-object v8, v15, v0

    const/16 v0, 0x9

    aput-object v16, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v13, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v17, v15, v0

    .line 6
    sput-object v15, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->$VALUES:[Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZ)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    .line 24
    :goto_0
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isHeader:Z

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    move p1, p2

    .line 25
    :cond_1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFooter:Z

    .line 26
    iput-boolean p4, p0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isDragging:Z

    .line 27
    iput-boolean p5, p0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    .line 28
    iput-boolean p6, p0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scwang/smartrefresh/layout/constant/RefreshState;
    .locals 1

    .line 6
    const-class v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    return-object p0
.end method

.method public static values()[Lcom/scwang/smartrefresh/layout/constant/RefreshState;
    .locals 1

    .line 6
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->$VALUES:[Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v0}, [Lcom/scwang/smartrefresh/layout/constant/RefreshState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    return-object v0
.end method
