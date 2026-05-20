.class public final synthetic Lcom/miui/home/launcher/model/BaseModelUpdateTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/home/launcher/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final execute(Lcom/miui/home/launcher/LauncherModel$Callbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget p0, p0, Lcom/miui/home/launcher/model/BaseModelUpdateTask$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/model/BaseModelUpdateTask;->$r8$lambda$0uD1_aQEkuG_K6d-0eq_6ZnzhBs(Ljava/lang/String;ILcom/miui/home/launcher/LauncherModel$Callbacks;)V

    return-void
.end method
