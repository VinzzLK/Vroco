.class public final synthetic Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

.field public final synthetic f$1:Lcom/miui/home/launcher/progress/ProgressUpdateParams;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Lcom/miui/home/launcher/progress/ProgressUpdateParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    iput-object p2, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/progress/ProgressUpdateParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;

    iget-object p0, p0, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/progress/ProgressUpdateParams;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->$r8$lambda$AmhOLkUJXBklSf4fUj3dKQfzCNg(Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;Lcom/miui/home/launcher/progress/ProgressUpdateParams;)V

    return-void
.end method
