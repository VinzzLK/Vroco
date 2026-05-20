.class public final Lcom/miui/maml/widget/edit/ItemConfig;
.super Ljava/lang/Object;
.source "widgetEditVarConfig.kt"


# instance fields
.field private final subtitle:Ljava/lang/String;

.field private final titleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/String;

.field private final valueDark:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subtitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/miui/maml/widget/edit/ItemConfig;->subtitle:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/miui/maml/widget/edit/ItemConfig;->value:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/miui/maml/widget/edit/ItemConfig;->valueDark:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/miui/maml/widget/edit/ItemConfig;->titleMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 87
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/widget/edit/ItemConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getSubtitle()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/miui/maml/widget/edit/ItemConfig;->subtitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitleMap()Ljava/util/Map;
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

    .line 91
    iget-object p0, p0, Lcom/miui/maml/widget/edit/ItemConfig;->titleMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/miui/maml/widget/edit/ItemConfig;->value:Ljava/lang/String;

    return-object p0
.end method

.method public final getValueDark()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/miui/maml/widget/edit/ItemConfig;->valueDark:Ljava/lang/String;

    return-object p0
.end method
