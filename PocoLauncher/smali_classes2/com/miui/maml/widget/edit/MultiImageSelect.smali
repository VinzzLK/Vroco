.class public final Lcom/miui/maml/widget/edit/MultiImageSelect;
.super Lcom/miui/maml/widget/edit/BaseConfig;
.source "widgetEditVarConfig.kt"


# instance fields
.field private final height:I

.field private final shapeType:I

.field private final single:Z

.field private final subtitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/ItemConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final uiType:I

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;Ljava/util/List;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/ItemConfig;",
            ">;IIII)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/maml/widget/edit/BaseConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    iput-boolean p3, p0, Lcom/miui/maml/widget/edit/MultiImageSelect;->single:Z

    .line 79
    iput-object p5, p0, Lcom/miui/maml/widget/edit/MultiImageSelect;->values:Ljava/util/List;

    .line 80
    iput-object p6, p0, Lcom/miui/maml/widget/edit/MultiImageSelect;->subtitleList:Ljava/util/List;

    .line 81
    iput p7, p0, Lcom/miui/maml/widget/edit/MultiImageSelect;->width:I

    .line 82
    iput p8, p0, Lcom/miui/maml/widget/edit/MultiImageSelect;->height:I

    .line 83
    iput p9, p0, Lcom/miui/maml/widget/edit/MultiImageSelect;->uiType:I

    .line 84
    iput p10, p0, Lcom/miui/maml/widget/edit/MultiImageSelect;->shapeType:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;Ljava/util/List;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object/from16 v5, p4

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    .line 74
    invoke-direct/range {v1 .. v11}, Lcom/miui/maml/widget/edit/MultiImageSelect;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/List;Ljava/util/List;IIII)V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 0

    .line 82
    iget p0, p0, Lcom/miui/maml/widget/edit/MultiImageSelect;->height:I

    return p0
.end method

.method public final getShapeType()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/miui/maml/widget/edit/MultiImageSelect;->shapeType:I

    return p0
.end method

.method public final getSingle()Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/miui/maml/widget/edit/MultiImageSelect;->single:Z

    return p0
.end method

.method public final getSubtitleList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/maml/widget/edit/ItemConfig;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object p0, p0, Lcom/miui/maml/widget/edit/MultiImageSelect;->subtitleList:Ljava/util/List;

    return-object p0
.end method

.method public final getUiType()I
    .locals 0

    .line 83
    iget p0, p0, Lcom/miui/maml/widget/edit/MultiImageSelect;->uiType:I

    return p0
.end method

.method public final getValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/miui/maml/widget/edit/MultiImageSelect;->values:Ljava/util/List;

    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/miui/maml/widget/edit/MultiImageSelect;->width:I

    return p0
.end method
