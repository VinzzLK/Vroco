.class public final synthetic Lcom/miui/home/launcher/ColorFilterContainerView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/ColorFilterContainerView;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ColorFilterContainerView;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    iput-boolean p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView$$ExternalSyntheticLambda1;->f$1:Z

    iput-boolean p3, p0, Lcom/miui/home/launcher/ColorFilterContainerView$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    iget-boolean v1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$$ExternalSyntheticLambda1;->f$1:Z

    iget-boolean p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->$r8$lambda$0SNZ9Yu2I2dO00TtnsVXLzufPjc(Lcom/miui/home/launcher/ColorFilterContainerView;ZZ)V

    return-void
.end method
