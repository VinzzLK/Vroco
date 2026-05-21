.class public final Lcom/miui/maml/widget/edit/IntentConfig;
.super Lcom/miui/maml/widget/edit/BaseConfig;
.source "widgetEditVarConfig.kt"


# instance fields
.field private final action:Ljava/lang/String;

.field private final className:Ljava/lang/String;

.field private final defaultValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:I

.field private final packageName:Ljava/lang/String;

.field private final returnValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uri:Ljava/lang/String;

.field private final valueType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/widget/edit/BaseConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 99
    iput-object p4, p0, Lcom/miui/maml/widget/edit/IntentConfig;->action:Ljava/lang/String;

    .line 100
    iput-object p5, p0, Lcom/miui/maml/widget/edit/IntentConfig;->packageName:Ljava/lang/String;

    .line 101
    iput-object p6, p0, Lcom/miui/maml/widget/edit/IntentConfig;->className:Ljava/lang/String;

    .line 102
    iput-object p7, p0, Lcom/miui/maml/widget/edit/IntentConfig;->uri:Ljava/lang/String;

    .line 103
    iput p8, p0, Lcom/miui/maml/widget/edit/IntentConfig;->flags:I

    .line 104
    iput-object p9, p0, Lcom/miui/maml/widget/edit/IntentConfig;->returnValue:Ljava/util/List;

    .line 105
    iput-object p10, p0, Lcom/miui/maml/widget/edit/IntentConfig;->valueType:Ljava/util/List;

    .line 106
    iput-object p11, p0, Lcom/miui/maml/widget/edit/IntentConfig;->defaultValue:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    and-int/lit8 v0, p12, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object/from16 v4, p3

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 95
    invoke-direct/range {v1 .. v12}, Lcom/miui/maml/widget/edit/IntentConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/miui/maml/widget/edit/IntentConfig;->action:Ljava/lang/String;

    return-object p0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/miui/maml/widget/edit/IntentConfig;->className:Ljava/lang/String;

    return-object p0
.end method

.method public final getDefaultValue()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object p0, p0, Lcom/miui/maml/widget/edit/IntentConfig;->defaultValue:Ljava/util/List;

    return-object p0
.end method

.method public final getFlags()I
    .locals 0

    .line 103
    iget p0, p0, Lcom/miui/maml/widget/edit/IntentConfig;->flags:I

    return p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/miui/maml/widget/edit/IntentConfig;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getReturnValue()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object p0, p0, Lcom/miui/maml/widget/edit/IntentConfig;->returnValue:Ljava/util/List;

    return-object p0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/miui/maml/widget/edit/IntentConfig;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public final getValueType()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object p0, p0, Lcom/miui/maml/widget/edit/IntentConfig;->valueType:Ljava/util/List;

    return-object p0
.end method
