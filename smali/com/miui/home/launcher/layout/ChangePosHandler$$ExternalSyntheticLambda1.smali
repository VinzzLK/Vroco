.class public final synthetic Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/layout/ChangePosHandler;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/layout/ChangePosHandler;IIIILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/layout/ChangePosHandler;

    iput p2, p0, Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda1;->f$4:I

    iput-object p6, p0, Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda1;->f$5:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/layout/ChangePosHandler;

    iget v1, p0, Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda1;->f$4:I

    iget-object v5, p0, Lcom/miui/home/launcher/layout/ChangePosHandler$$ExternalSyntheticLambda1;->f$5:Ljava/util/Map;

    move-object v6, p1

    check-cast v6, Lcom/miui/home/launcher/layout/LayoutScreenInfo;

    move-object v7, p2

    check-cast v7, [[Lcom/miui/home/launcher/layout/LayoutItemInfo;

    invoke-static/range {v0 .. v7}, Lcom/miui/home/launcher/layout/ChangePosHandler;->$r8$lambda$Fnrsu0irg0gavwCHHgtxP9QcHnA(Lcom/miui/home/launcher/layout/ChangePosHandler;IIIILjava/util/Map;Lcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V

    return-void
.end method
