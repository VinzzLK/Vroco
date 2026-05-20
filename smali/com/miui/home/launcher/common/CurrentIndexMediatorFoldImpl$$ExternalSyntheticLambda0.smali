.class public final synthetic Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;

    iput-object p2, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;

    iget-object p0, p0, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;->$r8$lambda$xYcT-lOCnXj8qTIJVNjdfKbR3U4(Lcom/miui/home/launcher/common/CurrentIndexMediatorFoldImpl;Ljava/util/function/Consumer;)V

    return-void
.end method
