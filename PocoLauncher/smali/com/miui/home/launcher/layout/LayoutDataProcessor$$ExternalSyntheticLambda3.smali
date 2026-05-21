.class public final synthetic Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/layout/LayoutDataProcessor;

.field public final synthetic f$1:Ljava/util/LinkedHashMap;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/layout/LayoutDataProcessor;Ljava/util/LinkedHashMap;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/launcher/layout/LayoutDataProcessor;

    iput-object p2, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda3;->f$1:Ljava/util/LinkedHashMap;

    iput p3, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda3;->f$2:I

    iput p4, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda3;->f$0:Lcom/miui/home/launcher/layout/LayoutDataProcessor;

    iget-object v1, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda3;->f$1:Ljava/util/LinkedHashMap;

    iget v2, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda3;->f$2:I

    iget v3, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda3;->f$3:I

    move-object v4, p1

    check-cast v4, Lcom/miui/home/launcher/layout/LayoutScreenInfo;

    move-object v5, p2

    check-cast v5, [[Lcom/miui/home/launcher/layout/LayoutItemInfo;

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->$r8$lambda$k1kQsdX_xQ6JuWsxzTvWIxVISec(Lcom/miui/home/launcher/layout/LayoutDataProcessor;Ljava/util/LinkedHashMap;IILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V

    return-void
.end method
