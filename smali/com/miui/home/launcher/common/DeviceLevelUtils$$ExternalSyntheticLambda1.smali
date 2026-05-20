.class public final synthetic Lcom/miui/home/launcher/common/DeviceLevelUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$1:J

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/DeviceLevelUtils$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-wide p2, p0, Lcom/miui/home/launcher/common/DeviceLevelUtils$$ExternalSyntheticLambda1;->f$1:J

    iput-boolean p4, p0, Lcom/miui/home/launcher/common/DeviceLevelUtils$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/common/DeviceLevelUtils$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-wide v1, p0, Lcom/miui/home/launcher/common/DeviceLevelUtils$$ExternalSyntheticLambda1;->f$1:J

    iget-boolean p0, p0, Lcom/miui/home/launcher/common/DeviceLevelUtils$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, v2, p0}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->$r8$lambda$_G1WrDgZ9YYA3XXkQ3q2m3FI3e0(Lcom/miui/home/launcher/Launcher;JZ)V

    return-void
.end method
