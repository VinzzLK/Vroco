.class public final synthetic Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

.field public final synthetic f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda4;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda4;->f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iput-boolean p3, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda4;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda4;->f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget-boolean p0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda4;->f$2:Z

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->$r8$lambda$bUtYz2K3Y536R69KAB8xz7Sp0ns(Lcom/miui/home/launcher/maml/MaMlWidgetView;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLjava/lang/Void;)V

    return-void
.end method
