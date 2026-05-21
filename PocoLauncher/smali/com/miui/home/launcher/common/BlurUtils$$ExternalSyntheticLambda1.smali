.class public final synthetic Lcom/miui/home/launcher/common/BlurUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$1:F

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;FZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/BlurUtils$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/Launcher;

    iput p2, p0, Lcom/miui/home/launcher/common/BlurUtils$$ExternalSyntheticLambda1;->f$1:F

    iput-boolean p3, p0, Lcom/miui/home/launcher/common/BlurUtils$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/common/BlurUtils$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/Launcher;

    iget v1, p0, Lcom/miui/home/launcher/common/BlurUtils$$ExternalSyntheticLambda1;->f$1:F

    iget-boolean p0, p0, Lcom/miui/home/launcher/common/BlurUtils$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/common/BlurUtils;->$r8$lambda$ySXQ_ylGGJ7Vbjj383FpzKJ50ew(Lcom/miui/home/launcher/Launcher;FZ)V

    return-void
.end method
