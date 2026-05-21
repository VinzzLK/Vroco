.class public final synthetic Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/layout/LayoutDataProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/LinkedHashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/layout/LayoutDataProcessor;IILjava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/layout/LayoutDataProcessor;

    iput p2, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda2;->f$3:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/layout/LayoutDataProcessor;

    iget v1, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lcom/miui/home/launcher/layout/LayoutDataProcessor$$ExternalSyntheticLambda2;->f$3:Ljava/util/LinkedHashMap;

    move-object v4, p1

    check-cast v4, Lcom/miui/home/launcher/layout/LayoutScreenInfo;

    move-object v5, p2

    check-cast v5, [[Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/layout/LayoutDataProcessor;->$r8$lambda$h75D_ypy4wE-ZH0WsEmxPBoOK_I(Lcom/miui/home/launcher/layout/LayoutDataProcessor;IILjava/util/LinkedHashMap;Lcom/miui/home/launcher/layout/LayoutScreenInfo;[[Ljava/lang/Object;)V

    return-void
.end method
