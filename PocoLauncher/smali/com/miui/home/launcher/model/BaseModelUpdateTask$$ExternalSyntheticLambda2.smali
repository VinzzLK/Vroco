.class public final synthetic Lcom/miui/home/launcher/model/BaseModelUpdateTask$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

.field public final synthetic f$1:Lcom/miui/home/launcher/LauncherModel$Callbacks;

.field public final synthetic f$2:Lcom/miui/home/launcher/LauncherModel$CallbackTask;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

    iput-object p2, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$$ExternalSyntheticLambda2;->f$2:Lcom/miui/home/launcher/LauncherModel$CallbackTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/model/BaseModelUpdateTask;

    iget-object v1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/launcher/LauncherModel$Callbacks;

    iget-object p0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$$ExternalSyntheticLambda2;->f$2:Lcom/miui/home/launcher/LauncherModel$CallbackTask;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->$r8$lambda$cFTOrCwIy1AeN5igCWzPSY7iuCw(Lcom/miui/home/launcher/model/BaseModelUpdateTask;Lcom/miui/home/launcher/LauncherModel$Callbacks;Lcom/miui/home/launcher/LauncherModel$CallbackTask;)V

    return-void
.end method
