.class public final synthetic Lcom/miui/home/launcher/layout/ChangeSizeHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/layout/ChangeSizeHandler;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/layout/ChangeSizeHandler;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/layout/ChangeSizeHandler$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/layout/ChangeSizeHandler;

    iput p2, p0, Lcom/miui/home/launcher/layout/ChangeSizeHandler$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/layout/ChangeSizeHandler$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/miui/home/launcher/layout/ChangeSizeHandler$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/miui/home/launcher/layout/ChangeSizeHandler$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/launcher/layout/ChangeSizeHandler$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/layout/ChangeSizeHandler;

    iget v1, p0, Lcom/miui/home/launcher/layout/ChangeSizeHandler$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/miui/home/launcher/layout/ChangeSizeHandler$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/miui/home/launcher/layout/ChangeSizeHandler$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Lcom/miui/home/launcher/layout/ChangeSizeHandler$$ExternalSyntheticLambda0;->f$4:I

    move-object v5, p1

    check-cast v5, Lcom/miui/home/launcher/layout/LayoutScreenInfo;

    move-object v6, p2

    check-cast v6, [[Lcom/miui/home/launcher/layout/LayoutItemInfo;

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/layout/ChangeSizeHandler;->$r8$lambda$aW1d4FGMV-q0-LSy7n30iWXjevE(Lcom/miui/home/launcher/layout/ChangeSizeHandler;IIIILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V

    return-void
.end method
