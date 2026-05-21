.class public final Lcom/miui/maml/widget/edit/OneConfig;
.super Ljava/lang/Object;
.source "widgetEditSave.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private alignStyleConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private colorConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

.field private dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

.field private imageConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private intentSaveConfig:Lcom/miui/maml/widget/edit/IntentSaveConfig;

.field private multiImageConfig:Lcom/miui/maml/widget/edit/MultiImageConfig;

.field private onOffConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private textConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textFontConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textSizeConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7ff

    const/4 v13, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/miui/maml/widget/edit/OneConfig;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/MultiImageConfig;Lcom/miui/maml/widget/edit/IntentSaveConfig;Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/MultiImageConfig;Lcom/miui/maml/widget/edit/IntentSaveConfig;Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/maml/widget/edit/MultiImageConfig;",
            "Lcom/miui/maml/widget/edit/IntentSaveConfig;",
            "Lcom/miui/maml/widget/edit/DateSetSaveConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    .line 56
    iput-object p2, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    .line 57
    iput-object p3, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    .line 58
    iput-object p4, p0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    .line 59
    iput-object p5, p0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    .line 60
    iput-object p6, p0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    .line 61
    iput-object p7, p0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    .line 62
    iput-object p8, p0, Lcom/miui/maml/widget/edit/OneConfig;->multiImageConfig:Lcom/miui/maml/widget/edit/MultiImageConfig;

    .line 63
    iput-object p9, p0, Lcom/miui/maml/widget/edit/OneConfig;->intentSaveConfig:Lcom/miui/maml/widget/edit/IntentSaveConfig;

    .line 64
    iput-object p10, p0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    .line 65
    iput-object p11, p0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/MultiImageConfig;Lcom/miui/maml/widget/edit/IntentSaveConfig;Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p13, p12, 0x1

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    move-object p10, v0

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    move-object p11, v0

    .line 54
    :cond_a
    invoke-direct/range {p0 .. p11}, Lcom/miui/maml/widget/edit/OneConfig;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/MultiImageConfig;Lcom/miui/maml/widget/edit/IntentSaveConfig;Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/maml/widget/edit/OneConfig;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/MultiImageConfig;Lcom/miui/maml/widget/edit/IntentSaveConfig;Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/util/Map;ILjava/lang/Object;)Lcom/miui/maml/widget/edit/OneConfig;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/miui/maml/widget/edit/OneConfig;->multiImageConfig:Lcom/miui/maml/widget/edit/MultiImageConfig;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/miui/maml/widget/edit/OneConfig;->intentSaveConfig:Lcom/miui/maml/widget/edit/IntentSaveConfig;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p11

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/miui/maml/widget/edit/OneConfig;->copy(Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/MultiImageConfig;Lcom/miui/maml/widget/edit/IntentSaveConfig;Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/util/Map;)Lcom/miui/maml/widget/edit/OneConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final component10()Lcom/miui/maml/widget/edit/DateSetSaveConfig;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    return-object p0
.end method

.method public final component11()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final component2()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final component3()Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    return-object p0
.end method

.method public final component4()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final component5()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final component6()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final component7()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final component8()Lcom/miui/maml/widget/edit/MultiImageConfig;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->multiImageConfig:Lcom/miui/maml/widget/edit/MultiImageConfig;

    return-object p0
.end method

.method public final component9()Lcom/miui/maml/widget/edit/IntentSaveConfig;
    .locals 0

    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->intentSaveConfig:Lcom/miui/maml/widget/edit/IntentSaveConfig;

    return-object p0
.end method

.method public final copy(Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/MultiImageConfig;Lcom/miui/maml/widget/edit/IntentSaveConfig;Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/util/Map;)Lcom/miui/maml/widget/edit/OneConfig;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/maml/widget/edit/MultiImageConfig;",
            "Lcom/miui/maml/widget/edit/IntentSaveConfig;",
            "Lcom/miui/maml/widget/edit/DateSetSaveConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/miui/maml/widget/edit/OneConfig;"
        }
    .end annotation

    new-instance v12, Lcom/miui/maml/widget/edit/OneConfig;

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/miui/maml/widget/edit/OneConfig;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/miui/maml/widget/edit/MultiImageConfig;Lcom/miui/maml/widget/edit/IntentSaveConfig;Lcom/miui/maml/widget/edit/DateSetSaveConfig;Ljava/util/Map;)V

    return-object v12
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/maml/widget/edit/OneConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/maml/widget/edit/OneConfig;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    iget-object v3, p1, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    iget-object v3, p1, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    iget-object v3, p1, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    iget-object v3, p1, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    iget-object v3, p1, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    iget-object v3, p1, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    iget-object v3, p1, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->multiImageConfig:Lcom/miui/maml/widget/edit/MultiImageConfig;

    iget-object v3, p1, Lcom/miui/maml/widget/edit/OneConfig;->multiImageConfig:Lcom/miui/maml/widget/edit/MultiImageConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->intentSaveConfig:Lcom/miui/maml/widget/edit/IntentSaveConfig;

    iget-object v3, p1, Lcom/miui/maml/widget/edit/OneConfig;->intentSaveConfig:Lcom/miui/maml/widget/edit/IntentSaveConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    iget-object v3, p1, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    iget-object p1, p1, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAlignStyleConfig()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final getColorConfig()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final getColorGroupConfig()Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    return-object p0
.end method

.method public final getDateSetConfig()Lcom/miui/maml/widget/edit/DateSetSaveConfig;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    return-object p0
.end method

.method public final getImageConfig()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final getIntentSaveConfig()Lcom/miui/maml/widget/edit/IntentSaveConfig;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->intentSaveConfig:Lcom/miui/maml/widget/edit/IntentSaveConfig;

    return-object p0
.end method

.method public final getMultiImageConfig()Lcom/miui/maml/widget/edit/MultiImageConfig;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->multiImageConfig:Lcom/miui/maml/widget/edit/MultiImageConfig;

    return-object p0
.end method

.method public final getOnOffConfig()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final getTextConfig()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final getTextFontConfig()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    return-object p0
.end method

.method public final getTextSizeConfig()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->multiImageConfig:Lcom/miui/maml/widget/edit/MultiImageConfig;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/MultiImageConfig;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->intentSaveConfig:Lcom/miui/maml/widget/edit/IntentSaveConfig;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/IntentSaveConfig;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Lcom/miui/maml/widget/edit/DateSetSaveConfig;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    if-nez p0, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    return v0
.end method

.method public final set(Lcom/miui/maml/widget/edit/OneConfig;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    :goto_0
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_1

    .line 69
    :cond_1
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    :goto_1
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    if-nez p1, :cond_2

    move-object v1, v0

    goto :goto_2

    .line 70
    :cond_2
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    :goto_2
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    if-nez p1, :cond_3

    move-object v1, v0

    goto :goto_3

    .line 71
    :cond_3
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    :goto_3
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    if-nez p1, :cond_4

    move-object v1, v0

    goto :goto_4

    .line 72
    :cond_4
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    :goto_4
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    if-nez p1, :cond_5

    move-object v1, v0

    goto :goto_5

    .line 73
    :cond_5
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    :goto_5
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    if-nez p1, :cond_6

    move-object v1, v0

    goto :goto_6

    .line 74
    :cond_6
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    :goto_6
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    if-nez p1, :cond_7

    move-object v1, v0

    goto :goto_7

    .line 75
    :cond_7
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->multiImageConfig:Lcom/miui/maml/widget/edit/MultiImageConfig;

    :goto_7
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->multiImageConfig:Lcom/miui/maml/widget/edit/MultiImageConfig;

    if-nez p1, :cond_8

    move-object v1, v0

    goto :goto_8

    .line 76
    :cond_8
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->intentSaveConfig:Lcom/miui/maml/widget/edit/IntentSaveConfig;

    :goto_8
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->intentSaveConfig:Lcom/miui/maml/widget/edit/IntentSaveConfig;

    if-nez p1, :cond_9

    move-object v1, v0

    goto :goto_9

    .line 77
    :cond_9
    iget-object v1, p1, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    :goto_9
    iput-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    if-nez p1, :cond_a

    goto :goto_a

    .line 78
    :cond_a
    iget-object v0, p1, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    :goto_a
    iput-object v0, p0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    return-void
.end method

.method public final setAlignStyleConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    return-void
.end method

.method public final setColorConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    return-void
.end method

.method public final setColorGroupConfig(Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    return-void
.end method

.method public final setDateSetConfig(Lcom/miui/maml/widget/edit/DateSetSaveConfig;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    return-void
.end method

.method public final setImageConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    return-void
.end method

.method public final setIntentSaveConfig(Lcom/miui/maml/widget/edit/IntentSaveConfig;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->intentSaveConfig:Lcom/miui/maml/widget/edit/IntentSaveConfig;

    return-void
.end method

.method public final setMultiImageConfig(Lcom/miui/maml/widget/edit/MultiImageConfig;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->multiImageConfig:Lcom/miui/maml/widget/edit/MultiImageConfig;

    return-void
.end method

.method public final setOnOffConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    return-void
.end method

.method public final setTextConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    return-void
.end method

.method public final setTextFontConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    return-void
.end method

.method public final setTextSizeConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OneConfig(textConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textConfig:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", colorConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorConfig:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", colorGroupConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->colorGroupConfig:Lcom/miui/maml/widget/edit/ColorGroupSaveConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textSizeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textSizeConfig:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alignStyleConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->alignStyleConfig:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textFontConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->textFontConfig:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->imageConfig:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", multiImageConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->multiImageConfig:Lcom/miui/maml/widget/edit/MultiImageConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", intentSaveConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->intentSaveConfig:Lcom/miui/maml/widget/edit/IntentSaveConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dateSetConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/widget/edit/OneConfig;->dateSetConfig:Lcom/miui/maml/widget/edit/DateSetSaveConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onOffConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/maml/widget/edit/OneConfig;->onOffConfig:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
