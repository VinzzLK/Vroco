.class public final synthetic Lcom/miui/home/launcher/layout/SaveDtaHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/layout/SaveDtaHandler;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/layout/SaveDtaHandler;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/layout/SaveDtaHandler$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/layout/SaveDtaHandler;

    iput p2, p0, Lcom/miui/home/launcher/layout/SaveDtaHandler$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/miui/home/launcher/layout/SaveDtaHandler$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/layout/SaveDtaHandler$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/layout/SaveDtaHandler;

    iget v1, p0, Lcom/miui/home/launcher/layout/SaveDtaHandler$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/miui/home/launcher/layout/SaveDtaHandler$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Lcom/miui/home/launcher/layout/LayoutScreenInfo;

    check-cast p2, [[Lcom/miui/home/launcher/layout/LayoutItemInfo;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/miui/home/launcher/layout/SaveDtaHandler;->$r8$lambda$f0nmLOXNQ5W-DGw20nKFvJdqWyY(Lcom/miui/home/launcher/layout/SaveDtaHandler;IILcom/miui/home/launcher/layout/LayoutScreenInfo;[[Lcom/miui/home/launcher/layout/LayoutItemInfo;)V

    return-void
.end method
