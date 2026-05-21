.class public final synthetic Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/miui/home/launcher/operationicon/CustomIconParams;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;ZZLcom/miui/home/launcher/operationicon/CustomIconParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;

    iput-boolean p2, p0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$$ExternalSyntheticLambda0;->f$1:Z

    iput-boolean p3, p0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$$ExternalSyntheticLambda0;->f$3:Lcom/miui/home/launcher/operationicon/CustomIconParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;

    iget-boolean v1, p0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$$ExternalSyntheticLambda0;->f$1:Z

    iget-boolean v2, p0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$$ExternalSyntheticLambda0;->f$2:Z

    iget-object p0, p0, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker$$ExternalSyntheticLambda0;->f$3:Lcom/miui/home/launcher/operationicon/CustomIconParams;

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;->$r8$lambda$DY-hdvXG7pWR69Z42AKZdFKijtA(Lcom/miui/home/launcher/operationicon/CustomizeIconEventTracker;ZZLcom/miui/home/launcher/operationicon/CustomIconParams;)V

    return-void
.end method
