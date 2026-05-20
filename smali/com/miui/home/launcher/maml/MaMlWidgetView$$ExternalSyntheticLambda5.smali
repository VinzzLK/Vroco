.class public final synthetic Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

.field public final synthetic f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/miui/home/launcher/maml/MaMlHostView;

.field public final synthetic f$4:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLcom/miui/home/launcher/maml/MaMlHostView;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda5;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda5;->f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iput-boolean p3, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda5;->f$2:Z

    iput-object p4, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda5;->f$3:Lcom/miui/home/launcher/maml/MaMlHostView;

    iput-object p5, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda5;->f$4:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda5;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    iget-object v1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda5;->f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    iget-boolean v2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda5;->f$2:Z

    iget-object v3, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda5;->f$3:Lcom/miui/home/launcher/maml/MaMlHostView;

    iget-object v4, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$$ExternalSyntheticLambda5;->f$4:Lcom/miui/home/launcher/Launcher;

    move-object v5, p1

    check-cast v5, Ljava/lang/Void;

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->$r8$lambda$tKbkbsQ2WLIFjOIfNg8WC21vbQ4(Lcom/miui/home/launcher/maml/MaMlWidgetView;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;ZLcom/miui/home/launcher/maml/MaMlHostView;Lcom/miui/home/launcher/Launcher;Ljava/lang/Void;)V

    return-void
.end method
